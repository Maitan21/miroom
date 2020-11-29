<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file = "header.jsp" %>
<link href="/static/dash/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<link href="/static/dash/vendor/clock-picker/clockpicker.css" rel="stylesheet">
<link href="/static/dash/vendor/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet" >
<link href="/static/dash/vendor/bootstrap-touchspin/css/jquery.bootstrap-touchspin.css" rel="stylesheet" >
<style>
    .head{
        color: #97989a;
        font-size: 12px
    }
</style>
</head>
<body id="page-top">
<div id="wrapper">
    <!-- 사이드바 상단 로고 / 이름 설정 -->
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
                    <a class="collapse-item" href="/dashboard/scheduler">회의실 스케쥴</a>
                    <a class="collapse-item " href="/dashboard/roomtable">회의실 현황</a>
                    <a class="collapse-item active" href="/dashboard/reservationtable">예약 현황</a>
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
        <div class="version">Version 2.1.8</div>
    </ul>


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
            <!-- 네비게이션 -->
            <div class="container-fluid" id="container-wrapper">
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">현황 관리</h1>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">모니터링</li>
                        <li class="breadcrumb-item">현황 관리</li>
                        <li class="breadcrumb-item active" aria-current="page"><a href="/dashboard/reservationtable">예약 현황</a></li>
                    </ol>
                </div>

                <!-- 데이터테이블 -->
                <div class="col-lg-12">
                    <div class="card mb-4">
                        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                            <h6 class="m-0 font-weight-bold text-primary">예약 현황</h6>
                            <div class="row" >
                                <a class="m-0 float-right btn btn-danger btn-sm" href="javascript:void(0);" data-toggle="modal" data-target="#ReservationAdd">추가 &nbsp<i
                                        class="fas fa-chevron-right"></i>
                                </a>
                            </div>
                        </div>
                        <div class="table-responsive p-3">
                            <table class="table align-items-center table-flush table-hover" id="dataTableHover">
                                <thead class="thead-light">
                                <tr>
                                    <th>예약 번호</th>
                                    <th>예약자</th>
                                    <th>입장 인원</th>
                                    <th>회의실</th>
                                    <th>예약 날짜</th>
                                    <th>예약 시간</th>
                                    <th>전화번호</th>
                                    <th>상세</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var = "item" items="${list[1]}" varStatus="no">
                                    <tr>
                                        <td><a href="#">${item.reserve_id}</a></td>
                                        <td><c:out value="${item.reserver_name}"></c:out></td>
                                        <td><c:out value="${item.person}"></c:out></td>
                                        <td><c:out value="${item.room_name}"></c:out></td>
                                        <td><c:out value="${item.check_in_Date}"></c:out></td>
                                        <td><c:out value="${item.check_in_Hour} : ${item.check_in_Min} ~ ${item.check_out_Hour} : ${item.check_out_Min}"></c:out></td>
                                        <td><c:out value="${item.reserver_phone}"></c:out> </td>
                                        <td>
                                            <a href="javascript:void(0);" data-toggle="modal" data-target="#ReserveInfo${item.reserve_id}" class="btn btn-sm btn-primary">
                                                <c:set var="modalint[]" value = "${item.room_name}"/>
                                                상세 보기
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <!-- 모달 인포 -->
                <c:forEach var="name" items="${list[1]}" varStatus="status">
                    <div class="modal fade" id="ReserveInfo${name.reserve_id}" tabindex="-1" role="dialog" aria-labelledby="ReservationInfo"
                         aria-hidden="true">
                        <div class="text-center">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="RoomDetails">예약 정보</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="py-3" ><img src="/static/handler/img/home/room5.jpg" width="80%" class="rounded-lg">
                                            <h4 class="text-secondary "><br>${name.room_name}</h4>
                                            <div class="allergy"><span></span></div>
                                            <div class="stats">
                                                <table class="table table-borderless">
                                                    <tbody>
                                                    <tr>
                                                        <c:choose>
                                                            <c:when test="${name.person == 1}">
                                                                <td>
                                                                    <div class="d-flex flex-column"> <span class="text-center head">예약자</span> <span class="text-center bottom">${name.reserver_name}</span> </div>
                                                                </td>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <td>
                                                                    <div class="d-flex flex-column"> <span class="text-center head">예약자</span> <span class="text-center bottom">${name.reserver_name} 외 ${name.person -1}</span> </div>
                                                                </td>
                                                            </c:otherwise>
                                                        </c:choose>
                                                        <td>
                                                            <div class="d-flex flex-column"> <span class="text-center head">예약자 폰번호</span> <span class="text-center bottom">${name.reserver_phone}</span> </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="d-flex flex-column"> <span class="text-center head">예약 시간</span> <span class="text-center bottom">${name.check_in_Date}<br> ${name.check_in_Hour} : ${name.check_in_Min} ~ ${name.check_out_Hour} : ${name.check_out_Min}</span> </div>
                                                        </td>
                                                        <td>
                                                            <div class="d-flex flex-column"> <span class="text-center head">예약 번호</span> <span class="text-center bottom">${name.reserve_id}</span></div>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <a href="/dashboard/modifyReservation?id=${name.reserve_id}" class="btn btn-success btn-icon-split" style="margin-right: 10px;"><span class="icon text-white-50"><i class="fas fa-check"></i></span>
                                            <span class="text">수정</span>
                                        </a>
                                        <a href="/dashboard/deleteReservation?id=${name.reserve_id}" class="btn btn-danger btn-icon-split" style="margin-right: 10px;"><span class="icon text-white-50"><i class="fas fa-check"></i></span>
                                            <span class="text">삭제</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>

                <!-- 추가(Add) 모달-->
                <div class="modal fade" id="ReservationAdd" tabindex="-1" role="dialog"
                     aria-hidden="true">
                    <div>
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="Roo">예약 추가</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form method="POST" action="/dashboard/newReservation">
                                        <!-- 예약자명-->
                                        <div class="form-group">
                                            <label for="ReservationName">예약자명</label>
                                            <input type="text" class="form-control" id="ReservationName" name="ReservationName" placeholder="예) 홍길동" required="">
                                        </div>

                                        <!-- 예약자 전화번호-->
                                        <div class="form-group">
                                            <label for="ReservationPhone">예약자 전화번호</label>
                                            <input type="text" class="form-control" id="ReservationPhone" name="ReservationPhone" placeholder="예) 01012345678" maxlength='11' oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                                        </div>

                                        <!-- 회의실 -->
                                        <div class="form-group">
                                            <label for="selectRoom">회의실 선택</label>
                                            <select class="form-control" id="selectRoom" name="selectRoom" required="">
                                                <c:forEach var = "room" items="${list[0]}" varStatus="no">
                                                    <c:choose>
                                                        <c:when test="${room.status == 0}">
                                                            <option value="${room.room_id}">${room.room_name}</option>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <option value="${room.room_id}" disabled>${room.room_name}</option>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </c:forEach>
                                            </select>
                                        </div>

                                        <!-- 예약 인원 -->
                                        <div class="form-group">
                                            <label for="selectPerson">예약 인원</label>
                                            <input id="selectPerson" name ="selectPerson" type="text" class="form-control">
                                        </div>

                                        <!-- 예약일자 -->
                                        <div class="form-group" id="ReservationDate">
                                            <label>예약 일자</label>
                                            <div class="input-group date">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="fas fa-calendar"></i></span>
                                                </div>
                                                <input type="text" class="form-control" id="Today" name="Today">
                                            </div>
                                        </div>

                                        <!-- 체크인 시간 -->
                                        <div class="form-group">
                                            <label for="checkin">체크인</label>
                                            <div class="input-group clockpicker" id="checkin" >
                                                <input type="text" class="form-control" id="CheckInTime" name="CheckInTime">
                                                <div class="input-group-append">
                                                    <span class="input-group-text"><i class="fas fa-clock"></i></span>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- 체크아웃 시간 -->
                                        <div class="form-group">
                                            <label for="checkout">체크아웃</label>
                                            <div class="input-group clockpicker" id="checkout">
                                                <input type="text" class="form-control" id="CheckOutTime" name="CheckOutTime">
                                                <div class="input-group-append">
                                                    <span class="input-group-text"><i class="fas fa-clock"></i></span>
                                                </div>
                                            </div>
                                        </div>

                                        <div>
                                            <input type="submit"  value ="추가" class="btn btn-success btn-icon-split " style="width:80px; height: 40px; margin-right: 10px; text-align: center;">
                                        </div>
                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <!-- 모달 로그아웃 -->
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

<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>
<!--find script-->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/static/dash/js/ruang-admin.min.js"></script>
<script src="/static/dash/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/static/dash/vendor/jquery-easing/jquery.easing.min.js"></script>
<!-- Page level plugins -->
<script src="/static/dash/vendor/datatables/jquery.dataTables.min.js"></script>
<script src="/static/dash/vendor/datatables/dataTables.bootstrap4.min.js"></script>
<!-- Bootstrap Touchspin -->
<script src="/static/dash/vendor/bootstrap-touchspin/js/jquery.bootstrap-touchspin.js"></script>
<!--DateAndClockpicker plugins -->
<script src="/static/dash/vendor/clock-picker/clockpicker.js"></script>
<script src="/static/dash/vendor/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
<!-- 맨뒤로 배치 안하면 안됨 -->
<script language="javascript">
    $(document).ready(function () {
        $('#dataTable').DataTable(); // ID From dataTable
        $('#dataTableHover').DataTable( {
            "order": [[ 0, "desc" ]],
            "language": {
                "lengthMenu": "_MENU_ 개씩 보기",
                "info": "",
                "search": "검색어 : _INPUT_"
            }
        } ); // ID From dataTable with Hover

        $('#check-minutes').click(function(e){
            e.stopPropagation();
            input.clockpicker('show').clockpicker('toggleView', 'minutes');
        });

        $('#checkin').clockpicker({
            autoclose: true
        });
        $('#checkout').clockpicker({
            autoclose: true
        });

        $('#ReservationDate .input-group.date').datepicker({
            format: 'yyyy-mm-dd',
            todayBtn: 'linked',
            todayHighlight: true,
            autoclose: true,
        });

        $('#selectPerson').TouchSpin({
            min: 1,
            max: 50,
            initval: 1,
            boostat: 5,
            maxboostedstep: 10,
            verticalbuttons: true,
        });

    });

    // 현재 시간
    window.onload = function(){

        var currentTime = new Date();

        document.getElementById("Today").value=currentTime.getFullYear()+'-'+(currentTime.getMonth()+1)+'-'+(currentTime.getDate()< 10 ? "0"+currentTime.getDate() : currentTime.getDate());
        document.getElementById("CheckInTime").value = currentTime.getHours()+':'+currentTime.getMinutes();
        document.getElementById("CheckOutTime").value = currentTime.getHours()+1+':'+currentTime.getMinutes();
    }
</script>

</body>
</html>