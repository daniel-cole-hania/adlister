<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Adlister ~ Create an Ad"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>


<h1 class="page-heading text-warning text-center">Create a new Ad:</h1>

<main class="container mx-auto">
    <article class="card border-warning w-75 mx-auto">
        <div class="card-body">
            <h2 class="card-title text-success">Please enter the ads details:</h2>
            <h5 class="card-title">Your ad will need a title, description, and categories.</h5>
            <hr>
            <c:if test="${sessionScope.message != null}">
                <aside class="alert alert-danger" role="alert">
                        ${sessionScope.message}
                </aside>
            </c:if>

            <form action="/ads/create" method="post">
                <div class="form-group">
                    <label for="title">Title</label>
                    <input id="title" name="title" class="form-control" type="text" value="${sessionScope.title}">
                </div>
                <div class="form-group">
                    <label for="description">Description</label>
                    <textarea id="description" name="description" class="form-control" type="text">${sessionScope.description}</textarea>
                </div>

                <h5>Choose categories</h5>
                <div class="form-check form-check-inline">
                    <c:forEach items="${categories}" var="category">
                        <input class="form-check-input normie ml-1" type="checkbox" id="${category.name}" name="id"
                               value="${category.id}">
                        <label class="form-check-label text-danger normie mr-2" for="${category.name}"><c:out
                                value="${category.name}"/></label>
                    </c:forEach>
                </div>

                <input type="submit" class="btn btn-block btn-warning my-2 nuts" value="Create Ad">
            </form>
        </div>
    </article>
    </div>


</main>

</body>
<%
    session.removeAttribute("message");
    session.removeAttribute("title");
    session.removeAttribute("description");
%>
</html>
