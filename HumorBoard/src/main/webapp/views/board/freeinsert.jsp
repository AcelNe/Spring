<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<!-- 게시판 내용 영역? -->
<h2>Free Board Insert</h2>
<form action="insertAlert">
    Title &nbsp;&nbsp;
    <input type="text" name="title" id="title">

    <button type="submit">게시하기</button>
</form>