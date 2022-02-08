<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
<body>
    <!-- 상단 영역(배너, 메뉴바 등) -->
    <jsp:include page="menuBar.jsp"></jsp:include>

    <!-- 실제 페이지 -->
    <jsp:include page="${cate}/${urlDTO.service}.jsp"></jsp:include>

    <!-- 하단 관리정보표시영역 -->
    <jsp:include page="bottomInfo.jsp"></jsp:include>
</body>
</html>