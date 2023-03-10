<%@ page import="db.DbManager" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="models.Tasks" %>
<%@ page import="models.Item" %><%--
  Created by IntelliJ IDEA.
  User: w2
  Date: 04.03.2023
  Time: 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Bitlab Shop</title>
    <%@include file="vendor/head.jsp"%>
</head>
<body>
<div class="container" style="max-width: 960px">
    <%@include file="vendor/navbar.jsp"%>
    <div class="px-4 py-1 my-4 text-center">
        <h3 class="display-6 fw-bold">Welcome to BITLAB SHOP</h3>
        <div class="col-lg-6 mx-auto">
            <p class="lead mb-2">Electronic devices with high quality and service</p>
        </div>
    </div>
    <div class="row row-cols-1 row-cols-md-3 mb-3 text-center justify-content-md-center">
        <% ArrayList<Item> items = (ArrayList<Item>) request.getAttribute("items");
        for ( Item item : items){
        %><div class="col px-4 ">
        <div class="card mb-4 rounded-3 shadow-lg">
            <div class="card-header py-3">
                <h5 class="my-0 fw-normal "><%=item.getName()%></h5>
            </div>
            <div class="card-body">
                <h1 class="card-title pricing-card-title text-success">$<%=item.getPrice()%></h1>
                <ul class="list-unstyled mt-3 mb-4 ">
                    <li><%=item.getDescription()%></li>
<%--                    <li>10 users included</li>--%>
<%--                    <li>2 GB of storage</li>--%>
<%--                    <li>Email support</li>--%>
<%--                    <li>Help center access</li>--%>
                </ul>
                <button type="button" class="w-100 btn btn-lg btn-success">Buy now</button>
            </div>
        </div>
    </div>
        <%}%>
    </div>
</div>
</body>
<script>
    const myModal = document.getElementById('myModal')
    const myInput = document.getElementById('myInput')

    myModal.addEventListener('shown.bs.modal', () => {
        myInput.focus()
    })
</script>
</html>
