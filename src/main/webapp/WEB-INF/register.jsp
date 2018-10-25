<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <h1 class="page-heading text-warning text-center">Create a new Account</h1>

    <main class="container mx-auto">
        <article class="card border-warning w-75 mx-auto">
            <div class="card-body">
                <h2 class="card-title text-success">Enter your info below:</h2>
                <h5 class="card-title">If you already have an account, you can login <a class="text-danger" href="/login">here</a>.</h5>
                <hr class="w-100">
                <c:if test="${sessionScope.message != null}">
                    <aside class="alert alert-danger" role="alert">
                            ${sessionScope.message}
                    </aside>
                </c:if>
                <form action="/register" method="post">
                    <div class="form-group">
                        <label for="username">Username</label>
                        <input id="username" name="username" class="form-control" type="text" value="${sessionScope.username}">
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input id="email" name="email" class="form-control" type="text" value="${sessionScope.email}">
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input id="password" name="password" class="form-control" type="password">
                    </div>
                    <div class="form-group">
                        <label for="confirm_password">Confirm Password</label>
                        <input id="confirm_password" name="confirm_password" class="form-control" type="password">
                    </div>
                    <input type="submit" class="btn btn-warning nuts btn-block" value="Register">
                </form>
            </div>
        </article>

        <%--<img sr--%>
    </main>
</body>
<%
    session.removeAttribute("message");
    session.removeAttribute("username");
    session.removeAttribute("email");
%>
</html>
