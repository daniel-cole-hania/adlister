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
    </div>

    <div class="col-md-6">
        <h1>Contact:</h1>
        <h2><c:out value="${user.username}" /></h2>
        <h3><c:out value="${user.email}" /></h3>
    </div>
</div>
</body>
</html>