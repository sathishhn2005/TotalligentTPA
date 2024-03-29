USE [Totalligent]
GO
/****** Object:  StoredProcedure [dbo].[pGetProducersCM]    Script Date: 9/24/2021 12:54:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc pGetEmpSpouses
(
@EmployeeUniqueNumber nvarchar(40)
)
as
begin


select EmployeeId,EmployeeName FROM EmployeeMaster where EmployeeUniqueNumber =@EmployeeUniqueNumber

end
go
/****** Object:  StoredProcedure [dbo].[pDMLEmpMaster]    Script Date: 9/23/2021 11:43:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[pDMLEmpMaster]
(
 @Action Nvarchar(200),
 @JParamVal Nvarchar(Max),
 @ReturnRIid bigint OUTPUT
)
As
BEGIN

declare @ParentEmployeeId bigint ,	@ParentSpouseId bigint

    SELECT * into #TempEmpMaster
	FROM OPENJSON (@JParamVal, N'$')
	WITH (
        EmployeeId bigint  N'$.EmployeeId', 
		ParentEmployeeId bigint  N'$.ParentEmployeeId', 
		ParentSpouseId bigint  N'$.ParentSpouseId', 
		RelationType nvarchar(50)  N'$.RelationType', 
		EmployeeName nvarchar(50)  N'$.EmployeeName', 
		EmployeeUniqueNumber nvarchar(50)  N'$.EmployeeUniqueNumber', 
		ClientName nvarchar(50)  N'$.ClientName', 
		Category nvarchar(50)  N'$.Category', 
		DOB datetime  N'$.DOB', 
		Age int  N'$.Age', 
		Salary decimal  N'$.Salary', 
		Gender nvarchar(10)  N'$.Gender', 
		NationlityId int  N'$.NationlityId', 
		EffectiveDate datetime  N'$.EffectiveDate', 
		Remarks nvarchar(250)  N'$.Remarks', 
		SumAssured decimal  N'$.SumAssured', 
		SpouseSumAssured decimal  N'$.SpouseSumAssured', 
		ChildSumAssured decimal  N'$.ChildSumAssured', 
		EntryType nvarchar(10)  N'$.EntryType', 
		BankID int  N'$.BankID', 
		AccountNumber nvarchar(30)  N'$.AccountNumber', 
		IFSCCode nvarchar(25)  N'$.IFSCCode', 
		Status nvarchar(15)  N'$.Status', 
		KYCUploadPath nvarchar(350)  N'$.KYCUploadPath'

	) AS JsonEmpMaster;

 IF(@Action='Create')
 BEGIN
 
	INSERT INTO EmployeeMaster(
			ParentEmployeeId,ParentSpouseId,RelationType,EmployeeName,EmployeeUniqueNumber,ClientName,Category,DOB,Age,Salary,Gender,NationlityId,
EffectiveDate,Remarks,SumAssured,SpouseSumAssured,ChildSumAssured,EntryType,BankID,AccountNumber,IFSCCode,Status,KYCUploadPath)
	Select ParentEmployeeId,ParentSpouseId,RelationType,EmployeeName,EmployeeUniqueNumber,ClientName,Category,DOB,Age,Salary,Gender,NationlityId,
EffectiveDate,Remarks,SumAssured,SpouseSumAssured,ChildSumAssured,'UI',BankID,AccountNumber,IFSCCode,'A',KYCUploadPath
	From #TempEmpMaster
	Select @ReturnRIid = @@IDENTITY  

 END

  IF(@Action='Update')
 BEGIN
  
  Select @ReturnRIid=EmployeeId From #TempEmpMaster
  UPDATE CC Set  
            EmployeeName=TRI.EmployeeName,RelationType=TRI.RelationType,Category=TRI.Category,
			Age=TRI.Age,Salary=TRI.Salary,Gender=TRI.Gender,ClientName=TRI.ClientName,
			ModifyBy=1,ModifyAt=GETdate()
  FROM EmployeeMaster CC
  INNER JOIN #TempEmpMaster TRI ON CC.EmployeeId=TRI.EmployeeId

 END
END

