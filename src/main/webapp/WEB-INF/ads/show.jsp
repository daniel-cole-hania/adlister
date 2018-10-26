<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="${ad.title} on Grief Saver"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<h1 class="page-heading text-warning text-center">${ad.title}</h1>

<div class="container row mx-auto">

<%--displays ad--%>
    <section class="col">
        <article class="card border-warning">
            <div class="card-body">
                <h2 class="card-title text-success">Info:</h2>
                <h6 class="card-subtitle mb-2 text-muted normie">${ad.dateCreated}</h6>
                <p class="card-text normie">${ad.description}</p>
            </div>
            <ul class="list-group list-group-flush">
                <li class="list-group-item text-danger">${ad.categories}</li>

            </ul>
        </article>

        <c:if test="${sessionScope.user.id == ad.userId}">
    <%--form for editing ad--%>
        <article class="card border-warning my-3">
            <div class="card-body">
                <h2 class="card-title text-success">Edit:</h2>
                <form action="/ads/show?id=${ad.id}" method="POST">
                    <div class="form-group">
                        <label for="title">Title</label>
                        <input id="title" name="title" class="form-control normie" type="text" value="${ad.title}">
                    </div>
                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea id="description" name="description" class="form-control normie">${ad.description}</textarea>
                    </div>

                    <input type="submit" class="btn btn-warning btn-lg nuts" name="submit" value="Save">
                    <input type="submit" class="btn btn-warning btn-lg nuts" name="submit" value="Delete">

                    <input type="hidden" name="id" value="${ad.id}">
                </form>
            </div>
        </article>
        </c:if>


    </section>

    <%--section to display user info--%>
    <section class="col">
        <article class="card border-warning">
            <div class="card-body">
                <h2 class="card-title text-success">Contact:</h2>
                <h3 class="card-title d-inline"><c:out value="${user.username}"/></h3>
                <c:if test="${sessionScope.user.id == ad.userId}">
                    <h4 class="d-inline"><span class="text-danger">(you)</span></h4>
                </c:if>
                <p class="card-text normie"><c:out value="${user.email}"/></p>
            </div>
        </article>
    </section>
</div>

</body>
</html>