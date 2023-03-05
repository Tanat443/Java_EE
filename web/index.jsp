<%@ page import="db.DbManager" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="models.Footballer" %>
<%@ page import="models.Tasks" %><%--
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
    <title>Task Manager</title>
    <%@include file="vendor/head.jsp"%>
</head>
<body>
<%@include file="vendor/navbar.jsp"%>
<div class="container">
    <div class="row mt-5">
        <div class="col-sm-12">
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                + Добавить задание
            </button>
            <table class="table table-hover mt-3">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Наименование</th>
                        <th>Крайний срок</th>
                        <th>Выполнено</th>
                        <th>Детали</th>

                    </tr>
                </thead>
                <tbody>
                <% ArrayList<Tasks> tasks = (ArrayList<Tasks>) request.getAttribute("tasks");
                    for (Tasks task: tasks ) { %>
                <tr>
                    <td><%=task.getId()%></td>
                    <td><%=task.getName()%></td>
                    <td><%=task.getDeadlineDate()%></td>
                    <% if(task.isStatus()==true){ %>
                    <td>Да</td>
                    <% }else { %>
                    <td>Нет</td>
                    <%} %>

                    <td>

                        <a href="/Details?id=<%=task.getId()%>" class="btn btn-primary">Детали</a>
                    </td>
                </tr>
                <% }%>

                </tbody>
            </table>


            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="exampleModalLabel">Новое задание</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form action="/AddTask" method="post">
                                <div>
                                    <label class="col-form-label">Наименование:</label>
                                    <input type="text" class="form-control" name="name" placeholder="Наименование...">
                                </div>
                                <div>
                                    <label class="col-form-label">Описание:</label>
                                    <textarea class="form-control" name="description" placeholder="Описание..."></textarea>
                                </div>
                                <div>
                                    <label class="col-form-label">Крайний срок:</label>
                                    <input type="date" class="form-control" name="deadlineDate" pattern="\d{2}\.\d{2}\.\d{4}">

                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
                                    <button type="submit" class="btn btn-primary">Добавить</button>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <table>
        <tbody>

        </tbody>
    </table>
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
