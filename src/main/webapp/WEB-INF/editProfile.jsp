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
    <section class="mx-auto row">
        <aside class="col-3 mt-5 pt-5">
            <img src="../css/cool-snoopy.png" alt="change yourself!" width="75%">
        </aside>
        <article class="card border-warning w-75 col-9">
            <div class="card-body">
                <h2 class="card-title text-success">Enter any details you want to change:</h2>
                <h5 class="card-title">You will need to enter and confirm your old or new password.</h5>
                <hr>
                <form action="/editProfile" method="POST" class="d-inline">
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
                               value="">
                    </div>
                    <div class="form-group">
                        <label for="confirm_password">Confirm Password</label>
                        <input id="confirm_password" name="confirm_password" class="form-control" type="password">
                    </div>
                    <input type="submit" class="btn btn-warning nuts d-inline" value="Update Profile">
                </form >
                <form action="/profile" method="get" class="d-inline">
                    <input type="submit" class="btn btn-warning nuts" value="Back to Profile">
                </form>
            </div>
        </article>
    </section>
</div>
</body>
</html>