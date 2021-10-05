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
        public long RejectDraft(long Qid, string Action)
        {
            return new GLIQuotationDAL().RejectDraft(Qid, Action);
        }
        public long GetWCRate(string ClientCompanyName, out Quotation objWCRate)
        {
            long returnCode = -1;
            decimal SumOfSalary = 0;
            objWCRate = new Quotation();
            try
            {
                new GLIQuotationDAL().GetSumOfSalary(ClientCompanyName, out SumOfSalary);
                objWCRate.SumOfSalary = SumOfSalary;
                objWCRate.EstimatedAnnualWages = SumOfSalary * 12;
                objWCRate.WCRate = WCRateFixed;
                objWCRate.NetPremium = ((objWCRate.EstimatedAnnualWages) * Convert.ToDecimal(objWCRate.WCRate)) / 100;
                objWCRate.Premium_Incl_levy_PolFeeRO = (objWCRate.NetPremium * Convert.ToDecimal(Levy)) / 100;
                objWCRate.PolicyFee1_RO = 1;
                objWCRate.GrossPremium = objWCRate.NetPremium + objWCRate.Premium_Incl_levy_PolFeeRO + objWCRate.PolicyFee1_RO;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return returnCode;
        }
        public long GetPerPersonRate(string ClientCompanyName, out Quotation objPPRate)
        {
            long returnCode = -1;
            int EmpCount = 0;
            objPPRate = new Quotation();
            try
            {
                new GLIQuotationDAL().GetEmpCount(ClientCompanyName, out EmpCount);
                objPPRate.TotalEmployees = EmpCount;
                objPPRate.PerPerson = 2;
                objPPRate.NetPremium = (objPPRate.TotalEmployees) * Convert.ToDecimal(objPPRate.PerPerson);
                objPPRate.Premium_Incl_levy_PolFeeRO = (objPPRate.NetPremium * Convert.ToDecimal(Levy)) / 100;
                objPPRate.PolicyFee1_RO = 1;
                objPPRate.GrossPremium = objPPRate.NetPremium + objPPRate.Premium_Incl_levy_PolFeeRO + objPPRate.PolicyFee1_RO;
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
                        objRIRate.Premium_Levy = (objRIRate.Premium_NetPremium * Convert.ToDecimal(Premium_Levy)) / 100;
                        objRIRate.Premium_PolicyFee1RO = 1;
                        objRIRate.Premium_GrossPremium = objRIRate.Premium_NetPremium + objRIRate.Premium_Levy + objRIRate.Premium_PolicyFee1RO;
                        objRIRate.Premium_Brokerage = (objRIRate.Premium_GrossPremium * objRIRate.Premium_BrokerCommssion) / 100;
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
