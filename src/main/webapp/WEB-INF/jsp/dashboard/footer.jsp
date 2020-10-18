<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Scroll to top -->


<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!--find script-->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/static/dash/js/ruang-admin.min.js"></script>
<!--<script src="/static/dash/vendor/jquery/jquery.min.js"></script>-->
<script src="/static/dash/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/static/dash/vendor/jquery-easing/jquery.easing.min.js"></script>
<!--<script src="/saatic/dash/js/ruang-admin.min.js"></script>-->
<!-- Page level plugins -->
<script src="/static/dash/vendor/select2/dist/js/select2.min.js"></script>
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

        var select = $('select[multiple]');
        var options = select.find('option');

        var div = $('<div />').addClass('selectMultiple');
        var active = $('<div />');
        var list = $('<ul />');
        var placeholder = select.data('placeholder');

        var span = $('<span />').text(placeholder).appendTo(active);

        options.each(function() {
            var text = $(this).text();
            if($(this).is(':selected')) {
                active.append($('<a />').html('<em>' + text + '</em><i></i>'));
                span.addClass('hide');
            } else {
                list.append($('<li />').html(text));
            }
        });

        active.append($('<div />').addClass('arrow'));
        div.append(active).append(list);

        select.wrap(div);

        $(document).on('click', '.selectMultiple ul li', function(e) {
            var select = $(this).parent().parent();
            var li = $(this);
            if(!select.hasClass('clicked')) {
                select.addClass('clicked');
                li.prev().addClass('beforeRemove');
                li.next().addClass('afterRemove');
                li.addClass('remove');
                var a = $('<a />').addClass('notShown').html('<em>' + li.text() + '</em><i></i>').hide().appendTo(select.children('div'));
                a.slideDown(400, function() {
                    setTimeout(function() {
                        a.addClass('shown');
                        select.children('div').children('span').addClass('hide');
                        select.find('option:contains(' + li.text() + ')').prop('selected', true);
                    }, 500);
                });
                setTimeout(function() {
                    if(li.prev().is(':last-child')) {
                        li.prev().removeClass('beforeRemove');
                    }
                    if(li.next().is(':first-child')) {
                        li.next().removeClass('afterRemove');
                    }
                    setTimeout(function() {
                        li.prev().removeClass('beforeRemove');
                        li.next().removeClass('afterRemove');
                    }, 200);

                    li.slideUp(400, function() {
                        li.remove();
                        select.removeClass('clicked');
                    });
                }, 600);
            }
        });

        $(document).on('click', '.selectMultiple > div a', function(e) {
            var select = $(this).parent().parent();
            var self = $(this);
            self.removeClass().addClass('remove');
            select.addClass('open');
            setTimeout(function() {
                self.addClass('disappear');
                setTimeout(function() {
                    self.animate({
                        width: 0,
                        height: 0,
                        padding: 0,
                        margin: 0
                    }, 300, function() {
                        var li = $('<li />').text(self.children('em').text()).addClass('notShown').appendTo(select.find('ul'));
                        li.slideDown(400, function() {
                            li.addClass('show');
                            setTimeout(function() {
                                select.find('option:contains(' + self.children('em').text() + ')').prop('selected', false);
                                if(!select.find('option:selected').length) {
                                    select.children('div').children('span').removeClass('hide');
                                }
                                li.removeClass();
                            }, 400);
                        });
                        self.remove();
                    })
                }, 300);
            }, 400);
        });

        $(document).on('click', '.selectMultiple > div .arrow, .selectMultiple > div span', function(e) {
            $(this).parent().parent().toggleClass('open');
        });
    });
</script>


</body>
</html>