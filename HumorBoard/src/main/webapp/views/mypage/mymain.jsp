<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>MyPage Main</title>
</head>
<body>
<%
    String user=(String)session.getAttribute("id");
%>
    <!-- 상단 영역(배너, 메뉴바 등) -->
    <jsp:include page="../menuBar.jsp"></jsp:include>

    <h3>MyPage</h3>
    <div class="myBox">
        <h4>MyBoard</h4>
        no. &nbsp;&nbsp; title &nbsp;&nbsp; date &nbsp;&nbsp; board
    </div>

    <div class="myBox">
        <h4>My Info</h4>
        Name: ㅇㅇㅇ
        ID: <%=user %>
        <button onclick="location.href='myInfo'">Change PW</button>
        <button onclick="leaveBoard();">Leave Board</button>
    </div>

    <!-- 하단 관리정보표시영역 -->
    <jsp:include page="../bottomInfo.jsp"></jsp:include>

    <script>
        //confirm code(계정 삭제)
        function leaveBoard(){
            let msg="계정을 삭제해도 게시글은 삭제되지 않습니다.\n계정을 삭제하시겠습니까?"
            if(confirm(msg)){
                window.location.replace("leaveAlert");
            }else{
                return;
            }
        }
    </script>
</body>
</html>