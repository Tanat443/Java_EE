<%--
  Created by IntelliJ IDEA.
  User: w2
  Date: 10.03.2023
  Time: 21:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign In</title>
    <%@include file="vendor/head.jsp"%>
</head>
<body>
<div class="container" style="max-width: 960px">
<%@include file="vendor/navbar.jsp"%>
    <%
        String fail = request.getParameter("fail");
        if(fail!=null){
    %>
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        Incorrect <b>email</b> or <b>password</b>!
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    <%}%>
    <form action="/SignIn" method="post">
        <div class="form-header py-3">
            <h5 class="my-0 fw-normal ">Login Page</h5>
        </div>
        <div class="form-floating mb-3">
            <input type="email" class="form-control" id="floatingInput" name="email" placeholder="name@example.com">
            <label for="floatingInput">Email address</label>
        </div>
        <div class="form-floating">
            <input type="password" class="form-control" id="floatingPassword" name="password" placeholder="Password">
            <label for="floatingPassword">Password</label>
        </div>
        <button class="btn  btn-success mt-3">Login</button>
    </form>
</div>
</body>
</html>
