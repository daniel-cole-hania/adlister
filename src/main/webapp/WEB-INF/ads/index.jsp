<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Adlister ~ All Ads"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">

    <c:choose>
        <c:when test="${not empty search}">
            <h1 class="page-heading text-warning text-center">Here is what we found:</h1>
        </c:when>
        <c:otherwise>
            <h1 class="page-heading text-warning text-center">All listed ads:</h1>

            <div class="text-center">
                <form action="/ads">
                    <div class="form-check form-check-inline">
                        <c:forEach items="${categories}" var="category">
                            <input class="form-check-input" type="radio" name="id" id="inlineRadio1"
                                   value="${category.id}">
                            <label class="form-check-label" for="inlineRadio1"><c:out value="${category.name}"/></label>
                        </c:forEach>
                    </div>

                    <br>
                    <input type="submit" class="btn btn btn-primary" value="Show ads in this category">
                </form>
            </div>
        </c:otherwise>
    </c:choose>

    <main class="card-columns">
        <c:forEach var="ad" items="${ads}">
            <article class="card border-warning">
                <div class="card-body">
                    <h4 class="card-title text-center">
                        <a class="text-success" href="/ads/show?id=${ad.id}">
                                ${ad.title}
                        </a>
                    </h4>
                    <h6 class="card-subtitle mb-2 text-muted normie">${ad.dateCreated}</h6>
                    <p class="card-text normie">${fn:substring(ad.description, 0, 50)}...</p>
                </div>
                <ul class="list-group list-group-flush">

                    <li class="list-group-item categories text-danger">${ad.categories}</li>
                </ul>
            </article>
        </c:forEach>
    </main>
</div>
</body>
</html>
