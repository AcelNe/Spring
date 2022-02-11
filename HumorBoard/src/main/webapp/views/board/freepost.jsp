<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 게시판 내용 영역? -->
<h2>Free Board Post Page</h2>
Title &nbsp;&nbsp;${mainData.title}
views &nbsp;&nbsp;${mainData.views}<br>
writer&nbsp;&nbsp;${mainData.writer}
Date &nbsp;&nbsp;&nbsp;${mainData.date}<br>
<hr>
<div name="boardContents" style="border:1px solid;">
    ${mainData.contents}
</div>
