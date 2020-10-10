<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "header.jsp" %>
<!-- Topbar -->
    
        <!-- 여기서 폼 메인-->
        <!-- Container Fluid-->
        <div class="container-fluid" id="container-wrapper">
            <div class="d-sm-flex align-items-center justify-content-between mb-4">
              <h1 class="h3 mb-0 text-gray-800">대시보드</h1>
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="../../../../../../../../WorkSpace/miroom/miroom/src/main/webapp/WEB-INF/views/dash">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">대시보드</li>
              </ol>
            </div>
  
            <div class="row mb-3">
  
  
              <!-- 총 회의실 -->
              <div class="col-xl-3 col-md-6 mb-4">
                <div class="card h-100">
                  <div class="card-body">
                    <div class="row align-items-center">
                      <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-uppercase mb-1">총 회의실</div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800">No counting</div>
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
                        <div class="text-xs font-weight-bold text-uppercase mb-1"> 이용가능 회의실</div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800">No counting</div>
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
                        <div class="text-xs font-weight-bold text-uppercase mb-1">예약된 회의실</div>
                        <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">No counting</div>
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
                        <div class="text-xs font-weight-bold text-uppercase mb-1">오늘 이용자 수 </div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800">No Counting</div>
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
                    <a class="m-0 float-right btn btn-danger btn-sm" href="#">View More <i
                        class="fas fa-chevron-right"></i></a>
                  </div>
                  <div class="table-responsive">
                    <table class="table align-items-center table-flush">
                      <thead class="thead-light">
                        <tr>
                          <th>회의실</th>
                          <th>이용자 / 예약자</th>
                          <th>이용시간</th>
                          <th>상태</th>
                          <th>Detail</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td><a href="#">회의실 1</a></td>
                          <td>조윤상</td>
                          <td>14 : 00 ~ 16 : 00</td>
                          <td><span class="badge badge-success">이용중</span></td>
                          <td><a href="#" class="btn btn-sm btn-primary">Detail</a></td>
                        </tr>
                        <tr>
                          <td><a href="#">회의실 2</a></td>
                          <td>박준수</td>
                          <td>13 : 00 ~ 14 : 00</td>
                          <td><span class="badge badge-warning">예약됨</span></td>
                          <td><a href="#" class="btn btn-sm btn-primary">Detail</a></td>
                        </tr>
                        <tr>
                          <td><a href="#">회의실3</a></td>
                          <td>강희민</td>
                          <td>09 : 00 ~ 10 : 00</td>
                          <td><span class="badge badge-danger">초과됨</span></td>
                          <td><a href="#" class="btn btn-sm btn-primary">Detail</a></td>
                        </tr>
                        <tr>
                          <td><a href="#">회의실4</a></td>
                          <td>강승우</td>
                          <td> - </td>
                          <td><span class="badge badge-info">비어있음</span></td>
                          <td><a href="#" class="btn btn-sm btn-primary">Detail</a></td>
                        </tr>
                        
                      </tbody>
                    </table>
                  </div>
                  <div class="card-footer"></div>
                </div>
              </div>
              
      
        <!-- Footer -->
<%@ include file = "footer.jsp" %>
