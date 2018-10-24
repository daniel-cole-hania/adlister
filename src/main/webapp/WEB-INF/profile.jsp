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

<div class="container">
    <div class="row">
        <div class="col-8">
        <h1>Welcome, ${sessionScope.user.username}!</h1>

        <c:forEach var="ad" items="${ads}">
            <div>
                <h2><a href="/ads/show?id=${ad.id}">${ad.title}</a></h2>
            </div>
        </c:forEach>
        </div>

        <div class="col-4 ">
            <div class="card">
                <h5 class="card-header">Edit your profile</h5>
                <div class="card-body">
                    
                    <a href="#" class="btn btn-primary">Submit</a>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
