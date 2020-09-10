<%-- 
    Document   : indexd
    Created on : Aug 5, 2020, 9:05:38 AM
    Author     : Saiful
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Responsive Web UI Kit &amp; Dashboard Template based on Bootstrap">
        <meta name="author" content="AdminKit">
        <meta name="keywords" content="adminkit, bootstrap, web ui kit, dashboard template, admin template">

        <link rel="shortcut icon" href="dcss/img/icons/icon-48x48.png" />

        <title>AdminKit  &amp; Dashboard </title>

        <link href="dcss/css/app.css" rel="stylesheet">
    </head>

    <body>
        <div class="wrapper">
            
            
            <%@ include file='../dashboard/sidebar/saidbar.jsp'%>
            
            
            
            
            <div class="main">
                
            <%@ include file='../dashboard/sidebar/navbar.jsp'%>
                
                
                
                <main class="content">
                    <div class="container-fluid p-0">

                        <div class="row mb-2 mb-xl-3">
                            <div class="col-auto d-none d-sm-block">
                                <h3><strong>Analytics</strong> Dashboard</h3>
                            </div>

                            <div class="col-auto ml-auto text-right mt-n1">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb bg-transparent p-0 mt-1 mb-0">
                                        <li class="breadcrumb-item"><a href="#">AdminKit</a></li>
                                        <li class="breadcrumb-item"><a href="#">Dashboards</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Analytics</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xl-6 col-xxl-5 d-flex">
                                <div class="w-100">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="card">
                                                <div class="card-body">
                                                    <h5 class="card-title mb-4">Last Month Sales</h5>
                                                    <h1 class="display-5 mt-1 mb-3">${total} Tk</h1>
                                                    <div class="mb-1">
                                                        <span class="text-danger"> <i class="mdi mdi-arrow-bottom-right"></i> -3.65% </span>
                                                        <span class="text-muted">Since last month</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-body">
                                                    <h5 class="card-title mb-4">Total Users</h5>
                                                    <h1 class="display-5 mt-1 mb-3">${totalusers}</h1>
                                                    <div class="mb-1">
                                                        <span class="text-success"> <i class="mdi mdi-arrow-bottom-right"></i> 5.25% </span>
                                                        <span class="text-muted">Since last month</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="card">
                                                <div class="card-body">
                                                    <h5 class="card-title mb-4">Earnings</h5>
                                                    <h1 class="display-5 mt-1 mb-3">${earningLastWeek} Tk</h1>
                                                    <div class="mb-1">
                                                        <span class="text-success"> <i class="mdi mdi-arrow-bottom-right"></i> 6.65% </span>
                                                        <span class="text-muted">Since last month</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-body">
                                                    <h5 class="card-title mb-4">Total Ordered Products Item</h5>
                                                    <h1 class="display-5 mt-1 mb-3">${totalorders} Items</h1>
                                                    <div class="mb-1">
                                                        <span class="text-danger"> <i class="mdi mdi-arrow-bottom-right"></i> -2.25% </span>
                                                        <span class="text-muted">Since last month</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-6 col-xxl-7">
                                <div class="card flex-fill w-100">
                                    <div class="card-header">

                                        <h5 class="card-title mb-0">Recent Movement</h5>
                                    </div>
                                    <div class="card-body py-3">
                                        <div class="chart chart-sm">
                                            <canvas id="chartjs-dashboard-line"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-12 col-md-6 col-xxl-3 d-flex order-2 order-xxl-3">
                                <div class="card flex-fill w-100">
                                    <div class="card-header">

                                        <h5 class="card-title mb-0">Customer Area</h5>
                                    </div>
                                    <div class="card-body d-flex">
                                        <div class="align-self-center w-100">
                                            <div class="py-3">
                                                <div class="chart chart-xs">
                                                    <canvas id="chartjs-dashboard-pie"></canvas>
                                                </div>
                                            </div>

                                            <table class="table mb-0">
                                                <tbody>

                                                    <c:forEach var="map" items="${district}">

                                                        <tr>
                                                            <td>${map.district}</td>
                                                            <td class="text-right">${map.totaluser}</td>
                                                        </tr>

                                                    </c:forEach>

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-12 col-xxl-6 d-flex order-3 order-xxl-2">
                                <div class="card flex-fill w-100">
                                    <div class="card-header">

                                        <h5 class="card-title mb-0">Real-Time</h5>
                                    </div>
                                    <div class="card-body px-4">
                                        <div id="world_map" style="height:350px;"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-6 col-xxl-3 d-flex order-1 order-xxl-1">
                                <div class="card flex-fill">
                                    <div class="card-header">

                                        <h5 class="card-title mb-0">Calendar</h5>
                                    </div>
                                    <div class="card-body d-flex">
                                        <div class="align-self-center w-100">
                                            <div class="chart">
                                                <div id="datetimepicker-dashboard"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-12 col-lg-8 col-xxl-9 d-flex">
                                <div class="card flex-fill">
                                    <div class="card-header">

                                        <h5 class="card-title mb-0">Latest Projects</h5>
                                    </div>
                                    <table class="table table-hover my-0">
                                        <thead>
                                            <tr>
                                                <th>Name</th>
                                                <th class="d-none d-xl-table-cell">Start Date</th>
                                                <th class="d-none d-xl-table-cell">End Date</th>
                                                <th>Status</th>
                                                <th class="d-none d-md-table-cell">Assignee</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Project Apollo</td>
                                                <td class="d-none d-xl-table-cell">01/01/2020</td>
                                                <td class="d-none d-xl-table-cell">31/06/2020</td>
                                                <td><span class="badge badge-success">Done</span></td>
                                                <td class="d-none d-md-table-cell">Vanessa Tucker</td>
                                            </tr>
                                            <tr>
                                                <td>Project Fireball</td>
                                                <td class="d-none d-xl-table-cell">01/01/2020</td>
                                                <td class="d-none d-xl-table-cell">31/06/2020</td>
                                                <td><span class="badge badge-danger">Cancelled</span></td>
                                                <td class="d-none d-md-table-cell">William Harris</td>
                                            </tr>
                                            <tr>
                                                <td>Project Hades</td>
                                                <td class="d-none d-xl-table-cell">01/01/2020</td>
                                                <td class="d-none d-xl-table-cell">31/06/2020</td>
                                                <td><span class="badge badge-success">Done</span></td>
                                                <td class="d-none d-md-table-cell">Sharon Lessman</td>
                                            </tr>
                                            <tr>
                                                <td>Project Nitro</td>
                                                <td class="d-none d-xl-table-cell">01/01/2020</td>
                                                <td class="d-none d-xl-table-cell">31/06/2020</td>
                                                <td><span class="badge badge-warning">In progress</span></td>
                                                <td class="d-none d-md-table-cell">Vanessa Tucker</td>
                                            </tr>
                                            <tr>
                                                <td>Project Phoenix</td>
                                                <td class="d-none d-xl-table-cell">01/01/2020</td>
                                                <td class="d-none d-xl-table-cell">31/06/2020</td>
                                                <td><span class="badge badge-success">Done</span></td>
                                                <td class="d-none d-md-table-cell">William Harris</td>
                                            </tr>
                                            <tr>
                                                <td>Project X</td>
                                                <td class="d-none d-xl-table-cell">01/01/2020</td>
                                                <td class="d-none d-xl-table-cell">31/06/2020</td>
                                                <td><span class="badge badge-success">Done</span></td>
                                                <td class="d-none d-md-table-cell">Sharon Lessman</td>
                                            </tr>
                                            <tr>
                                                <td>Project Romeo</td>
                                                <td class="d-none d-xl-table-cell">01/01/2020</td>
                                                <td class="d-none d-xl-table-cell">31/06/2020</td>
                                                <td><span class="badge badge-success">Done</span></td>
                                                <td class="d-none d-md-table-cell">Christina Mason</td>
                                            </tr>
                                            <tr>
                                                <td>Project Wombat</td>
                                                <td class="d-none d-xl-table-cell">01/01/2020</td>
                                                <td class="d-none d-xl-table-cell">31/06/2020</td>
                                                <td><span class="badge badge-warning">In progress</span></td>
                                                <td class="d-none d-md-table-cell">William Harris</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="col-12 col-lg-4 col-xxl-3 d-flex">
                                <div class="card flex-fill w-100">
                                    <div class="card-header">

                                        <h5 class="card-title mb-0">Monthly Sales</h5>
                                    </div>
                                    <div class="card-body d-flex w-100">
                                        <div class="align-self-center chart chart-lg">
                                            <canvas id="chartjs-dashboard-bar"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </main>

                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row text-muted">
                            <div class="col-6 text-left">
                                <p class="mb-0">
                                    <a href="desh/indexd" class="text-muted"><strong>AdminKit Demo</strong></a> &copy;
                                </p>
                            </div>
                            <div class="col-6 text-right">
                                <ul class="list-inline">
                                    <li class="list-inline-item">
                                        <a class="text-muted" href="#">Support</a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a class="text-muted" href="#">Help Center</a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a class="text-muted" href="#">Privacy</a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a class="text-muted" href="#">Terms</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>

        <!--	<script src="dcss/js/vendor.js"></script>-->
        <script src="dcss/js/app.js"></script>

        <script>
            $(function () {

                var monthdate =${monthdate};

                var monthname = [];
                var totalall = [];
                for (var i = 0; i < monthdate.length; i++) {
                    var entry = [];
                    var name;
                    var total2;
                    entry = monthdate[i];
                    name = entry.month;
                    total2 = entry.total;
                    console.log(name);
                    console.log(total2);
                    monthname.push(name);
                    totalall.push(total2);
                }

              


                var ctx = document.getElementById('chartjs-dashboard-line').getContext("2d");
                var gradient = ctx.createLinearGradient(0, 0, 0, 225);
                gradient.addColorStop(0, 'rgba(215, 227, 244, 1)');
                gradient.addColorStop(1, 'rgba(215, 227, 244, 0)');
                // Line chart
                new Chart(document.getElementById("chartjs-dashboard-line"), {
                    type: 'line',
                    data: {
                        labels: monthname,
                        datasets: [{
                                label: "Sales ($)",
                                fill: true,
                                backgroundColor: gradient,
                                borderColor: window.theme.primary,
                                data: totalall
                            }]
                    },
                    options: {
                        maintainAspectRatio: false,
                        legend: {
                            display: false
                        },
                        tooltips: {
                            intersect: false
                        },
                        hover: {
                            intersect: true
                        },
                        plugins: {
                            filler: {
                                propagate: false
                            }
                        },
                        scales: {
                            xAxes: [{
                                    reverse: true,
                                    gridLines: {
                                        color: "rgba(0,0,0,0.0)"
                                    }
                                }],
                            yAxes: [{
                                    ticks: {
                                        stepSize: 1000
                                    },
                                    display: true,
                                    borderDash: [3, 3],
                                    gridLines: {
                                        color: "rgba(0,0,0,0.0)"
                                    }
                                }]
                        }
                    }
                });
            });
        </script>

        <script>
            $(function () {

                var district2 = ${district2};
                var districtname = [];
                var totaluser = [];
                for (var i = 0; i < district2.length; i++) {
                    var entry = [];
                    var name;
                    var total;
                    entry = district2[i];
                    name = entry.district;
                    total = entry.totaluser;
                    console.log(name);
                    console.log(total);
                    districtname.push(name);
                    totaluser.push(total);
                }

                // Pie chart
                new Chart(document.getElementById("chartjs-dashboard-pie"), {
                    type: 'pie',
                    data: {
                        labels: districtname,
                        datasets: [{
                                data: totaluser,
                                backgroundColor: [
                                    window.theme.primary,
                                    window.theme.warning,
                                    window.theme.danger,
                                    window.theme.info,
                                    window.theme.secondary
                                ],
                                borderWidth: 5
                            }]
                    },
                    options: {
                        responsive: !window.MSInputMethodContext,
                        maintainAspectRatio: false,
                        legend: {
                            display: false
                        },
                        cutoutPercentage: 75
                    }
                });
            });
        </script>
        <script>
            $(function () {
                
                 var monthdate =${monthdate};

                var monthname = [];
                var totalall = [];
                for (var i = 0; i < monthdate.length; i++) {
                    var entry = [];
                    var name;
                    var total2;
                    entry = monthdate[i];
                    name = entry.month;
                    total2 = entry.total;
                    console.log(name);
                    console.log(total2);
                    monthname.push(name);
                    totalall.push(total2);
                }

                // Bar chart
                new Chart(document.getElementById("chartjs-dashboard-bar"), {
                    type: 'bar',
                    data: {
                        labels: monthname,
                        datasets: [{
                                label: "This year",
                                backgroundColor: window.theme.primary,
                                borderColor: window.theme.primary,
                                hoverBackgroundColor: window.theme.primary,
                                hoverBorderColor: window.theme.primary,
                                data: totalall,
                                barPercentage: .75,
                                categoryPercentage: .5
                            }]
                    },
                    options: {
                        maintainAspectRatio: false,
                        legend: {
                            display: false
                        },
                        scales: {
                            yAxes: [{
                                    gridLines: {
                                        display: false
                                    },
                                    stacked: false,
                                    ticks: {
                                        stepSize: 20
                                    }
                                }],
                            xAxes: [{
                                    stacked: false,
                                    gridLines: {
                                        color: "transparent"
                                    }
                                }]
                        }
                    }
                });
            });
        </script>
        <script>
            $(function () {
                $("#world_map").vectorMap({
                    map: "world_mill",
                    normalizeFunction: "polynomial",
                    hoverOpacity: .7,
                    hoverColor: false,
                    regionStyle: {
                        initial: {
                            fill: "#e3eaef"
                        }
                    },
                    markerStyle: {
                        initial: {
                            "r": 9,
                            "fill": window.theme.primary,
                            "fill-opacity": .95,
                            "stroke": "#fff",
                            "stroke-width": 7,
                            "stroke-opacity": .4
                        },
                        hover: {
                            "stroke": "#fff",
                            "fill-opacity": 1,
                            "stroke-width": 1.5
                        }
                    },
                    backgroundColor: "transparent",
                    zoomOnScroll: false,
                    markers: [{
                            latLng: [23.230391, 90.473701],
                            name: "Bangladesh"
                        },
                        {
                            latLng: [28.704060, 77.102493],
                            name: "Delhi"
                        },
                        {
                            latLng: [30.704060, 120.102493],
                            name: "Beijing"
                        },
                        {
                            latLng: [20.524379, 77.379206],
                            name: "Bombay"
                        },
                        {
                            latLng: [35.689487, 139.691711],
                            name: "Tokyo"
                        },
                        {
                            latLng: [40.416775, 90.703790],
                            name: "Shanghai"
                        },
                        {
                            latLng: [23.129110, 113.264381],
                            name: "Guangzhou"
                        },
                        {
                            latLng: [40.7127837, -74.0059413],
                            name: "New York"
                        },
                        {
                            latLng: [34.052235, -118.243683],
                            name: "Los Angeles"
                        },
                        {
                            latLng: [41.878113, -87.629799],
                            name: "Chicago"
                        },
                        {
                            latLng: [51.507351, -0.127758],
                            name: "London"
                        },
                        {
                            latLng: [40.416775, -3.703790],
                            name: "Shanghai"
                        }
                    ]
                });
                setTimeout(function () {
                    $(window).trigger('resize');
                }, 250)
            });
        </script>
        <script>
            $(function () {
                $('#datetimepicker-dashboard').datetimepicker({
                    inline: true,
                    sideBySide: false,
                    format: 'L'
                });
            });
        </script>

    </body>

</html>