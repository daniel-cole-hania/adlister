<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Home on Grief Saver" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <% session.setAttribute( "currentPage", "/"); %>

    <div class="container text-center">
        <h1 class="text-warning index-heading">Grief Saver</h1>
        <h3>The future of connecting people to what they want.</h3>
        <hr class="hr-4">
        <main class="w-75 mx-auto pt-3">
            <h5 class="normie">Welcome to the AdLister! Feel free to browse the ads by viewing them all, or search for something specific
            at the search bar. If you want to create your own ad, register or login first. You'll be able to update them or
            delete at anytime - if your stuff doesn't sell first!</h5>

            <section class="row my-5 mx-auto">
                <a type="button" href="/ads" class="btn btn-warning mx-auto my-2"><h1 class="m-3">View Ads</h1></a>
                <a type="button" href="/login" class="btn btn-warning mx-auto my-2"><h1 class="m-3">Login</h1></a>
                <a type="button" href="/register" class="btn btn-warning mx-auto my-2"><h1 class="m-3">Register</h1></a>
                <a type="button" href="/faq" class="btn btn-warning mx-auto my-2"><h1 class="m-3">FAQ</h1></a>
            </section>

            <img src="css/peanuts-gang.gif" alt="peanuts gang!">
        </main>

    </div>
</body>
</html>
