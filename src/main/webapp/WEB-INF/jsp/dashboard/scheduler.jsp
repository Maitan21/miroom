<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file = "header.jsp" %>
<!-- Topbar -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/solid.css" integrity="sha384-wnAC7ln+XN0UKdcPvJvtqIH3jOjs9pnKnq9qX68ImXvOGz2JuFoEiCjT8jyZQX2z" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/fontawesome.css" integrity="sha384-HbmWTHay9psM8qyzEKPc8odH4DsOuzdejtnr+OFtDmOcIVnhgReQ4GZBH7uwcjf6" crossorigin="anonymous">
<link rel="stylesheet" href="/static/dash/css/jquery.skedTape.css">
<style>
    .bd-footer {
        font-size: .875rem;
        text-align: center;
        background-color: #f7f7f7;
    }
    .bd-footer a {
        font-weight: 600;
        color: #495057;
    }
    .bd-footer a:focus, .bd-footer a:hover {
        color: #007bff;
    }
    .bd-footer p {
        margin-bottom: 0;
    }
</style>

</head>
<!-- 현황 -->
<body id="page-top">
<div id="wrapper">
    <!-- Sidebar -->
    <ul class="navbar-nav sidebar sidebar-light accordion" id="accordionSidebar">
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/dashboard/home">
            <div class="sidebar-brand-icon">
                <img src="/static/dash/img/logo/miroom.png">
            </div>
            <div class="sidebar-brand-text mx-3">M I R O O M</div>
        </a>
        <hr class="sidebar-divider my-0">
        <li class="nav-item">
            <a class="nav-link" href="/dashboard/home">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>대시보드</span></a>
        </li>
        <hr class="sidebar-divider">

        <div class="sidebar-heading">
            Monitoring
        </div>

        <li class="nav-item active">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTable" aria-expanded="true"
               aria-controls="collapseTable">
                <i class="fas fa-fw fa-table"></i>
                <span>현황 관리</span>
            </a>
            <!-- show 열람 고정-->
            <div id="collapseTable" class="collapse show" aria-labelledby="headingTable" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item active" href="/dashboard/scheduler">회의실 스케쥴</a>
                    <a class="collapse-item" href="/dashboard/roomtable">회의실 현황</a>
                    <a class="collapse-item" href="/dashboard/reservationtable">예약 현황</a>
                </div>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/dashboard/chart">
                <i class="fas fa-fw fa-chart-area"></i>
                <span>차트</span>
            </a>
        </li>

        <div class="sidebar-heading">
            Management
        </div>
        <li class="nav-item">
            <a class="nav-link" href="/dashboard/setting">
                <i class="fab fa-fw fa-wpforms"></i>
                <span>설정</span>
            </a>
        </li>
        <hr class="sidebar-divider">
        <div class="version">Version 2.1.5</div>
    </ul>

    <!-- Sidebar -->
    <div id="content-wrapper" class="d-flex flex-column">

        <div id="content">
            <!-- TopBar -->
            <nav class="navbar navbar-expand navbar-light bg-navbar topbar mb-4 static-top">
                <button id="sidebarToggleTop" class="btn btn-link rounded-circle mr-3">
                    <i class="fa fa-bars"></i>
                </button>
                <ul class="navbar-nav ml-auto">

                    <!-- 알림 -->
                    <li class="nav-item dropdown no-arrow mx-1">
                        <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-bell fa-fw"></i>
                            <span class="badge badge-danger badge-counter">3+</span>
                        </a>
                        <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                             aria-labelledby="alertsDropdown">
                            <h6 class="dropdown-header">
                                Alerts Center
                            </h6>
                            <a class="dropdown-item d-flex align-items-center" href="#">
                                <div class="mr-3">
                                    <div class="icon-circle bg-primary">
                                        <i class="fas fa-file-alt text-white"></i>
                                    </div>
                                </div>
                                <div>
                                    <h5>December 12, 2019</h5>
                                    <span class="font-weight-bold">A new monthly report is ready to download!</span>
                                </div>
                            </a>
                            <a class="dropdown-item d-flex align-items-center" href="#">
                                <div class="mr-3">
                                    <div class="icon-circle bg-success">
                                        <i class="fas fa-donate text-white"></i>
                                    </div>
                                </div>
                                <div>
                                    <h5>December 7, 2019</h5>
                                    $290.29 has been deposited into your account!
                                </div>
                            </a>
                            <a class="dropdown-item d-flex align-items-center" href="#">
                                <div class="mr-3">
                                    <div class="icon-circle bg-warning">
                                        <i class="fas fa-exclamation-triangle text-white"></i>
                                    </div>
                                </div>
                                <div>
                                    <h5>December 2, 2019</h5>
                                    Spending Alert: We've noticed unusually high spending for your account.
                                </div>
                            </a>
                            <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                        </div>
                    </li>

                    <!--  프로필 -->
                    <div class="topbar-divider d-none d-sm-block"></div>
                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">
                            <img src="/static/login/images/jsol.png" style="max-width: 100px">
                            <span class="ml-2 d-none d-lg-inline text-white small"></span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                            <a class="dropdown-item" href="javascript:void(0);" data-toggle="modal" data-target="#logoutModal">
                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                Logout
                            </a>
                        </div>
                    </li>
                </ul>
            </nav>
            <!-- 메인 -->
            <!-- Container Fluid-->
            <div class="container-fluid" id="container-wrapper">
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">현황 관리</h1>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">모니터링</li>
                        <li class="breadcrumb-item">현황 관리</li>
                        <li class="breadcrumb-item active" aria-current="page"><a href="/dashboard/scheduler">회의실 스케쥴</a></li>
                    </ol>
                </div>
                <!-- 스케쥴러 -->
                <div class="card">
                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                        <h6 class="m-0 font-weight-bold text-primary">회의실 스케쥴</h6>

                        <a class="m-0 float-right btn btn-danger btn-sm" href="#">관리 &nbsp<i
                                class="fas fa-chevron-right"></i>
                        </a>

                    </div>

                    <div class="table-responsive">
                        <div>
                            <!-- EXAMPLE 2 -->
                            <div class="mb-4" style="margin:20px" >
                                <div id="sked2"></div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer"></div>
                </div>
            </div>
            <!-- 메인 끝 -->

            <!-- Modal Info -->
            <div class="modal fade" id="RoomInfo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelLogout"
                 aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="RoomDetails">회의실 정보</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <p>test ${modalint[0]}</p>
                        </div>
                        <div class="modal-footer">
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal Logout -->
            <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelLogout"
                 aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabelLogout">Ohh No!</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <p>로그아웃 하시겠습니까?</p>
                        </div>
                        <div class="modal-footer">
                            <form action="/logout" method="POST">
                                <button type="button" class="btn btn-outline-primary" data-dismiss="modal">취소</button>
                                <sec:authorize access="isAuthenticated()">
                                <form action="/logout" method="POST">
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                    <button type="submit" class="btn btn-primary">로그아웃</button>
                                </form>
                                </sec:authorize>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer -->
        <footer class="sticky-footer bg-white">
            <div class="container my-auto">
                <div class="copyright text-center my-auto">
                <span>©copyright &copy; <script> document.write(new Date().getFullYear()); </script> - developed by
                  <b><a href="https://github.com/Maitan21" target="_blank">Maitan21</a></b>
                </span>
                </div>
            </div>
        </footer>
        <!-- Footer End-->
    </div>
</div>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="/static/dash/js/jquery.skedTape.js"></script>
<script type="text/javascript">
    // --------------------------- Data --------------------------------
    var locations = [
    ];
    <c:forEach var = "item" items="${list[0]}">
    locations.push({id:'${item.room_id}', name: '${item.room_name}'});
    </c:forEach>

    var events=[];
    <c:forEach var = "reserve" items="${list[1]}">
    events.push( {
        name: '${reserve.room_name}',
        location: '${reserve.room_id}',
        start: today(Number(${reserve.check_in_Hour}), Number(${reserve.check_in_Min})),
        end: today(Number(${reserve.check_out_Hour}),Number(${reserve.check_out_Min}))
    });
    </c:forEach>


    // -------------------------- Helpers ------------------------------
    function today(hours, minutes) {
        var date = new Date();
        date.setHours(hours, minutes, 0, 0);
        return date;
    }

    function yesterday(hours, minutes) {
        var date = today(hours, minutes);
        date.setTime(date.getTime() - 24 * 60 * 60 * 1000);
        return date;
    }
    function tomorrow(hours, minutes) {
        var date = today(hours, minutes);
        date.setTime(date.getTime() + 24 * 60 * 60 * 1000);
        return date;
    }
    // --------------------------- Example 2 ---------------------------
    var sked2Config = {
        caption: '회의실 명',
        start: today(9, 0),
        end: today(22, 0),
        showEventTime: true,
        showEventDuration: true,
        locations: locations.map(function(location) {
            var newLocation = $.extend({}, location);
            delete newLocation.tzOffset;
            return newLocation;
        }),
        events: events.slice(),
        tzOffset: 0,
        sorting: true,
        orderBy: 'name',
    };
    var $sked2 = $.skedTape(sked2Config);
    $sked2.appendTo('#sked2').skedTape('render');
    //$sked2.skedTape('destroy');
    $sked2.skedTape(sked2Config);
</script>
<%@ include file = "footer.jsp" %>
