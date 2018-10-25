<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Adlister ~ Login"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<h1 class="page-heading text-warning text-center">Log In</h1>

<main class="container mx-auto">
    <article class="card border-warning w-75 mx-auto">
        <div class="card-body">
            <h2 class="card-title text-success">Please enter your username and password:</h2>
            <h5 class="card-title">If you don't have an account, you can register
                <a class="text-danger" href="/register">here</a>.</h5>
            <hr>
            <c:if test="${sessionScope.message != null}">
                <aside class="alert alert-danger" role="alert">
                        ${sessionScope.message}
                </aside>
            </c:if>
            <form action="/login" method="POST">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input id="username" name="username" class="form-control" type="text" value="${sessionScope.username}">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input id="password" name="password" class="form-control" type="password">
                </div>
                <input type="submit" class="btn btn-warning btn-block nuts" value="Log In">
            </form>
        </div>
    </article>
</main>
</body>
<%
    session.removeAttribute("message");
    session.removeAttribute("username");
%>
</html>
