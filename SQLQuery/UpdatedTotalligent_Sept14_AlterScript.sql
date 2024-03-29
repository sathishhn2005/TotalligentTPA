USE [Totalligent]
GO
/****** Object:  StoredProcedure [dbo].[pDMLCCMaster]    Script Date: 9/14/2021 2:25:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[pDMLCCMaster]
(
 @Action Nvarchar(200),
 @JParamVal Nvarchar(Max),
 @ReturnRIid bigint OUTPUT
)
As
BEGIN


    SELECT * into #TempCCMaster
	FROM OPENJSON (@JParamVal, N'$')
	WITH (
	    ClientCompanyMasterId BIGINT N'$.ClientCompanyMasterId', 
        ClientCompanyName nvarchar (200) N'$.ClientCompanyName', 
		InsuranceCompanyId bigint  N'$.InsuranceCompanyId', 
		Address nvarchar (200) N'$.Address', 
		City nvarchar (40) N'$.City', 
		State nvarchar (40) N'$.State', 
		Zipcode nvarchar (40) N'$.Zipcode', 
		ContactPerson nvarchar (100) N'$.ContactPerson', 
		MobileNumber nvarchar (40) N'$.MobileNumber', 
		EmailId nvarchar (60) N'$.EmailId', 
		Currency nvarchar (20) N'$.Currency', 
		LOB bigint  N'$.LOBName', 
		ProducerType bigint  N'$.ProducerType', 
		ProducerName bigint  N'$.ProducerName', 
		ProducerCommission decimal (18,3) N'$.ProducerCommission', 
		RINetRate decimal (18,3) N'$.RINetRate', 
		GrossRate decimal (18,3) N'$.GrossRate', 
		RINumber bigint  N'$.RINumber', 
		RIName nvarchar (max) N'$.RIName', 
		RIRetention bigint  N'$.RIRetention', 
		AMIRetention bigint  N'$.AMIRetention', 
		BankID int  N'$.BankID', 
		AccountNumber nvarchar (510) N'$.AccountNumber', 
		IFSCCode nvarchar (100) N'$.IFSCCode', 
		UploadKYC_01 nvarchar (510) N'$.UploadKYC_01', 
		UploadKYC_02 nvarchar (510) N'$.UploadKYC_02', 
		UploadKYC_03 nvarchar (510) N'$.UploadKYC_03', 
		Status nvarchar (20) N'$.Status',
		NationalityId nvarchar (50) N'$.NationalityId'

	) AS JsonCCMaster;

 IF(@Action='Create')
 BEGIN
 
	INSERT INTO ClientCompanyMaster(
			ClientCompanyName,InsuranceCompanyId,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,Currency,LOB,ProducerType,ProducerName,
ProducerCommission,RINumber,RIName,AMIRetention,BankID,AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,Status,InsertType,NationlityId,RINetRate,GrossRate
			)
	Select 
			ClientCompanyName,InsuranceCompanyId,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,Currency,LOB,ProducerType,ProducerName,
ProducerCommission,RINumber,RIName,20,BankID,AccountNumber,IFSCCode,UploadKYC_01,UploadKYC_02,UploadKYC_03,'A','UI' as InsertType	,NationalityId,RINetRate,GrossRate
	From #TempCCMaster
	Select @ReturnRIid = @@IDENTITY  

 END

  IF(@Action='Update')
 BEGIN
  Select @ReturnRIid=ClientCompanyMasterId From #TempCCMaster
  UPDATE CC Set  
            ContactPerson=TRI.ContactPerson,MobileNumber=TRI.MobileNumber,EmailId=TRI.EmailId,
			Address=TRI.Address,City=TRI.City,State=TRI.State,Zipcode=TRI.Zipcode,BankID=TRI.BankID,AccountNumber=TRI.AccountNumber,
			IFSCCode=TRI.IFSCCode,
			UpdatedBy='Admin',UpdatedAt=GETdate(),
			NationlityId=TRI.NationalityId,
			RINetRate=TRI.RINetRate,GrossRate=TRI.GrossRate
  FROM ClientCompanyMaster CC
  INNER JOIN #TempCCMaster TRI ON CC.ClientCompanyMasterId=TRI.ClientCompanyMasterId

 END
END


GO
--select * From ClientCompanyMaster
ALTER Proc pGetQuotationReinsurer(@InsuranceCompanyName nvarchar(50), @ClientCompanyName nvarchar(50))
as 
begin

declare @Premium_SumAssured decimal(18,2)
set @Premium_SumAssured=500000


select DISTINCT @Premium_SumAssured AS Premium_SumAssured ,GrossRate AS Premium_GrossRate,PM.ProducerName, ProducerCommission From ClientCompanyMaster CM
inner join ProducerMaster Pm on cm.ProducerName=PM.ProducerMasterID
where CM.InsuranceCompanyId=@InsuranceCompanyName and CM.ClientCompanyName=@ClientCompanyName

Declare @JParamVal nvarchar(max)
set @JParamVal=(select DISTINCT RINAME from ClientCompanyMaster CM where CM.InsuranceCompanyId=@InsuranceCompanyName and CM.ClientCompanyName=@ClientCompanyName) 
SELECT * into #TempCCMaster
	FROM OPENJSON (@JParamVal, N'$')
	WITH (
		RIName nvarchar (max) N'$.RIName',
		RIRetention DECIMAL(18,2)
	) AS JsonCCMaster;
SELECT tt.RIName,RINetRate,(@Premium_SumAssured/100)* CM.RINetRate AS Premium_RIPremium ,tt.RIRetention AS Premium_RIRetention,CM.AMIRetention AS Premium_InsurerRetention,
((@Premium_SumAssured/100)* CM.RINetRate)*((tt.RIRetention/100)) AS Premium_RIRetentionPremium,
((@Premium_SumAssured/100)* CM.RINetRate)*((cm.AMIRetention))/100 AS Premium_InsurerRetentionPremium,
(@Premium_SumAssured/100)*CM.GrossRate-((@Premium_SumAssured* CM.RINetRate)/100) AS Premium_InsurerLoadingPremium,

--(@Premium_SumAssured/100)*CM.GrossRate AS Premium_NetPremium,
1.67 as Premium_InsurerLoading
 --as NetPremium



FROM #TempCCMaster tt

Inner join ClientCompanyMaster CM on CM.InsuranceCompanyId=@InsuranceCompanyName and CM.ClientCompanyName=@ClientCompanyName
end

GO

ALTER PROCEDURE [dbo].[pGetCCMaster] 
(
 @CCName NVARCHAR(200),
 @CCCode NVARCHAR(200),
 @CCCity NVARCHAR(200)
)
AS
BEGIN 


	IF(ISNULL(@CCName,'')!='' AND ISNULL(@CCCode,'')!='' AND ISNULL(@CCCity,'')!='')
	BEGIN

		SELECT 
ClientCompanyMasterId,ClientCompCode,ClientCompanyName,InsuranceCompanyId,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,
Currency,LOB as LOBName,ProducerType,ProducerName,ProducerCommission,RINumber,RIName,RIRetention,AMIRetention,CC.BankID,AccountNumber,IFSCCode,UploadKYC_01,
UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,SUBSTRING(KYCUploadPath,PATINDEX('%KYC_Files%',KYCUploadPath)-1,LEN(KYCUploadPath)) as KYCUploadPath,NationlityId AS NationalityId
,RINetRate,GrossRate 
	
		FROM ClientCompanyMaster CC
		INNER JOIN BankMaster BI ON BI.BankID=CC.BankID
		WHERE  ClientCompanyName=@CCName AND  ClientCompCode=@CCCode AND City=@CCCity

	END
	ELSE IF(ISNULL(@CCName,'')!='' AND ISNULL(@CCCode,'')!='')
	BEGIN
	SELECT 
ClientCompanyMasterId,ClientCompCode,ClientCompanyName,InsuranceCompanyId,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,
Currency,LOB as LOBName,ProducerType,ProducerName,ProducerCommission,RINumber,RIName,RIRetention,AMIRetention,CC.BankID,AccountNumber,IFSCCode,UploadKYC_01,
UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,SUBSTRING(KYCUploadPath,PATINDEX('%KYC_Files%',KYCUploadPath)-1,LEN(KYCUploadPath)) as KYCUploadPath,NationlityId AS NationalityId
,RINetRate,GrossRate 
		FROM ClientCompanyMaster CC
		INNER JOIN BankMaster BI ON BI.BankID=CC.BankID
		WHERE  ClientCompanyName=@CCName AND  ClientCompCode=@CCCode --AND City=@CCity


	END
	ELSE
	BEGIN 
 
			SELECT 
ClientCompanyMasterId,ClientCompCode,ClientCompanyName,InsuranceCompanyId,Address,City,State,Zipcode,ContactPerson,MobileNumber,EmailId,
Currency,LOB as LOBName,ProducerType,ProducerName,ProducerCommission,RINumber,RIName,RIRetention,AMIRetention,CC.BankID,AccountNumber,IFSCCode,UploadKYC_01,
UploadKYC_02,UploadKYC_03,UploadKYC_04,UploadKYC_05,SUBSTRING(KYCUploadPath,PATINDEX('%KYC_Files%',KYCUploadPath)-1,LEN(KYCUploadPath)) as KYCUploadPath,NationlityId AS NationalityId
,RINetRate,GrossRate 
		FROM ClientCompanyMaster CC
		INNER JOIN BankMaster BI ON BI.BankID=CC.BankID
		WHERE  ClientCompanyName=@CCName
	END

END


