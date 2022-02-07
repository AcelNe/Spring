<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>
<body>
    <form action="loginsuccess" method="post"><!--loginsuccess를 main으로 변경-->
        <div>
            ID: <input type="text" name="memid" id="memid"><br>
            PW: <input type="password" name="mempw" id="mempw">
        </div>
        <div>
            <!-- submit은 form안에 있어야 form이 적용된다 -->
            <input type="submit" value="Log-in">
        </div>
    </form>
    <a href=""><div>Join</div></a>

    <!-- 하단 영역 -->
    <jsp:include page="../bottomInfo.jsp"></jsp:include>
</body>
</html>