<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Infomation</title>
<%
    String user=(String)session.getAttribute("id");
%>
</head>
<body>
    <!-- 상단 영역(배너, 메뉴바 등) -->
    <jsp:include page="../menuBar.jsp"></jsp:include>

    Name:OOO
    ID:<%=user %>
    <form action="mymain">
        PW: <input type="password" class="pw" id="mempw">
        PW(check): <input type="password" class="pw" id="pwCheck"><p id="pwCheckResult"></p>
        Tel.: 010-0000-0000
        <button type="submit">변경하기</button>
    </form>

    <!-- 하단 관리정보표시영역 -->
    <jsp:include page="../bottomInfo.jsp"></jsp:include>

    <script>
        $(".pw").change(function(){
            let pw=$("#mempw").val();
            let pwch=$("#pwCheck").val();
            let msg=$("#pwCheckResult");
            if(pw=="" || pwch==""){
                msg.text("");
            }else if(pw==pwch){
                msg.text("PW 일치");
                msg.css("color","blue");
            }else{
                msg.text("PW 불일치");
                msg.css("color","red");
            }
        });        
    </script>
</body>
</html>