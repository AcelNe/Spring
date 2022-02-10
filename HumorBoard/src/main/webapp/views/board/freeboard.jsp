<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 게시판 내용 영역? -->
<h2>Free Board</h2>
<table>
    <thead>
        <tr>
            <td>No</td>
            <td>Title</td>
            <td>Date</td>
            <td>Views</td>
        </tr>
    </thead>
    <tbody>
    <c:forEach items="${mainData}" var="dto" varStatus="no">
        <tr>
            <td>${no.index+1}</td>
            <td>${dto.title}</td>
            <td>${dto.date}</td>
            <td>${dto.views}</td>
        </tr>
    </c:forEach>
    </tbody>
    <tfoot>
        <tr>
            <td colspan="4"></td>
        </tr>
    </tfoot>
</table>