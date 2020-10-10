<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
      <!--Row-->
  
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
          <!---Container Fluid-->
        </div>

<footer class="sticky-footer bg-white">
    <div class="container my-auto">
      <div class="copyright text-center my-auto">
        <span>©copyright &copy; <script> document.write(new Date().getFullYear()); </script> - developed by
          <b><a href="https://github.com/Maitan21" target="_blank">Maitan21</a></b>
        </span>
      </div>
    </div>
  </footer>
  <!-- Footer -->
</div>

</div>

<!-- Scroll to top -->
<a class="scroll-to-top rounded" href="#page-top">
<i class="fas fa-angle-up"></i>
</a>

<script src="/static/dash/vendor/jquery/jquery.min.js"></script>
<script src="/static/dash/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/static/dash/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="/static/dash/js/ruang-admin.min.js"></script>
<script src="/static/dash/vendor/chart.js/Chart.min.js"></script>
<script src="/static/dash/js/demo/chart-area-demo.js"></script>
</body>

</html>