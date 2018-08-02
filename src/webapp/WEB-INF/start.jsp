<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
            crossorigin="anonymous"></script>

</head>
<body>
<div class="container-fluid">
    <h4>All Students</h4>
    <div class="row">
        <div class="col-6">
            <c:if test="${!empty studentList}">
            <div class="table-responsive-sm">
                <table class="table table-sm table-bordered">
                    <thead>
                    <tr align="center" class="table-active">
                        <th>Id</th>
                        <th>Name</th>
                        <th>Surname</th>
                        <th>Phone</th>
                        <th>Remove</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${studentList}" var="student">
                        <tr align="center">
                            <td>${student.id}</td>
                            <td>${student.name}</td>
                            <td>${student.surName}</td>
                            <td>${student.phone}</td>
                            <td><a href="<c:url value='/remove/${student.id}'/>">Delete</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                </c:if>
                <h4>Add student</h4>
                <form action="/add">
                    <%--Name:<input type="text" name="name">--%>
                    <%--<br>--%>
                    <%--Surname:<input type="text" name="surName">--%>
                    <%--<br>--%>
                    <%--Phone:<input type="text" name="phone">--%>
                    <div class="form group">
                        <div class="col-6">
                            <label for="name" class="col-form-label-sm">Name:</label>
                            <input type="text" class="form-control col-form-label-sm" id="name" name="name"
                                   placeholder="Enter name">
                            <label for="surname" class="col-form-label-sm">Surname:</label>
                            <input type="text" class="form-control col-form-label-sm" id="surname" name="surName"
                                   placeholder="Enter surname">
                            <label for="phone" class="col-form-label-sm">Phone:</label>
                            <input type="text" class="form-control col-form-label-sm" id="phone" name="phone"
                                   placeholder="Enter phone">
                        </div>
                    </div>
                    <br>
                    <input class=" btn btn-outline-primary btn-sm" type="submit" value="Add Student">
                </form>
                <br>
                <h4>Get student by ID</h4>
                <form action="/getById">
                    <div class="form-group">
                        <div class="col-6">
                            <label for="id" class="col-form-label-sm">ID:</label>
                            <input type="ID" class="form-control col-form-label-sm" id="id" name="id"
                                   placeholder="Enter ID">
                        </div>
                    </div>
                    <%--ID:<input type="text" name="id">--%>
                    <input class=" btn btn-outline-primary btn-sm" type="submit" value="Enter ID">
                </form>
                <c:if test="${!empty stud}">
                    <table class="table table-bordered table-sm">
                        <thead>
                        <tr align="center" class="table-active">
                            <th>Id</th>
                            <th>Name</th>
                            <th>Surname</th>
                            <th>Phone</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr align="center">
                            <td>${stud.id}</td>
                            <td>${stud.name}</td>
                            <td>${stud.surName}</td>
                            <td>${stud.phone}</td>
                        </tr>
                        </tbody>
                    </table>
                </c:if>
            </div>
        </div>
    </div>
</div>
</body>
</html>
