<%--
  Created by IntelliJ IDEA.
  User: CORSAIR
  Date: 2020-11-15
  Time: 오전 11:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="/static/dash/img/logo/logo.png" rel="icon">
    <title>RuangAdmin - Register</title>
    <link href="/static/dash/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="/static/dash/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="/static/dash/css/ruang-admin.min.css" rel="stylesheet">
    <link href="/static/dash/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    <link href="/static/dash/vendor/clock-picker/clockpicker.css" rel="stylesheet">
    <link href="/static/dash/vendor/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet" >

</head>

<body class="bg-gradient-login">
<!-- Register Content -->
<div class="container-login">
    <div class="row justify-content-center">
        <div class="col-xl-3 col-lg-12 col-md-9">
            <div class="card shadow-sm my-5">
                <div class="card-body p-0">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="login-form">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4"> 수 정 </h1>
                                </div>
                                <c:forEach var="reservation" items="${list[1]}">
                                    <form method="POST" action="/dashboard/updateReservation">
                                        <!-- 예약 번호 -->
                                        <div class="form-group">
                                            <label for="ReservationName">예약번호</label>
                                            <input type="text" class="form-control" id="ReservationID" name="ReservationID" value="<c:out value="${reservation.reserve_id}"></c:out>">
                                        </div>
                                        <!-- 예약자명-->
                                        <div class="form-group">
                                            <label for="ReservationName">예약자명</label>
                                            <input type="text" class="form-control" id="ReservationName" name="ReservationName" value="<c:out value="${reservation.reserver_name}"></c:out>">
                                        </div>

                                        <!-- 예약자 전화번호-->
                                        <div class="form-group">
                                            <label for="ReservationPhone">예약자 전화번호</label>
                                            <input type="text" class="form-control" id="ReservationPhone" name="ReservationPhone" value="<c:out value="${reservation.reserver_phone}"></c:out>" maxlength='11' oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                                        </div>

                                        <!-- 회의실 -->
                                        <div class="form-group">
                                            <label for="selectRoom">회의실 선택</label>
                                            <select class="form-control" id="selectRoom" name="selectRoom" >
                                                <c:forEach var = "room" items="${list[0]}">
                                                    <option value="${room.room_id}" <c:if test="${room.room_id == reservation.room_id}">selected</c:if>>${room.room_name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>

                                        <!-- 예약일자 -->
                                        <div class="form-group" id="ReservationDate">
                                            <label>예약일</label>
                                            <div class="input-group date">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="fas fa-calendar"></i></span>
                                                </div>
                                                <input type="text" class="form-control" id="Today" name="Today" value="<c:out value="${reservation.check_in_Date}"></c:out>">
                                            </div>
                                        </div>

                                        <!-- 체크인 시간 -->
                                        <div class="form-group">
                                            <label for="checkin">체크인</label>
                                            <div class="input-group clockpicker" id="checkin" >
                                                <input type="text" class="form-control" id="CheckInTime" name="CheckInTime" value="<c:out value="${reservation.check_in_Hour}:${reservation.check_in_Min}"></c:out>">
                                                <div class="input-group-append">
                                                    <span class="input-group-text"><i class="fas fa-clock"></i></span>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- 체크아웃 시간 -->
                                        <div class="form-group">
                                            <label for="checkout">체크아웃</label>
                                            <div class="input-group clockpicker" id="checkout">
                                                <input type="text" class="form-control" id="CheckOutTime" name="CheckOutTime" value="<c:out value="${reservation.check_out_Hour}:${reservation.check_out_Min}"></c:out>">
                                                <div class="input-group-append">
                                                    <span class="input-group-text"><i class="fas fa-clock"></i></span>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- hidden data-->
                                        <input type="hidden" id="reserverID" name="reserverID" value="<c:out value="${reservation.reserver_id}"></c:out>">
                                        <hr>
                                        <div class="text-center">
                                            <input type="submit"  value ="확인" class="btn btn-success btn-icon-split" style="width:100%; height: 40px; margin-right: 10px; text-align: center;">
                                        </div>
                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                    </form>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Register Content -->
<!--find script-->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/static/dash/js/ruang-admin.min.js"></script>
<script src="/static/dash/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/static/dash/vendor/jquery-easing/jquery.easing.min.js"></script>
<!-- Page level plugins -->
<script src="/static/dash/vendor/datatables/jquery.dataTables.min.js"></script>
<!--DateAndClockpicker plugins -->
<script src="/static/dash/vendor/clock-picker/clockpicker.js"></script>
<script src="/static/dash/vendor/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
<!-- 맨뒤로 배치 안하면 안됨 -->
<script language="javascript">
    $(document).ready(function () {
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

    });
</script>

</body>
</html>
