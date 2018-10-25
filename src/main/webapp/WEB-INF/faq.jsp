<%--
  Created by IntelliJ IDEA.
  User: danielbrowning
  Date: 10/24/18
  Time: 12:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="AdLister ~ FAQ" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1 class = "text-warning page-heading text-center">Adlister FAQ</h1>

    <div class="row">
        <div class="col-sm-6">
            <div class="card border-warning">
                <div class="card-body">
                    <h5 class="card-header text-white bg-dark">Do I need to register to post an ad?</h5>
                    <p class="card-text">Yes, although you can view ads without registering you will need to register to respond to an ad and to post an ad. To register, click <a href = "http://localhost:8080/register">here</a></p>
                </div>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="card border-warning">
                <div class="card-body">
                    <h5 class="card-header text-white bg-dark">How do I create an ad?</h5>
                    <p class="card-text">Once you are registered, you can click on Create to create an ad. You'll have a title, a description, and will be able to select the category(ies) that best fit your item or service..</p>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-6">
            <<div class="card border-warning">
                <div class="card-body">
                    <h5 class="card-header text-white bg-dark">What forms of payment are accepted?</h5>
                    <p class="card-text">It is up to the seller to determine what payment methods are accepted, although we recommend that all sellers speak with Lucy since she has the most business experience.</p>
                </div>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="card border-warning">
                <div class="card-body">
                    <h5 class="card-header text-white bg-dark">How much does it cost to post an ad?</h5>
                    <p class="card-text">It is up to the seller to determine what payment methods are accepted, although we recommend that all sellers speak with Lucy since she has the most business experience.</p>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-6">
            <div class="card border-warning">
                <div class="card-body">
                    <h5 class="card-header text-white bg-dark">How will I know if an item is still available?</h5>
                    <p class="card-text">Once an item or service is no longer available, we ask that the seller DELETE the post from Adlister to avoid any confusion.</p>
                </div>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="card border-warning">
                <div class="card-body">
                    <h5 class="card-header text-white bg-dark">What are the limitations to what I can sell?</h5>
                    <p class="card-text">Categories have been created to cover a broad variety of goods and services to sell. Currently, Linus' blanket is the only item that cannot be listed for sale.</p>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-6">
            <div class="card border-warning">
                <div class="card-body">
                    <h5 class="card-header text-white bg-dark">What if I make a mistake when I post an ad?</h5>
                    <p class="card-text">Once you post an ad, you will be able to edit the ad if you see that you made a mistake. Users are also able to delete an ad, and should delete the ad once the item or service is no longer available.</p>
                </div>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="card border-warning">
                <div class="card-body">
                    <h5 class="card-header text-white bg-dark">Can I meet Snoopy?</h5>
                    <p class="card-text">Snoopy is currently working on his great American novel, and may not be available for photo ops or autographs. An exception might be made for any buyer or seller that brings a full bowl of dog food, however.</p>
                </div>
            </div>
        </div>
    </div>
<%--<div class="card-columns" style="width: 150rem;">--%>
    <%--<article class="card border-warning">--%>
        <%--<div class="card-header">Do I need to register to post an ad?</div>--%>
    <%--<div class="card-body">--%>
        <%--Yes, although you can view ads without registering you will need to register to respond to an ad and to post an ad. To register, click <a href = "http://localhost:8080/register">here</a>--%>
    <%--</div>--%>
    <%--</div>--%>

<%--<div class="card-columns" style="width: 150rem;">--%>
    <%--<article class="card border-warning">--%>
        <%--<div class="card-header">How do I create an ad?</div>--%>
    <%--<div class="card-body">--%>
        <%--Once you are registered, you can click on Create to create an ad. You'll have a title, a description, and will be able to select the category(ies) that best fit your item or service.--%>
    <%--</div>--%>
<%--</div>--%>

<%--<div class="card-columns"  style="width: 150rem;">--%>
    <%--<article class="card border-warning">--%>
        <%--<div class="card-header">What forms of payment are accepted?</div>--%>
    <%--<div class="card-body">--%>
        <%--It is up to the seller to determine what payment methods are accepted, although we recommend that all sellers speak with Lucy since she has the most business experience.--%>
    <%--</div>--%>
<%--</div>--%>

<%--<div class="card-columns"  style="width: 150rem;">--%>
    <%--<article class="card border-warning">--%>
        <%--<div class="card-header">How much does it cost to post an ad?</div>--%>
        <%--<div class="card-body">--%>
            <%--It is up to the seller to determine what payment methods are accepted, although we recommend that all sellers speak with Lucy since she has the most business experience.--%>
        <%--</div>--%>
<%--</div>--%>

<%--<div class="card-columns"  style="width: 150rem;">--%>
    <%--<article class="card border-warning">--%>
        <%--<div class="card-header">How will I know if an item is still available?</div>--%>
        <%--<div class="card-body">--%>
            <%--Once an item or service is no longer available, we ask that the seller DELETE the post from Adlister to avoid any confusion.--%>
        <%--</div>--%>
<%--</div>--%>

<%--<div class="card-columns"  style="width: 150rem;">--%>
    <%--<article class="card border-warning">--%>
        <%--<div class="card-header">What are the limitations to what I can sell?</div>--%>
        <%--<div class="card-body">--%>
            <%--Categories have been created to cover a broad variety of goods and services to sell. Currently, Linus' blanket is the only item that cannot be listed for sale.--%>
        <%--</div>--%>
<%--</div>--%>

<%--<div class="card-columns"  style="width: 150rem;">--%>
    <%--<article class="card border-warning">--%>
        <%--<div class="card-header">What if I make a mistake when I post an ad?</div>--%>
        <%--<div class="card-body">--%>
            <%--Once you post an ad, you will be able to edit the ad if you see that you made a mistake. Users are also able to delete an ad, and should delete the ad once the item or service is no longer available.--%>
        <%--</div>--%>
<%--</div>--%>

<%--<div class="card-columns"  style="width: 150rem;">--%>
    <%--<article class="card border-warning">--%>
        <%--<div class="card-header">Can I meet Snoopy?</div>--%>
        <%--<div class="card-body">--%>
            <%--Snoopy is currently working on his great American novel, and may not be available for photo ops or autographs. An exception might be made for any buyer or seller that brings a full bowl of dog food, however.--%>
        <%--</div>--%>
<%--</div>--%>

</div>


</body>
</html>
