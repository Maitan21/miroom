<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Scroll to top -->


<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!--find script-->

<script src="/static/dash/js/ruang-admin.min.js"></script>
<script src="/static/dash/vendor/chart.js/Chart.min.js"></script>
<script src="/static/dash/js/demo/chart-area-demo.js"></script>
<script src="/static/dash/vendor/jquery/jquery.min.js"></script>
<script src="/static/dash/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/static/dash/vendor/jquery-easing/jquery.easing.min.js"></script>
<!--<script src="/saatic/dash/js/ruang-admin.min.js"></script>-->
<!-- Page level plugins -->
<script src="/static/dash/vendor/datatables/jquery.dataTables.min.js"></script>
<script src="/static/dash/vendor/datatables/dataTables.bootstrap4.min.js"></script>

<!-- 맨뒤로 배치 안하면 안됨 -->
<script>
    $(document).ready(function () {
        $('#dataTable').DataTable(); // ID From dataTable
        $('#dataTableHover').DataTable( {
            "language": {
                "lengthMenu": "_MENU_ 개씩 보기",
                "info": "",
                "search": "검색어 : _INPUT_"
            }
        } ); // ID From dataTable with Hover
    });
</script>


</body>
</html>