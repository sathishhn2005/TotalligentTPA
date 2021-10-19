using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;

namespace Totalligent.Utilities
{
    public class GetAppSettingsValue
    {
        public static string GLEndorsementDocumentPath()
        {
            return ConfigurationManager.AppSettings["GLEndorsementDocumentPath"];                
        }

        public static string EndorsementPath()
        {
            return ConfigurationManager.AppSettings["EndorsementPath"];
        }
        public static string QuotationGenerationPDFPath()
        {
            return ConfigurationManager.AppSettings["QuotationPDFDocumentPath"];
        }
        public static string GLPolicyWordingFileName()
        {
            return ConfigurationManager.AppSettings["GLPolicyWording"];
        }

        public static string GLPOLICYFileName()
        {
            return ConfigurationManager.AppSettings["GLPOLICY"];
        }

        public static string GLRIFileName()
        {
            return ConfigurationManager.AppSettings["GLRI"];
        }
        public static string WCBROKERFileName()
        {
            return ConfigurationManager.AppSettings["WCBROKER"];
        }
        public static string WCPOLICYFileName()
        {
            return ConfigurationManager.AppSettings["WCPOLICY"];
        }
        public static string GLBROKERFileName()
        {
            return ConfigurationManager.AppSettings["GLBROKER"];
        }
       
    }
}
