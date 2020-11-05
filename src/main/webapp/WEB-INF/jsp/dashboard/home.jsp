<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file = "header.jsp" %>
</head>
<!-- Topbar -->
<body id="page-top">
<div id="wrapper">
  <!-- 사이드바 상단 로고-->
  <ul class="navbar-nav sidebar sidebar-light accordion" id="accordionSidebar">
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/dashboard/home">
      <div class="sidebar-brand-icon">
        <img src="/static/dash/img/logo/miroom.png">
      </div>
      <div class="sidebar-brand-text mx-3">M I R O O M</div>
    </a>
    <hr class="sidebar-divider my-0">
    <li class="nav-item active">
      <a class="nav-link" href="/dashboard/home">
        <i class="fas fa-fw fa-tachometer-alt"></i>
        <span>대시보드</span></a>
    </li>
    <hr class="sidebar-divider">

    <!-- 사이드바 모니터링 탭 -->
    <div class="sidebar-heading">
      Monitoring
    </div>

    <!-- 현황 탭 -->
    <li class="nav-item">
      <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTable" aria-expanded="true"
         aria-controls="collapseTable">
        <i class="fas fa-fw fa-table"></i>
        <span>현황 관리</span>
      </a>
      <div id="collapseTable" class="collapse" aria-labelledby="headingTable" data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded">
          <a class="collapse-item" href="/dashboard/scheduler">회의실 스케쥴</a>
          <a class="collapse-item" href="/dashboard/roomtable">회의실 현황</a>
          <a class="collapse-item" href="/dashboard/reservationtable">예약 현황</a>
        </div>
      </div>
    </li>

    <!-- 차트탭-->
    <li class="nav-item">
      <a class="nav-link" href="/dashboard/chart">
        <i class="fas fa-fw fa-chart-area"></i>
        <span>차트</span>
      </a>
    </li>

    <!-- 설정 탭-->
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

          <!-- 여기서 폼 메인-->
          <!-- 네비게이션-->
          <div class="container-fluid" id="container-wrapper">
              <div class="d-sm-flex align-items-center justify-content-between mb-4">
                <h1 class="h3 mb-0 text-gray-800">대시보드</h1>
                <ol class="breadcrumb">
                  <li class="breadcrumb-item">Home</li>
                  <li class="breadcrumb-item active" aria-current="page"><a href="/dashboard/home">대시보드</a></li>
                </ol>
              </div>
              <div class="row mb-3">
                  <c:set var="cntAble" value = "0"  />
                  <c:set var="cntResrve" value = "0"  />
                  <c:set var="toDay" value ="0"/>

                  <!-- 총 회의실 -->
                  <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card h-100">
                      <div class="card-body">
                        <div class="row align-items-center">
                          <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-uppercase mb-1">총 회의실</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">${fn:length(list[0])}</div>
                            <!--<div class="mt-2 mb-0 text-muted text-xs">
                              <span class="text-success mr-2"><i class="fa fa-arrow-up"></i> 3.48%</span>
                              <span>Since last month</span>
                            </div>-->
                          </div>
                          <div class="col-auto">
                            <i class="fas fa-calendar fa-2x text-primary"></i>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <!-- 이용가능 회의실 -->
                  <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card h-100">
                      <div class="card-body">
                        <div class="row no-gutters align-items-center">
                          <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-uppercase mb-1">오늘 예약자</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">${cntToday} 명</div>
                            <!--
                            <div class="mt-2 mb-0 text-muted text-xs">
                              <span class="text-success mr-2"><i class="fas fa-arrow-up"></i> 12%</span>
                              <span>Since last years</span>
                            </div>-->
                          </div>
                          <div class="col-auto">
                            <i class="fas fa-shopping-cart fa-2x text-success"></i>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <!-- 예약된 회의실 -->
                  <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card h-100">
                      <div class="card-body">
                        <div class="row no-gutters align-items-center">
                          <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-uppercase mb-1">주간 이용자</div>
                            <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">${cntWeek} 명</div>
                            <!--
                            <div class="mt-2 mb-0 text-muted text-xs">
                              <span class="text-success mr-2"><i class="fas fa-arrow-up"></i> 20.4%</span>
                              <span>Since last month</span>
                            </div>-->
                          </div>
                          <div class="col-auto">
                            <i class="fas fa-users fa-2x text-info"></i>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <!-- 이용자 수 -->
                  <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card h-100">
                      <div class="card-body">
                        <div class="row no-gutters align-items-center">
                          <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-uppercase mb-1">월간 이용자</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">${cntMonth} 명</div>
                            <!--
                            <div class="mt-2 mb-0 text-muted text-xs">
                              <span class="text-danger mr-2"><i class="fas fa-arrow-down"></i> 1.10%</span>
                              <span>Since yesterday</span>
                            </div> -->
                          </div>
                          <div class="col-auto">
                            <i class="fas fa-comments fa-2x text-warning"></i>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <!-- Area Chart -->
                  <div class="col-xl-12 col-lg-7">
                    <div class="card mb-4">
                      <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                        <h6 class="m-0 font-weight-bold text-primary">주간 레포트</h6>
                      </div>
                      <div class="card-body">
                        <div class="chart-area">
                          <canvas id="myAreaChart"></canvas>
                        </div>
                      </div>
                    </div>
                  </div>

                  <!-- Pie Chart
                  <div class="col-xl-4 col-lg-5">
                    <div class="card mb-4">
                      <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                        <h6 class="m-0 font-weight-bold text-primary"></h6>
                        <div class="dropdown no-arrow">
                          <a class="dropdown-toggle btn btn-primary btn-sm" href="#" role="button" id="dropdownMenuLink"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Month <i class="fas fa-chevron-down"></i>
                          </a>
                          <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                            aria-labelledby="dropdownMenuLink">
                            <div class="dropdown-header">Select Periode</div>
                            <a class="dropdown-item" href="#">Today</a>
                            <a class="dropdown-item" href="#">Week</a>
                            <a class="dropdown-item active" href="#">Month</a>
                            <a class="dropdown-item" href="#">This Year</a>
                          </div>
                        </div>
                      </div>
                      <div class="card-body">
                        <div class="mb-3">
                      </div></div>
                      <div class="card-footer text-center">
                        <a class="m-0 small text-primary card-link" href="#">View More <i
                            class="fas fa-chevron-right"></i></a>
                      </div>
                    </div>
                  </div>
                   -->
                   <!--
                    ToDo List

                    DB 연결 후 변수 값으로 자동 출력 되도록

                  -->
                  <!-- 현황 -->
                  <div class="col-xl-12 col-lg-7 mb-4">
                    <div class="card">
                      <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                        <h6 class="m-0 font-weight-bold text-primary">회의실 현황</h6>
                        <a class="m-0 float-right btn btn-danger btn-sm" href="/dashboard/roomtable">View More <i
                            class="fas fa-chevron-right"></i></a>
                      </div>
                      <div class="table-responsive">
                        <table class="table align-items-center table-flush">
                          <thead class="thead-light">
                            <tr>
                              <th>No.</th>
                              <th>회의실</th>
                              <th>위치</th>
                              <th>사이즈</th>
                              <th>상태</th>
                              <th>상세</th>
                            </tr>
                          </thead>
                          <tbody>
                          <c:forEach var = "item" items="${list[0]}" varStatus="no">
                            <tr>
                              <td><a href="#">${item.room_id}</a></td>
                              <td><c:out value="${item.room_name}"></c:out></td>
                              <td><c:out value="${item.size}"></c:out></td>
                              <td><c:out value="${item.location}"></c:out></td>
                              <td> - </td>
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
              <!-- 메인 끝 -->

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
<!-- chart -->


<script src="/static/dash/vendor/chart.js/Chart.min.js"></script>
<script src="/static/dash/js/demo/chart-area-demo.js"></script>

<script>
  var chartLabels = [];
  var chartData = [];
  <c:forEach var = "list" items="${chart}"> //반복문 돌면서 push
      chartLabels.push("${list.date}");
      chartData.push(${list.total});
  </c:forEach>
  // Area Chart Example
  var ctx = document.getElementById("myAreaChart");
  var myLineChart = new Chart(ctx, {
    type: 'line',
    data: {
      labels: chartLabels,
      datasets: [{
        label: "이용자 수",
        lineTension: 0.3,
        backgroundColor: "rgba(78, 115, 223, 0.5)",
        borderColor: "rgba(78, 115, 223, 1)",
        pointRadius: 3,
        pointBackgroundColor: "rgba(78, 115, 223, 1)",
        pointBorderColor: "rgba(78, 115, 223, 1)",
        pointHoverRadius: 3,
        pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
        pointHoverBorderColor: "rgba(78, 115, 223, 1)",
        pointHitRadius: 10,
        pointBorderWidth: 2,
        data: chartData,
      }],
    },
    options: {
      maintainAspectRatio: false,
      layout: {
        padding: {
          left: 10,
          right: 25,
          top: 25,
          bottom: 0
        }
      },
      scales: {
        xAxes: [{
          time: {
            unit: 'date'
          },
          gridLines: {
            display: false,
            drawBorder: false
          },
          ticks: {
            maxTicksLimit: 7
          }
        }],
        yAxes: [{
          ticks: {
            maxTicksLimit: 5,
            padding: 10,
            // Include a dollar sign in the ticks
            callback: function(value, index, values) {
              return number_format(value) +'명';
            }
          },
          gridLines: {
            color: "rgb(234, 236, 244)",
            zeroLineColor: "rgb(234, 236, 244)",
            drawBorder: false,
            borderDash: [2],
            zeroLineBorderDash: [2]
          }
        }],
      },
      legend: {
        display: false
      },
      tooltips: {
        backgroundColor: "rgb(255,255,255)",
        bodyFontColor: "#858796",
        titleMarginBottom: 10,
        titleFontColor: '#6e707e',
        titleFontSize: 14,
        borderColor: '#dddfeb',
        borderWidth: 1,
        xPadding: 15,
        yPadding: 15,
        displayColors: false,
        intersect: false,
        mode: 'index',
        caretPadding: 10,
        callbacks: {
          label: function(tooltipItem, chart) {
            var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
            return datasetLabel + ': ' + number_format(tooltipItem.yLabel);
          }
        }
      }
    }
  });

</script>
<!-- body end -->
<%@ include file = "footer.jsp" %>

