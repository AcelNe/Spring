<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>MainPage</title>
    <script src="../js/jquery-3.6.0.js"></script>
    <link rel="stylesheet" href="../css/main.css">
<%  
    String user=null;
    if(session.getAttribute("id")!=null){
        user=(String)session.getAttribute("id");
        System.out.println(user);
    }else{
        user="blank";
        System.out.println(user);
    }
%>
</head>
<body>
<script>
    console.log("<%=user%>");
</script>

    <!-- 상단 영역(배너, 메뉴바 등) -->
    <jsp:include page="menuBar.jsp"></jsp:include>

    <!-- 자유 게시판 영역 -->
    <div id="freeArea" class="boardArea">
        <a href="board/freeboard"><h4>자유게시판</h4></a>
            <div>
                <table>
                    <thead>
                        <tr>
                            <td>No</td>
                            <td>Title</td>
                            <td>Views</td>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${mainData}" var="dto" varStatus="no">
                        <tr>
                            <td>${no.index+1}</td>
                            <td>${dto.title}</td>
                            <td>${dto.views}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
    </div>

    <!-- Login영역 session id가 없을 때-->
    <div id="loginArea">
        <a href="login"><div>Login</div></a>
        <a href="join/joinForm"><div>Join</div></a>
    </div>
    <!-- userinfo 영역 session id가 있을 때-->
    <div id="uinfoArea">
        <%=user %>님
        <a href="mypage/mymain">MyPage</a>
        <a href="">MyBoard</a>
        <a href="logout">Log-out</a>
    </div>

    <!-- 공지사항 영역 -->
    <div id="noticeArea" class="boardArea">
        <a href=""><h4>공지사항</h4></a>
            <div>
                <a href="">title</a> date
            </div>
    </div>

    <!-- 회원게시판 영역 -->
    <div id="memberArea" class="boardArea">
        <a href=""><h4>회원게시판</h4></a>
            <div>
                <a href="">title</a> name
            </div>
    </div>

    <!-- 하단 관리정보표시영역 -->
    <jsp:include page="bottomInfo.jsp"></jsp:include>

    <script>
        /*
        1. id, pw 빈칸 확인
        2. 저장된 id, pw인지 확인
        submit해서 창 새로고침, id님 환영합니다 문구 출력
        */
    </script>
</body>
</html>