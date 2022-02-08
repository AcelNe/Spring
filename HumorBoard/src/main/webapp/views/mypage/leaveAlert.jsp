<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    session.invalidate();
%>
<script>
    alert('계정이 삭제되었습니다.');
    location.href="../main"
</script>