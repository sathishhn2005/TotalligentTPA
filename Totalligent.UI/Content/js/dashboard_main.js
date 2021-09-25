//[Dashboard Javascript]

//Project:	VoiceX Admin - Responsive Admin Template
//Primary use:   Used only for the main dashboard (index.html)


$(function () {
    var chartData = [];
    var chartDataLineBar = [];
    var UWTotal = [];
    var UWPending = [];
    var UWApproved = [];
    var UWRejected = [];
    'use strict';
    /**************** PIE CHART *******************/
    var piedata = [
        { label: "Total Policies", data: [[1, 50]], color: '#38649f' },
        { label: "Renewed Policies", data: [[1, 30]], color: '#389f99' },
        { label: "Under Process Policies", data: [[1, 90]], color: '#689f38' },
        { label: "Lost Policies", data: [[1, 70]], color: '#ff8f00' }
    ];
    $.plot('#policy-report-monthly', piedata, {
        series: {
            pie: {
                show: true,
                radius: 1,
                innerRadius: 0.5,
                label: {
                    show: true,
                    radius: 2 / 3,
                    formatter: labelFormatter,
                    threshold: 0.1
                },
            },
        },
        grid: {
            hoverable: true,
            clickable: true
        }
    });
    $.plot('#policy-report-yearly', piedata, {
        series: {
            pie: {
                show: true,
                radius: 1,
                innerRadius: 0.5,
                label: {
                    show: true,
                    radius: 2 / 3,
                    formatter: labelFormatter,
                    threshold: 0.1
                },
            },
        },
        grid: {
            hoverable: true,
            clickable: true
        }
    });
    $.plot('#premium-report-monthly', piedata, {
        series: {
            pie: {
                show: true,
                radius: 1,
                innerRadius: 0.5,
                label: {
                    show: true,
                    radius: 2 / 3,
                    formatter: labelFormatter,
                    threshold: 0.1
                },
                legend: {
                    position: "ne"
                }
            },
        },
        grid: {
            hoverable: true,
            clickable: true
        }
    });
    $.plot('#premium-report-yearly', piedata, {
        series: {
            pie: {
                show: true,
                radius: 1,
                innerRadius: 0.5,
                label: {
                    show: true,
                    radius: 2 / 3,
                    formatter: labelFormatter,
                    threshold: 0.1
                },
                legend: {
                    position: "ne"
                }
            },
        },
        grid: {
            hoverable: true,
            clickable: true
        }
    });
    function labelFormatter(label, series) {
        return "<div style='font-size:8pt; text-align:center; padding:2px; color:white;'>" + label + "<br/>" + Math.round(series.percent) + "%</div>";
    }
    $("#togglePolicyReport").on("click", function () {
        if ($('#currentPolicyReport').text() === 'Yearly')
            $('#currentPolicyReport').text('Monthly')
        else
            $('#currentPolicyReport').text('Yearly')
    });
    $("#togglePremiumReport").on("click", function () {
        if ($('#currentPremiumReport').text() === 'Yearly')
            $('#currentPremiumReport').text('Monthly')
        else
            $('#currentPremiumReport').text('Yearly')
    });
    $.ajax({
        type: "GET",
        contentType: "application/json; charset=utf-8",
        //url: "GetLineChart",
                url: "",
        data: "{}",
        dataType: "json",
        success: function (Result) {

            chartDataLineBar = Result.list;

            jQuery.each(chartDataLineBar, function (key, value) {

                UWPending.push(value.a);
                UWApproved.push(value.b);
                UWRejected.push(value.c);
                UWTotal.push(value.d);


            });
            //jQuery.each(chartDataLineBar, function (key, value) {

            //	UnderWriterResultTPL.push(value.b);

            //});

        },
        error: function (Result) {
            //alert("Error");
        }
    });

    var options = {
        chart: {
            height: 350,
            type: 'line',
        },
        plotOptions: {
            bar: {
                horizontal: false,
                columnWidth: '70%',
                endingShape: 'rounded'
            },
        },
        dataLabels: {
            enabled: false
        },
        colors: ["#4974e0", '#e2bb33', '#3db76b', '#e83a75'],
        stroke: {
            width: 3,
            curve: 'smooth',
        },

        series: [{
            name: 'No.of Policies',
            data: UWTotal
        }, {
            name: 'No.of Quotations',
            data: UWPending
        }, {
            name: 'Policy Issued',
            data: UWApproved
        }, {
            name: 'Policy Lost',
            data: UWRejected
        }],
        xaxis: {
            categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
        },
        yaxis: {
            title: {
                text: 'Policies Count'
            }
        },
        fill: {
            opacity: 1

        },
        legend: {
            position: 'top',
            horizontalAlign: 'left',
        },
        tooltip: {
            y: {
                formatter: function (val) {
                    return val
                }
            }
        }
    }

    var chart1 = new ApexCharts(
        document.querySelector("#uni-earning"),
        options
    );
    var UnderWriterResultTPE = [];
    var UnderWriterResultTPL = [];
    
    
    $.ajax({
        type: "GET",
        contentType: "application/json; charset=utf-8",
      //  url: "GetRevenueByYear",
url: "",
        data: "{}",
        dataType: "json",
        success: function (Result) {

            chartData = Result.list;

            jQuery.each(chartData, function (key, value) {

                UnderWriterResultTPE.push(value.a);
                // console.log(UnderWriterResult);
                //write some code here to build the table? I'm just guessing
            });
            jQuery.each(chartData, function (key, value) {

                UnderWriterResultTPL.push(value.b);
                //   console.log(UnderWriterResult);
                //write some code here to build the table? I'm just guessing
            });

        },
        error: function (Result) {
           // alert("Error");
        }
    });
    var options = {
        chart: {
            height: 350,
            type: 'bar',
        },
        plotOptions: {
            bar: {
                horizontal: false,
                columnWidth: '70%',
                endingShape: 'rounded'
            },
        },
        dataLabels: {
            enabled: false
        },
        colors: ["#ff8f00", '#38649f', '#ee1044'],
        stroke: {
            show: true,
            width: 2,
            colors: ['transparent']
        },
        series: [{
            name: 'Policies Quoted',
            data: [44, 55, 57, 56, 61, 58]
        }, {
            name: 'Policies Renewed',
            data: [76, 85, 101, 98, 87, 105]
        }, {
            name: 'Policies Lost',
            data: [35, 41, 36, 26, 45, 48]
        }],
        xaxis: {
            categories: ['Jan', 'Feb', 'Mar', 'Apr', 'Jun', 'Jul'],
        },
        yaxis: {
            title: {
                text: 'Rs. (thousands)'
            }
        },
        fill: {
            opacity: 1

        },
        legend: {
            position: 'top',
            horizontalAlign: 'left'
        },
        tooltip: {
            y: {
                formatter: function (val) {
                    return "$ " + val + " thousands"
                }
            }
        }
    }

    var chart2 = new ApexCharts(
        document.querySelector("#policyMonthlyBar"),
        options
    );
    var options = {
        chart: {
            height: 285,
            type: 'bar',
        },
        plotOptions: {
            bar: {
                horizontal: false,
                columnWidth: '55%'
            },
        },
        dataLabels: {
            enabled: false
        },
        colors: ["#ff8f00", '#ee1044'],
        stroke: {
            show: true,
            width: 2,
            colors: ['transparent']
        },
        series: [{
            name: 'Inquery',
            data: [76, 85, 101, 98, 87, 105, 91, 114, 94]
        }, {
            name: 'Conform',
            data: [35, 41, 36, 26, 45, 48, 52, 53, 41]
        }],
        xaxis: {
            categories: ['Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct'],
        },
        fill: {
            opacity: 1

        },
        legend: {
            position: 'top',
            horizontalAlign: 'left'
        },
        tooltip: {
            y: {
                formatter: function (val) {
                    return "$ " + val + " thousands"
                }
            }
        }
    }

    var chart3 = new ApexCharts(
        document.querySelector("#newRenewalPolicy"),
        options
    );
    var options = {
        series: [
            {
                name: "Download Speed",
                data: [15, 22, 35, 49, 50, 12, 28, 20, 33, 39, 85, 98]
            },
            {
                name: "Upload Speed",
                data: [5, 15, 25, 30, 25, 8, 18, 21, 32, 39, 62, 72]
            },
        ],
        chart: {
            height: 358,
            type: 'bar',
            zoom: {
                enabled: false
            },
            toolbar: {
                show: false,
            },
        },
        dataLabels: {
            enabled: false
        },
        colors: ['#673ab7', '#3da643'],
        grid: {
            show: true,
        },

        stroke: {
            show: true,
            width: 3,
            colors: ['transparent']
        },
        plotOptions: {
            bar: {
                horizontal: false,
                columnWidth: '40%',
                endingShape: 'rounded',
            },
        },

        legend: {
            show: true,
            position: 'top',
            horizontalAlign: 'left',
        },
        xaxis: {
            categories: ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12'],
            labels: {
                show: true,
            },
            axisBorder: {
                show: true,
            },
            axisTicks: {
                show: true,
            },
        },

        yaxis: {
            labels: {
                show: true,
            }
        },
    };

    var chart4 = new ApexCharts(document.querySelector("#LostPolicy"), options);


    window.Apex = {
        stroke: {
            width: 3
        },
        markers: {
            size: 0
        },
        tooltip: {
            theme: 'dark',
        }
    };

    var randomizeArray = function (arg) {
        var array = arg.slice();
        var currentIndex = array.length,
            temporaryValue, randomIndex;

        while (0 !== currentIndex) {

            randomIndex = Math.floor(Math.random() * currentIndex);
            currentIndex -= 1;

            temporaryValue = array[currentIndex];
            array[currentIndex] = array[randomIndex];
            array[randomIndex] = temporaryValue;
        }

        return array;
    }



    ///**************** PIE CHART *******************/
    //var piedata = [
    //	{ label: "By Branches", data: [[1, 40]], color: '#38649f' },
    //	{ label: "By DirectSales", data: [[1, 50]], color: '#389f99' },
    //	{ label: "By Broker", data: [[1, 60]], color: '#689f38' },
    //	{ label: "By Agent", data: [[1, 60]], color: '#ff8f00' }
    //];

    //   $.plot('#flotPie2', piedata, {
    //     series: {
    //       pie: {
    //         show: true,
    //         radius: 1,
    //         innerRadius: 0.5,
    //         label: {
    //           show: true,
    //           radius: 2/3,
    //           formatter: labelFormatter,
    //           threshold: 0.1
    //         }
    //       }
    //     },
    //     grid: {
    //       hoverable: true,
    //       clickable: true
    //     }
    //   });

    //   function labelFormatter(label, series) {
    //	  return "<div style='font-size:8pt; text-align:center; padding:2px; color:white;'>" + label + "<br/>" + Math.round(series.percent) + "%</div>";
    //  }

    //dashboard_daterangepicker

    if (0 !== $("#dashboard_daterangepicker").length) {
        var n = $("#dashboard_daterangepicker"),
            e = moment(),
            t = moment();
        n.daterangepicker({
            startDate: e, endDate: t, opens: "left", ranges: {
                Today: [moment(), moment()], Yesterday: [moment().subtract(1, "days"), moment().subtract(1, "days")], "Last 7 Days": [moment().subtract(6, "days"), moment()], "Last 30 Days": [moment().subtract(29, "days"), moment()], "This Month": [moment().startOf("month"), moment().endOf("month")], "Last Month": [moment().subtract(1, "month").startOf("month"), moment().subtract(1, "month").endOf("month")]
            }
        }
            , a),
            a(e, t, "")
    }
    function a(e, t, a) {
        var r = "",
            o = "";
        t - e < 100 || "Today" == a ? (r = "Today:", o = e.format("MMM D")) : "Yesterday" == a ? (r = "Yesterday:", o = e.format("MMM D")) : o = e.format("MMM D") + " - " + t.format("MMM D"), n.find(".subheader_daterange-date").html(o), n.find(".subheader_daterange-title").html(r)
    }
    setTimeout(function () {
        chart1.render();
        chart2.render();
        chart3.render();
        chart4.render();
    }, 1000);


}); // End of use strict






