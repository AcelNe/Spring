<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Join</title>
</head>
<body>
    <form action="login">
        ID: <input type="text" name="" id="memid">
        PW: <input type="password" name="" id="mempw">
        Name: <input type="text" name="" id="nickName">
        Tel: <input type="text" name="" id="tel">&nbsp;&nbsp;<button>인증하기</button>
        <input type="submit" value="가입하기">
    </form>

    <!-- 하단 영역 -->
    <jsp:include page="../bottomInfo.jsp"></jsp:include>
</body>
</html>