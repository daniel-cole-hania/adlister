<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">

    <c:choose>
        <c:when test="${not empty search}">
            <h1>Here is what we found for you!</h1>
        </c:when>
        <c:otherwise>
            <h1>Here Are all the ads!</h1>
        </c:otherwise>
    </c:choose>


    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2><a href="/ads/show?id=${ad.id}">${ad.title}</a></h2>
            <p>${fn:substring(ad.description, 0, 50)}...</p>
        </div>
    </c:forEach>
</div>

</body>
</html>
