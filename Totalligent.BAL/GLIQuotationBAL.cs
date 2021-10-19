using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Totalligent.DAL;
using Totalligent.BusinessEntities;


namespace Totalligent.BAL
{
    public class GLIQuotationBAL
    {
        private const double WCRateFixed = 0.10;
        private const double Levy = 1.6;
        private const double Premium_Levy = 0.55;

        public long DMLQuotationMaster(string Action, string JParamValQuotationDetails, string JParamValCoverageDetails, out List<Quotation> objResponse)
        {
            return new GLIQuotationDAL().DMLQuotationMaster(Action, JParamValQuotationDetails, JParamValCoverageDetails, out objResponse);
        }
        public long RejectDraft(long Qid, string Action, string Remarks)
        {
            return new GLIQuotationDAL().RejectDraft(Qid, Action, Remarks);
        }
        public long GetWCRate(string ClientCompanyName, out Quotation objWCRate)
        {
            long returnCode = -1;
            decimal SumOfSalary = 0;
            objWCRate = new Quotation();
            try
            {
                new GLIQuotationDAL().GetSumOfSalary(ClientCompanyName, out SumOfSalary);
                objWCRate.WCSumOfSalary = SumOfSalary;
                objWCRate.WCEstimatedAnnualWages = SumOfSalary * 12;
                objWCRate.WCRate = Convert.ToDecimal(WCRateFixed);
                objWCRate.WCNetPremium = ((objWCRate.WCEstimatedAnnualWages) * Convert.ToDecimal(objWCRate.WCRate)) / 100;
                objWCRate.WCIncllevy = (objWCRate.WCNetPremium * Convert.ToDecimal(Levy)) / 100;
                objWCRate.WCPolicyFee1RO = 1;
                objWCRate.WCGrossPremium = objWCRate.WCNetPremium + objWCRate.WCIncllevy + objWCRate.WCPolicyFee1RO;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return returnCode;
        }
        public long GetPerPersonRate(string ClientCompanyName, int PerPerson, out Quotation objPPRate)
        {
            long returnCode = -1;
            int EmpCount = 0;
            objPPRate = new Quotation();
            try
            {
                new GLIQuotationDAL().GetEmpCount(ClientCompanyName, out EmpCount);
                objPPRate.WCTotalEmployee = EmpCount;
                objPPRate.WCPerPerson = PerPerson;
                objPPRate.WCNetPremium = (objPPRate.WCTotalEmployee) * Convert.ToDecimal(objPPRate.WCPerPerson);
                objPPRate.WCIncllevy = (objPPRate.WCNetPremium * Convert.ToDecimal(Levy)) / 100;
                objPPRate.WCPolicyFee1RO = 1;
                objPPRate.WCGrossPremium = objPPRate.WCNetPremium + objPPRate.WCIncllevy + objPPRate.WCPolicyFee1RO;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return returnCode;
        }
        public long GetReinsurerRate(string InsuranceCompanyName, string ClientCompanyName, out QuotationKYCDetails QKYCDetails, out Quotation objRIRate, out List<Quotation> lstRate)
        {
            long returnCode = -1;
            //int EmpCount = 0;
            objRIRate = new Quotation();
            lstRate = null;
            try
            {
                new GLIQuotationDAL().GetQuotationPremiumReinsurer(InsuranceCompanyName, ClientCompanyName, out QKYCDetails,out objRIRate, out lstRate);
                if (objRIRate != null && lstRate!=null)
                {
                    if (lstRate.Count > 0)
                    {
                        objRIRate.Premium_NetPremium = (objRIRate.Premium_SumAssured * objRIRate.Premium_GrossRate) / 100;
                        objRIRate.Premium_Incllevy = (objRIRate.Premium_NetPremium * Convert.ToDecimal(Premium_Levy)) / 100;
                        objRIRate.Premium_PolicyFee1RO = 1;
                        objRIRate.Premium_GrossPremium = objRIRate.Premium_NetPremium + objRIRate.Premium_Incllevy + objRIRate.Premium_PolicyFee1RO;
                        objRIRate.Brokerage = (objRIRate.Premium_GrossPremium * objRIRate.BrokerCommission) / 100;
                    }
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return returnCode;
        }
    }
}
