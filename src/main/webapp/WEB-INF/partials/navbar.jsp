<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-expand-lg navbar-light bg-light mb-5">
    <a class="navbar-brand align-text-bottom" href="/">
        <img src="../../css/snoopy2.png" height="40" class="d-inline-block align-top" alt="">
    </a>
    <a class="navbar-brand align-middle" href="/">
        <span class="align-text-bottom">AdLister</span>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link text-danger" href="/">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/ads">All Ads</a>
            </li>
            <c:if test="${sessionScope.user != null}">
                <li class="nav-item">
                    <a class="nav-link" href="/ads/create">Create an Ad</a>
                </li>
            </c:if>
        </ul>
        <ul class="navbar-nav ml-auto my-auto">
            <form action="/ads" class="navbar-form navbar-left form-inline align-middle my-auto">
                <input class="form-control mr-1" type="search" name="search" placeholder="Search" aria-label="Search"
                       value="${search}">
                <button class="btn btn-warning" type="submit">Search</button>
            </form>

            <c:if test="${sessionScope.user == null}">
                <li class="nav-item">
                    <a class="nav-link" href="/register">Register</a>
                </li>
                <li class="nav-item justify-content-end">
                    <a class="nav-link justify-content-end" href="/login">Login</a>
                </li>
            </c:if>

            <c:if test="${sessionScope.user != null}">
                <li class="nav-item">
                    <a class="nav-link" href="/profile">Profile</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="/logout">Logout</a>
                </li>
            </c:if>
        </ul>
    </div>
</nav>


<%--<nav class="navbar navbar-default">--%>
<%--<div class="container-fluid">--%>
<%--<!-- Brand and toggle get grouped for better mobile display -->--%>
<%--<div class="navbar-header">--%>
<%--<a class="navbar-brand" href="/ads">Adlister</a>--%>
<%--</div>--%>


<%--<ul class="nav navbar-nav navbar-right">--%>


<%--</ul>--%>
<%--</div><!-- /.navbar-collapse -->--%>
<%--</div><!-- /.container-fluid -->--%>
<%--</nav>--%>
                                                