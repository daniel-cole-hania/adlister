<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
    <div class="col-md-6">
        <h1><c:out value="${ad.title}" /></h1>
        <h4><c:out value="${ad.dateCreated}" /></h4>
        <p><c:out value="${ad.description}" /></p>

        <form action="/ads/show?id=${ad.id}" method="POST">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text" value ="${ad.title}">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control">${ad.description}</textarea>
            </div>

            <input type="submit" class="btn btn-primary" name="submit" value="Save">
            <input type="submit" class="btn btn-primary" name="submit" value="Delete">

            <input type="hidden" name="id" value="${ad.id}">
        </form>

    </div>

    <div class="col-md-6">
        <h1>Contact:</h1>
        <h2><c:out value="${user.username}" /></h2>
        <h3><c:out value="${user.email}" /></h3>
    </div>
</div>
</body>
</html>