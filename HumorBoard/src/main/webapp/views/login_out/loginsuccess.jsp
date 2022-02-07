<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    request.setCharacterEncoding("UTF-8");
    session.setAttribute("id",request.getParameter("memid"));
    String user=request.getParameter("memid");
%>
<script>
    alert("<%=user %>님 Log-In 되었습니다");
    location.href="main"
</script>