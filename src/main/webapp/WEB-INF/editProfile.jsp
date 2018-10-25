<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit Your Profile on Grief Saver"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<h1 class="page-heading text-warning text-center">Edit Your Profile</h1>

<div class="container mx-auto">
    <%--section to display user info--%>
    <section class="mx-auto">
        <article class="card border-warning w-75 mx-auto">
            <div class="card-body">
                <h2 class="card-title text-success">Enter any details you want to change:</h2>
                <h5 class="card-title">You will need to enter and confirm your old or new password.</h5>
                <hr>
                <form action="/editProfile" method="POST">
                    <div class="form-group">
                        <label for="username">username</label>
                        <input id="username" name="username" class="form-control" type="text" value="${user.username}">
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input id="email" name="email" class="form-control" type="text" value="${user.email}">
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input id="password" name="password" class="form-control" type="password"
                               value="${user.password}">
                    </div>
                    <div class="form-group">
                        <label for="confirm_password">Confirm Password</label>
                        <input id="confirm_password" name="confirm_password" class="form-control" type="password">
                    </div>
                    <input type="submit" class="btn btn-warning btn-block nuts" value="Update Profile">
                </form>
            </div>
        </article>
    </section>
</div>
</body>
</html>