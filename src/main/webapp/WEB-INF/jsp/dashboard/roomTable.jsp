<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file = "header.jsp" %>
<!-- Topbar -->
<style>
    .head{
       color: #97989a;
       font-size: 12px
    }
    <!-- select version -->
    .selectMultiple {
        width: 100%;
        position: relative;
    }
    .selectMultiple select {
        display: none;
    }
    .selectMultiple > div {
        position: relative;
        z-index: 2;
        padding: 8px 12px 2px 12px;
        border-radius: 8px;
        background: #fff;
        font-size: 14px;
        min-height: 44px;
        box-shadow: 0 4px 16px 0 rgba(22, 42, 90, 0.12);
        -webkit-transition: box-shadow 0.3s ease;
        transition: box-shadow 0.3s ease;
    }
    .selectMultiple > div:hover {
        box-shadow: 0 4px 24px -1px rgba(22, 42, 90, 0.16);
    }
    .selectMultiple > div .arrow {
        right: 1px;
        top: 0;
        bottom: 0;
        cursor: pointer;
        width: 28px;
        position: absolute;
    }
    .selectMultiple > div .arrow:before, .selectMultiple > div .arrow:after {
        content: "";
        position: absolute;
        display: block;
        width: 2px;
        height: 8px;
        border-bottom: 8px solid #99a3ba;
        top: 43%;
        -webkit-transition: all 0.3s ease;
        transition: all 0.3s ease;
    }
    .selectMultiple > div .arrow:before {
        right: 12px;
        -webkit-transform: rotate(-130deg);
        transform: rotate(-130deg);
    }
    .selectMultiple > div .arrow:after {
        left: 9px;
        -webkit-transform: rotate(130deg);
        transform: rotate(130deg);
    }
    .selectMultiple > div span {
        color: #99a3ba;
        display: block;
        position: absolute;
        left: 12px;
        cursor: pointer;
        top: 8px;
        line-height: 28px;
        -webkit-transition: all 0.3s ease;
        transition: all 0.3s ease;
    }
    .selectMultiple > div span.hide {
        opacity: 0;
        visibility: hidden;
        -webkit-transform: translate(-4px, 0);
        transform: translate(-4px, 0);
    }
    .selectMultiple > div a {
        position: relative;
        padding: 0 24px 6px 8px;
        line-height: 28px;
        color: #1e2330;
        display: inline-block;
        vertical-align: top;
        margin: 0 6px 0 0;
    }
    .selectMultiple > div a em {
        font-style: normal;
        display: block;
        white-space: nowrap;
    }
    .selectMultiple > div a:before {
        content: "";
        left: 0;
        top: 0;
        bottom: 6px;
        width: 100%;
        position: absolute;
        display: block;
        background: rgba(228, 236, 250, 0.7);
        z-index: -1;
        border-radius: 4px;
    }
    .selectMultiple > div a i {
        cursor: pointer;
        position: absolute;
        top: 0;
        right: 0;
        width: 24px;
        height: 28px;
        display: block;
    }
    .selectMultiple > div a i:before, .selectMultiple > div a i:after {
        content: "";
        display: block;
        width: 2px;
        height: 10px;
        position: absolute;
        left: 50%;
        top: 50%;
        background: #4d18ff;
        border-radius: 1px;
    }
    .selectMultiple > div a i:before {
        -webkit-transform: translate(-50%, -50%) rotate(45deg);
        transform: translate(-50%, -50%) rotate(45deg);
    }
    .selectMultiple > div a i:after {
        -webkit-transform: translate(-50%, -50%) rotate(-45deg);
        transform: translate(-50%, -50%) rotate(-45deg);
    }
    .selectMultiple > div a.notShown {
        opacity: 0;
        -webkit-transition: opacity 0.3s ease;
        transition: opacity 0.3s ease;
    }
    .selectMultiple > div a.notShown:before {
        width: 28px;
        -webkit-transition: width 0.45s cubic-bezier(0.87, -0.41, 0.19, 1.44) 0.2s;
        transition: width 0.45s cubic-bezier(0.87, -0.41, 0.19, 1.44) 0.2s;
    }
    .selectMultiple > div a.notShown i {
        opacity: 0;
        -webkit-transition: all 0.3s ease 0.3s;
        transition: all 0.3s ease 0.3s;
    }
    .selectMultiple > div a.notShown em {
        opacity: 0;
        -webkit-transform: translate(-6px, 0);
        transform: translate(-6px, 0);
        -webkit-transition: all 0.4s ease 0.3s;
        transition: all 0.4s ease 0.3s;
    }
    .selectMultiple > div a.notShown.shown {
        opacity: 1;
    }
    .selectMultiple > div a.notShown.shown:before {
        width: 100%;
    }
    .selectMultiple > div a.notShown.shown i {
        opacity: 1;
    }
    .selectMultiple > div a.notShown.shown em {
        opacity: 1;
        -webkit-transform: translate(0, 0);
        transform: translate(0, 0);
    }
    .selectMultiple > div a.remove:before {
        width: 28px;
        -webkit-transition: width 0.4s cubic-bezier(0.87, -0.41, 0.19, 1.44) 0s;
        transition: width 0.4s cubic-bezier(0.87, -0.41, 0.19, 1.44) 0s;
    }
    .selectMultiple > div a.remove i {
        opacity: 0;
        -webkit-transition: all 0.3s ease 0s;
        transition: all 0.3s ease 0s;
    }
    .selectMultiple > div a.remove em {
        opacity: 0;
        -webkit-transform: translate(-12px, 0);
        transform: translate(-12px, 0);
        -webkit-transition: all 0.4s ease 0s;
        transition: all 0.4s ease 0s;
    }
    .selectMultiple > div a.remove.disappear {
        opacity: 0;
        -webkit-transition: opacity 0.5s ease 0s;
        transition: opacity 0.5s ease 0s;
    }
    .selectMultiple > ul {
        margin: 0;
        padding: 0;
        list-style: none;
        font-size: 16px;
        z-index: 1;
        position: absolute;
        top: 100%;
        left: 0;
        right: 0;
        visibility: hidden;
        opacity: 0;
        border-radius: 8px;
        -webkit-transform: translate(0, 20px) scale(0.8);
        transform: translate(0, 20px) scale(0.8);
        -webkit-transform-origin: 0 0;
        transform-origin: 0 0;
        -webkit-filter: drop-shadow(0 12px 20px rgba(22, 42, 90, 0.08));
        filter: drop-shadow(0 12px 20px rgba(22, 42, 90, 0.08));
        -webkit-transition: all 0.4s ease, -webkit-transform 0.4s cubic-bezier(0.87, -0.41, 0.19, 1.44), -webkit-filter 0.3s ease 0.2s;
        transition: all 0.4s ease, -webkit-transform 0.4s cubic-bezier(0.87, -0.41, 0.19, 1.44), -webkit-filter 0.3s ease 0.2s;
        transition: all 0.4s ease, transform 0.4s cubic-bezier(0.87, -0.41, 0.19, 1.44), filter 0.3s ease 0.2s;
        transition: all 0.4s ease, transform 0.4s cubic-bezier(0.87, -0.41, 0.19, 1.44), filter 0.3s ease 0.2s, -webkit-transform 0.4s cubic-bezier(0.87, -0.41, 0.19, 1.44), -webkit-filter 0.3s ease 0.2s;
    }
    .selectMultiple > ul li {
        color: #1e2330;
        background: #fff;
        padding: 12px 16px;
        cursor: pointer;
        overflow: hidden;
        position: relative;
        -webkit-transition: background 0.3s ease, color 0.3s ease, opacity 0.5s ease 0.3s, border-radius 0.3s ease 0.3s, -webkit-transform 0.3s ease 0.3s;
        transition: background 0.3s ease, color 0.3s ease, opacity 0.5s ease 0.3s, border-radius 0.3s ease 0.3s, -webkit-transform 0.3s ease 0.3s;
        transition: background 0.3s ease, color 0.3s ease, transform 0.3s ease 0.3s, opacity 0.5s ease 0.3s, border-radius 0.3s ease 0.3s;
        transition: background 0.3s ease, color 0.3s ease, transform 0.3s ease 0.3s, opacity 0.5s ease 0.3s, border-radius 0.3s ease 0.3s, -webkit-transform 0.3s ease 0.3s;
    }
    .selectMultiple > ul li:first-child {
        border-radius: 8px 8px 0 0;
    }
    .selectMultiple > ul li:first-child:last-child {
        border-radius: 8px;
    }
    .selectMultiple > ul li:last-child {
        border-radius: 0 0 8px 8px;
    }
    .selectMultiple > ul li:last-child:first-child {
        border-radius: 8px;
    }
    .selectMultiple > ul li:hover {
        background: #4d18ff;
        color: #fff;
    }
    .selectMultiple > ul li:after {
        content: "";
        position: absolute;
        top: 50%;
        left: 50%;
        width: 6px;
        height: 6px;
        background: rgba(0, 0, 0, 0.4);
        opacity: 0;
        border-radius: 100%;
        -webkit-transform: scale(1, 1) translate(-50%, -50%);
        transform: scale(1, 1) translate(-50%, -50%);
        -webkit-transform-origin: 50% 50%;
        transform-origin: 50% 50%;
    }
    .selectMultiple > ul li.beforeRemove {
        border-radius: 0 0 8px 8px;
    }
    .selectMultiple > ul li.beforeRemove:first-child {
        border-radius: 8px;
    }
    .selectMultiple > ul li.afterRemove {
        border-radius: 8px 8px 0 0;
    }
    .selectMultiple > ul li.afterRemove:last-child {
        border-radius: 8px;
    }
    .selectMultiple > ul li.remove {
        -webkit-transform: scale(0);
        transform: scale(0);
        opacity: 0;
    }
    .selectMultiple > ul li.remove:after {
        -webkit-animation: ripple 0.4s ease-out;
        animation: ripple 0.4s ease-out;
    }
    .selectMultiple > ul li.notShown {
        display: none;
        -webkit-transform: scale(0);
        transform: scale(0);
        opacity: 0;
        -webkit-transition: opacity 0.4s ease, -webkit-transform 0.35s ease;
        transition: opacity 0.4s ease, -webkit-transform 0.35s ease;
        transition: transform 0.35s ease, opacity 0.4s ease;
        transition: transform 0.35s ease, opacity 0.4s ease, -webkit-transform 0.35s ease;
    }
    .selectMultiple > ul li.notShown.show {
        -webkit-transform: scale(1);
        transform: scale(1);
        opacity: 1;
    }
    .selectMultiple.open > div {
        box-shadow: 0 4px 20px -1px rgba(22, 42, 90, 0.12);
    }
    .selectMultiple.open > div .arrow:before {
        -webkit-transform: rotate(-50deg);
        transform: rotate(-50deg);
    }
    .selectMultiple.open > div .arrow:after {
        -webkit-transform: rotate(50deg);
        transform: rotate(50deg);
    }
    .selectMultiple.open > ul {
        -webkit-transform: translate(0, 12px) scale(1);
        transform: translate(0, 12px) scale(1);
        opacity: 1;
        visibility: visible;
        -webkit-filter: drop-shadow(0 16px 24px rgba(22, 42, 90, 0.16));
        filter: drop-shadow(0 16px 24px rgba(22, 42, 90, 0.16));
    }

    @-webkit-keyframes ripple {
        0% {
            -webkit-transform: scale(0, 0);
            transform: scale(0, 0);
            opacity: 1;
        }
        25% {
            -webkit-transform: scale(30, 30);
            transform: scale(30, 30);
            opacity: 1;
        }
        100% {
            opacity: 0;
            -webkit-transform: scale(50, 50);
            transform: scale(50, 50);
        }
    }

    @keyframes ripple {
        0% {
            -webkit-transform: scale(0, 0);
            transform: scale(0, 0);
            opacity: 1;
        }
        25% {
            -webkit-transform: scale(30, 30);
            transform: scale(30, 30);
            opacity: 1;
        }
        100% {
            opacity: 0;
            -webkit-transform: scale(50, 50);
            transform: scale(50, 50);
        }
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
                    <a class="collapse-item" href="/dashboard/scheduler">회의실 스케쥴</a>
                    <a class="collapse-item active" href="/dashboard/roomtable">회의실 현황</a>
                    <a class="collapse-item" href="/dashboard/reservationtable">예약 현황</a>
                </div>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">
                <i class="fas fa-fw fa-chart-area"></i>
                <span>통계</span>
            </a>
        </li>

        <div class="sidebar-heading">
            Management
        </div>
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#management" aria-expanded="true"
               aria-controls="management">
                <i class="fas fa-fw fa-table"></i>
                <span>설정</span>
            </a>
            <div id="management" class="collapse" aria-labelledby="headingForm" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Forms</h6>
                    <a class="collapse-item" href="#">계정 설정</a>
                </div>
            </div>
        </li>
        <hr class="sidebar-divider">
        <div class="version">Version 1.0.3</div>
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
                    <ol class="breadcrumb" style="background-color: transparent !important;">
                        <li class="breadcrumb-item">모니터링</li>
                        <li class="breadcrumb-item">현황 관리</li>
                        <li class="breadcrumb-item active" aria-current="page"><a href="/dashboard/roomtable">회의실 현황</a></li>
                    </ol>
                </div>

                <!-- 현황 -->
                <div class="col-xl-12 col-lg-7 mb-4">
                    <div class="card">
                        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                            <h6 class="m-0 font-weight-bold text-primary">회의실 현황</h6>
                            <a class="m-0 float-right btn btn-danger btn-sm" href="javascript:void(0);" data-toggle="modal" data-target="#RoomAdd">관리 &nbsp<i
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
                                    <th>상태</th>
                                    <th>Detail</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:set var="cntAble" value = "0"  />
                                <c:forEach var = "item" items="${list[0]}" varStatus="no">
                                    <tr>
                                        <td class="custom-control custom-radio"><input type="radio" id="customRadio${no.count}" name="customRadio" class="custom-control-input">
                                            <label class="custom-control-label" for="customRadio${no.count}">${no.count}</label></td>
                                        <td><c:out value="${item.ROOM_NAME}"></c:out></td>
                                        <td><c:out value="${item.SIZE}"></c:out></td>
                                        <c:choose>
                                            <c:when test="${item.STATUS == 0}">
                                                <td><span class="badge badge-success">이용가능</span></td>
                                            </c:when>
                                            <c:when test="${item.STATUS == 1}">
                                                <td><span class="badge badge-info">예약됨</span></td>
                                            </c:when>
                                            <c:when test="${item.STATUS == 2}">
                                                <td><span class="badge badge-warning">이용중</span></td>
                                            </c:when>
                                            <c:otherwise>
                                                <td><span class="badge badge-danger">이용불가</span></td>
                                            </c:otherwise>
                                        </c:choose>
                                        <td>
                                            <a href="javascript:void(0);" data-toggle="modal" data-target="#RoomInfo${no.count}" class="btn btn-sm btn-primary">
                                            <c:set var="modalint[]" value = "${item.ROOM_NAME}"/>
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
            <!-- Modal Info -->
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
                                        <h4 class="text-secondary "><br>${name.ROOM_NAME}</h4>
                                        <div class="allergy"><span></span></div>
                                        <div class="stats">
                                            <table class="table table-borderless">
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <div class="d-flex flex-column"> <span class="text-center head">방 크기</span> <span class="text-center bottom">중</span> </div>
                                                    </td>
                                                    <td>
                                                        <div class="d-flex flex-column"> <span class="text-center head">허용 인원</span> <span class="text-center bottom">2~4 명</span> </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="d-flex flex-column"> <span class="text-center head">위치</span> <span class="text-center bottom">별관 4F</span> </div>
                                                    </td>
                                                    <td>
                                                        <div class="d-flex flex-column"> <span class="text-center head">비고</span> <span class="text-center bottom">-</span> </div>
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
            <!--- modal add-->

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
                                <form>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">회의실명</label>
                                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="회의실명 입력">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleFormControlSelect1">방 사이즈 / 인원</label>
                                        <select class="form-control" id="exampleFormControlSelect1">
                                            <option>소 (2~4명)</option>
                                            <option>중 (5~8명)</option>
                                            <option>대 (9~12명)</option>
                                            <option>특대 (12 명이상)</option>
                                        </select>
                                    </div>


                                    <div class="form-group">
                                        <label for="exampleInputEmail1">회의실 사진 선택</label>
                                        <div class="custom-file">
                                            <input type="file" class="custom-file-input" id="customFile">
                                            <label class="custom-file-label" for="customFile">불러오기</label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <select multiple data-placeholder="Add tools">
                                            <option selected>WiFi</option>
                                            <option>프로젝터</option>
                                            <option>보드 / 칠판</option>
                                        </select>
                                    </div>
                                    <div>    <a href="#" class="btn btn-success btn-icon-split" style="margin-right: 10px;"><span class="icon text-white-50"><i class="fas fa-check"></i></span>
                                        <span class="text">추 가</span></a></div>
                                </form>
                            </div>
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
