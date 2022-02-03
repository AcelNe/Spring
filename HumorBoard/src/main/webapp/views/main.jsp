<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>MainPage</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
    <h1> Login </h1>
    
    <form action="loginsuccess" method="post">
    <div>
        ID: <input type="text" name="memid" id="memid">
        PW: <input type="password" name="mempw" id="mempw">
    </div>
    <div>
        <!-- submit은 form안에 있어야 form이 적용된다 -->
        <input type="submit" value="Log-in">
        <button id="ajaxB">ajax</button>
    </div>
    </form>

    <script>
        $("#ajaxB").on("click",function(){
            let msg=$("#memid").val();

            $ajax({
                url:"successLogin.jsp",
                method:"post",
                data:"id: "+msg,//parameter 전달
                success:function(responseData){
                    console.log(responseData);
                }
            });
        });
    </script>
</body>
</html>