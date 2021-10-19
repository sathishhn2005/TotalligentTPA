var url ="/GroupLifeInsurance/PDFGeneration/"



function QDownLoadPDF(WLPolicyNo, GLPolicyNo) {
    var param = { WLPolicyNo: WLPolicyNo, GLPolicyNo: GLPolicyNo };
    DownloadPDFGeneration(url + "DownLoadPDF", param);
}
function QGlBrokerPDF(WLPolicyNo, GLPolicyNo) {

    var param = { WLPolicyNo: WLPolicyNo, GLPolicyNo: GLPolicyNo };
    DownloadPDFGeneration(url + "GlBrokerPDF", param);
}
function QGlRIPDF(WLPolicyNo, GLPolicyNo) {

    var param = { WLPolicyNo: WLPolicyNo, GLPolicyNo: GLPolicyNo };
    DownloadPDFGeneration(url + "GlRIPDF", param);
}
function QWCBROKERPDF(WLPolicyNo, GLPolicyNo) {

    var param = { WLPolicyNo: WLPolicyNo, GLPolicyNo: GLPolicyNo };
    DownloadPDFGeneration(url + "WCBROKERPDF", param);
   
}
function QGLPOLICYPDF(WLPolicyNo, GLPolicyNo) {

    var param = { WLPolicyNo: WLPolicyNo, GLPolicyNo: GLPolicyNo };
    DownloadPDFGeneration(url + "GLPOLICYPDF", param);
}
function QWCPOLICYPDF(WLPolicyNo, GLPolicyNo) {
    var param = { WLPolicyNo: WLPolicyNo, GLPolicyNo: GLPolicyNo };
    DownloadPDFGeneration(url + "WCPOLICYPDF", param);
}
function DownloadPDFGeneration(url,param) {
    $.ajax({
        type: "GET",
        url: url,
        dataType: "json",
        contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
        data: param,
        success: function (Result) {
            
        },
        error: function () {
        }
    })
}