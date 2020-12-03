<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file = "header.jsp" %>
<!-- Topbar -->
<link href="/static/dash/css/select.css" rel="stylesheet">
<style>
    .head{
       color: #97989a;
       font-size: 12px
    }
</style>
</head>
<!-- 회의실 현황 -->
<body id="page-top">
<div id="wrapper">
    <!-- 사이드바 상단 -->
    <ul class="navbar-nav sidebar sidebar-light accordion" id="accordionSidebar">
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/dashboard/home">
            <div class="sidebar-brand-icon">
                <img src="/static/dash/img/logo/miroom.png">
            </div>
            <div class="sidebar-brand-text mx-3">M I R O O M</div>
        </a>
        <!--- 대시보드 탭 -->
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

        <!-- 현황 관리 탭 -->
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
                    <a class="collapse-item active" href="/dashboard/roomtable">회의실 현황</a>
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

        <!-- 관리자 탭 -->
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
                    <ol class="breadcrumb" style="background-color: transparent !important;">
                        <li class="breadcrumb-item">모니터링</li>
                        <li class="breadcrumb-item">현황 관리</li>
                        <li class="breadcrumb-item active" aria-current="page"><a href="/dashboard/roomtable">회의실 현황</a></li>
                    </ol>
                </div>

                <!-- 현황 테이블 -->
                <div class="col-xl-12 col-lg-7 mb-4">
                    <div class="card">
                        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                            <h6 class="m-0 font-weight-bold text-primary">회의실 현황</h6>
                            <a class="m-0 float-right btn btn-danger btn-sm" href="javascript:void(0);" data-toggle="modal" data-target="#RoomAdd">추가 &nbsp<i
                                    class="fas fa-chevron-right"></i>
                            </a>

                        </div>

                        <div class="table-responsive">
                            <table class="table align-items-center table-flush">
                                <thead class="thead-light">
                                <tr>
                                    <th>No.</th>
                                    <th>회의실</th>
                                    <th>사이즈</th>
                                    <th>위치</th>
                                    <th>상태</th>
                                    <th>상세</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:set var="cntAble" value = "0"  />
                                <c:forEach var = "item" items="${list[0]}" varStatus="no">
                                    <tr>
                                        <td><a href="#">${item.room_id}</a></td>
                                        <td><c:out value="${item.room_name}"></c:out></td>
                                        <td><c:out value="${item.size}"></c:out></td>
                                        <td><c:out value="${item.location}"></c:out></td>
                                        <c:choose>
                                            <c:when test="${item.status == 0}">
                                                <td><span class="badge badge-success">이용가능</span></td>
                                            </c:when>
                                            <c:when test="${item.status == 1}">
                                                <td><span class="badge badge-warning">준비중</span></td>
                                            </c:when>
                                            <c:when test="${item.status == 2}">
                                                <td><span class="badge badge-danger">이용불가</span></td>
                                            </c:when>
                                        </c:choose>
                                        <td>
                                            <a href="javascript:void(0);" data-toggle="modal" data-target="#RoomInfo${no.count}" class="btn btn-sm btn-primary">
                                            <c:set var="modalint[]" value = "${item.room_name}"/>
                                            상세 보기
                                        </a>

                                        </td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>
                        </div>
                        <div class="card-footer"></div>
                    </div>
                </div>
            </div>

            <!-- 모달 인포 -->
            <c:forEach var="name" items="${list[0]}" varStatus="status">
                <div class="modal fade" id="RoomInfo${status.count}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelLogout"
                     aria-hidden="true">
                    <div class="text-center">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="RoomDetails">회의실 정보</h5>
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
                                                    <td>
                                                        <div class="d-flex flex-column"> <span class="text-center head">방 크기</span> <span class="text-center bottom">${name.size}</span> </div>
                                                    </td>
                                                    <td>
                                                        <div class="d-flex flex-column"> <span class="text-center head">허용 인원</span> <span class="text-center bottom">${name.capacity} 명</span> </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="d-flex flex-column"> <span class="text-center head">위치</span> <span class="text-center bottom">${name.location}</span> </div>
                                                    </td>
                                                    <td>
                                                        <div class="d-flex flex-column"> <span class="text-center head">특징</span> <span class="text-center bottom">${name.feature}</span></div>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <a href="#" class="btn btn-success btn-icon-split" style="margin-right: 10px;"><span class="icon text-white-50"><i class="fas fa-check"></i></span>
                                        <span class="text">수정</span>
                                    </a>
                                    <a href="#" class="btn btn-danger btn-icon-split"><span class="icon text-white-50"><i class="fas fa-trash"></i></span>
                                        <span class="text">삭제</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </c:forEach>

            <!-- 추가(Add) 모달-->
            <div class="modal fade" id="RoomAdd" tabindex="-1" role="dialog"
                 aria-hidden="true">
                <div>
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="Roo">회의실 정보</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <form method="get">
                                    <!-- 회의실 명 -->
                                    <div class="form-group">
                                        <label for="roomName">회의실명</label>
                                        <input type="text" class="form-control" id="roomName" placeholder="회의실명 입력" required="">
                                    </div>
                                    <!-- 회의실 위치 -->
                                    <div class="form-group">
                                        <label for="roomLocation">회의실 위치</label>
                                        <input type="text" class="form-control" id="roomLocation" placeholder="회의실 위치 입력" required="">
                                    </div>
                                    <!-- 회의실 사이즈 -->
                                    <div class="form-group">
                                        <label for="selectSize">방 사이즈</label>
                                        <select class="form-control" id="selectSize" required="">
                                            <option value="소">소 (4명 이하)</option>
                                            <option value="중">중 (5 ~ 8명)</option>
                                            <option value="대">대 (9 ~ 12명)</option>
                                            <option value="특대">특대 (13명 이상)</option>
                                        </select>
                                    </div>

                                    <!-- 회의실 인원 -->
                                    <div class="form-group">
                                        <label for="selectCapacity">입장가능 인원</label>
                                        <input type="number" class="form-control" id="selectCapacity" min="0" placeholder="입장가능 인원 입력" required="">
                                    </div>

                                    <!-- 사진 불러오기 모뮬 -->
                                    <div class="form-group">
                                        <label for="ImgFile">회의실 사진 선택</label>
                                        <div class="custom-file">
                                            <input type="file" class="custom-file-input" id="ImgFile">
                                            <label class="custom-file-label" for="ImgFile">불러오기</label>
                                        </div>
                                    </div>
                                    <!-- 셀렉터 모듈 -->
                                    <div class="form-group">
                                        <select multiple data-placeholder="Add tools">
                                            <option selected>WiFi</option>
                                            <option>프로젝터</option>
                                            <option>보드 / 칠판</option>
                                        </select>
                                    </div>
                                    <div>
                                        <input type="submit" value="추가" href="#" class="btn btn-success btn-icon-split" style="width:80px; height: 40px; margin-right: 10px; text-align: center;"><span class="icon text-white-50"><i class="fas fa-check"></i></span>
                                            </input>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- 로그아웃 모달 -->
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

<%@ include file = "footer.jsp" %>
