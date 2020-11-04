<%--
  Created by IntelliJ IDEA.
  User: CORSAIR
  Date: 2020-11-04
  Time: 오후 1:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="true" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script>
    alert('${msg}');
    location.href='<c:out value="${pageContext.request.contextPath}"/>${url}';
</script>
</body>
</html>
