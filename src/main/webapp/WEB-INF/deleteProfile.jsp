<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit Your Profile"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">
    <div id="content">
        <h3>Are you sure you want to delete your profile?</h3>
        <form action="/editProfile" method="POST">
            
            <input type="submit" class="btn btn-primary btn-block">
        </form>
    </div>
</div>
</body>
</html>