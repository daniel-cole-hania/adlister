<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<h1 class="page-heading text-warning text-center">Welcome, ${sessionScope.user.username}!</h1>

<main class="container mx-auto">
    <article class="card border-warning w-75 mx-auto">
        <div class="card-body">
            <h2 class="card-title text-success">Your Info:</h2>
            <h6 class="d-inline">Username: </h6><p class="card-text normie">${sessionScope.user.username}</p>
            <h6 class="d-inline">Email: </h6><p class="card-text normie">${sessionScope.user.email}</p>
            <a href="editProfile" class="btn btn-warning btn-lg" role="button" aria-pressed="true">Edit
                Profile</a>
            <a href="deleteProfile" class="btn btn-warning btn-lg" role="button" aria-pressed="true">Delete
                Profile</a>
        </div>
    </article>
    <article class="card border-warning w-75 mx-auto mt-3">
        <div class="card-body">
            <h2 class="card-title text-success">Your Ads:</h2>
            <c:forEach var="ad" items="${ads}">
                <h4 class="card-title">
                    <a class="text-danger" href="/ads/show?id=${ad.id}">${ad.title}</a>
                </h4>
            </c:forEach>
        </div>
    </article>
</main>

</body>
</html>
