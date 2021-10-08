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
        { label: "Total Policies", data: [[0, 25]], color: '#38649f' },
        { label: "Renewed Policies", data: [[1, 25]], color: '#389f99' },
        { label: "Under Process Policies", data: [[1, 10]], color: '#689f38' },
        { label: "Lost Policies", data: [[1, 40]], color: '#ff8f00' }
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
                }
            },
        },
        grid: {
            hoverable: true,
            clickable: true
        },
        legend: {
            show: false
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
        },
        legend: {
            show: false
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
        },
        legend: {
            show: false
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
        },
        legend: {
            show: false
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

    $(document).ready(function () { 
        $.ajax({
            type: "GET",
            contentType: "application/json; charset=utf-8",
            url: "/DashBoard/GetLineChart",
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
            data: [0, 55, 57, 56, 61, 0]
        }, {
            name: 'Policies Renewed',
            data: [0, 85, 0, 98, 87, 0]
        }, {
            name: 'Policies Lost',
            data: [0, 41, 36, 26, 45, 0]
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
                    return val;
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
            name: 'New Policy',
            data: [76, 85, 101, 98, 87, 105, 91, 114, 94]
        }, {
                name: 'Renew Policy',
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
                    return val;
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
                name: "Prospect Lost",
                data: [15, 22, 35, 49, 50, 12, 28, 20, 33, 39, 85, 98]
            },
            {
                name: "Renewal Policies Lost",
                data: [5, 15, 25, 30, 25, 8, 18, 21, 32, 39, 62, 72]
            },
        ],
        chart: {
            height: 285,
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
            categories: ['2021', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12'],
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
            startDate: e,
            endDate: t,
            maxDate: new Date(),
            opens: "left",
            ranges: {
                "This Month": [moment().startOf("month"), moment().endOf("month")],
                "Last Month": [moment().subtract(1, "month").startOf("month"), moment().subtract(1, "month").endOf("month")],
                "Last 3 Months": [moment().subtract(2, "month").startOf("month"), moment().endOf("month")],
                "This Year": [moment().startOf("year").startOf("month"), moment().endOf("month")],
                "Last Year": [moment().subtract(1, "year").startOf("year"), moment().subtract(1, "year").endOf("year")],
                "Last 3 Years": [moment().subtract(2, "year").startOf("year"), moment().endOf("month")],
                
                
            }
        }
            , a),
            a(e, t, "")
    }
    function a(e, t, a) {
        var r = "",
            o = "";
        t - e < 100 || "Today" == a ? (r = "Today:", o = e.format("MMM D")) : "Yesterday" == a ? (r = "Yesterday:", o = e.format("MMM D")) : o = e.format("MMM D YYYY") + " - " + t.format("MMM D YYYY"), n.find(".subheader_daterange-date").html(o), n.find(".subheader_daterange-title").html(r)
        //alert(e.format("MMM D YYYY") + " - " + t.format("MMM D YYYY"));
        
    }
    $('#dashboard_daterangepicker').on('apply.daterangepicker', function (ev, picker) {
        console.log("Start Date: " + picker.startDate.format('DD-MM-YYYY'));
        console.log("End Date: " + picker.endDate.format('DD-MM-YYYY'));
    });
    setTimeout(function () {
        chart1.render();
        chart2.render();
        chart3.render();
        chart4.render();
    }, 1000);


}); // End of use strict






