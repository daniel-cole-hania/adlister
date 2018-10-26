<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Delete Your Profile on Grief Saver"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>


<h1 class="page-heading text-warning text-center">Delete Your Profile</h1>

<main class="container mx-auto">
    <article class="card border-warning w-75 mx-auto">
        <div class="card-body">
            <h2 class="card-title text-success">Are you sure you want to leave forever?</h2>
            <h5 class="card-title normie mb-4">Absence makes the heart grow fonder, but it sure makes the rest of you
                lonely.</h5>
            <form action="/deleteProfile" method="POST" class="d-inline">
                <input type="submit" class="btn btn-warning btn-lg nuts" value="Delete my profile" name="">
            </form>
            <form action="/profile" method="GET" class="d-inline">
                <input type="submit" class="btn btn-warning btn-lg nuts" value="JK, Back to Profile" name="">
            </form>
        </div>
    </article>
</main>
</body>
</html>