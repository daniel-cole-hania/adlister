<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="AdLister" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container text-center">
        <h1 class="text-warning page-heading">AdLister ~ Home</h1>
        <h3>The future of connecting people to what they want.</h3>
        <hr class="hr-4">
        <main class="w-75 mx-auto py-3">
            <h5>Welcome to the AdLister! Feel free to browse the ads by viewing them all, or search for something specific
            at the search bar. If you want to create your own ad, register or login first. You'll be able to update them or
            delete at anytime - if your stuff doesn't sell first!</h5>

            <section class="row my-5 mx-auto">

                <article class="card mx-auto border-warning">
                    <section class="card-body">
                        <h1 class="card-title">View Ads</h1>
                    </section>
                </article>

                <article class="card mx-auto border-warning">
                    <section class="card-body">
                        <h1 class="card-title">Login</h1>
                    </section>
                </article>

                <article class="card mx-auto border-warning">
                    <section class="card-body">
                        <h1 class="card-title">Register</h1>
                    </section>
                </article>

            </section>
        </main>

    </div>
</body>
</html>
