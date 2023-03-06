<%@ page import="models.Tasks" %><%--
  Created by IntelliJ IDEA.
  User: w2
  Date: 05.03.2023
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Details</title>
  <%@include file="vendor/head.jsp"%>
</head>
<body>
<%@include file="vendor/navbar.jsp"%>
<div class="container">
    <div class="row mt-5">
        <div class="col-sm-12">
            <%
                Tasks task = (Tasks)request.getAttribute("task");
                if(task!=null){
                    %>
            <form action="/Update?id=<%=task.getId()%>" method="post">
                <div>

                    <label class="col-form-label">Наименование:</label>
                    <input type="text" class="form-control" name="name" value="<%=task.getName()%>">
                </div>
                <div>
                    <label class="col-form-label">Описание:</label>
                    <textarea class="form-control" name="description" ><%=task.getDescription()%></textarea>
                </div>
                <div>
                    <label class="col-form-label">Крайний срок:</label>
                    <input type="date" class="form-control" name="deadlineDate" value="<%=task.getDeadlineDate()%>">

                </div>
                <div>
                    <label class="col-form-label">Выполнено:</label>

                    <select class="form-select" name="status">
                        <option selected>Да</option>
                        <option>Нет</option>
                    </select>
                </div>
                <div class="mt-3">
                    <button type="submit" class="btn btn-success">Cохранить</button>
                    <a href="/Delete?id=<%=task.getId()%>" class="btn btn-warning" > Удалить</a>
<%--                    <button type="button" class="btn btn-danger">Удалить</button>--%>
                </div>
            </form>
            <%
                }
            %>
        </div>
    </div>
</div>
</body>
</html>
