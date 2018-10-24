<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
    <div class="container">
        <h1>Create a new Ad</h1>
        <form action="/ads/create" method="post">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text" value="${title}">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text" vlue="${description}"></textarea>
            </div>

            <h5>Choose categories</h5>
            <div class="form-check form-check-inline">
                <c:forEach items="${categories}" var="category">
                <input class="form-check-input" type="checkbox" id="inlineCheckbox1" name="id" value="${category.id}">


                    <label class="form-check-label" for="inlineCheckbox1"><c:out value="${category.name}"/></label>
                </c:forEach>
            </div>

            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
</body>
</html>
