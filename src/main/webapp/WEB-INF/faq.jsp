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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title>FAQ</title>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1 class = "text-center">Adlister FAQ</h1>

    <button id ="toggleButton">Show me the answers</button>
    <dl class ="listClass">
        <dt class ="questions">Do I need to register to post an ad?</dt>
        <dd class ="answers">Yes, although you can view ads without registering you will need to register to respond to an ad and to post an ad. To register, click <a href = "http://localhost:8080/register">here</a>.</a> </dd>
        <br>
        <dt class ="questions">How do I create an ad?</dt>
        <dd class ="answers">Once you are registered, </dd>
        <br>
        <dt class ="questions">What forms of payment are accepted?</dt>
        <dd class ="answers">It is up to the seller to determine what payment methods are accepted, although we recommend that all sellers speak with Lucy since she has the most business experience.</dd>
        <br>
        <dt class ="questions">How much does it cost to post an ad?</dt>
        <dd class ="answers">Currently, there is no cost to posting an ad.</dd>
        <br>
        <dt class ="questions">How will I know if an item is still available?</dt>
        <dd class ="answers">Once an item or service is no longer available, we ask that the seller DELETE the post from Adlister to avoid any confusion.</dd>
        <br>
        <dt class ="questions">What are the limitations to what I can sell?</dt>
        <dd class ="answers">Categories have been created to cover a broad variety of goods and services to sell. Currently, Linus' blanket is the only item that cannot be listed for sale.</dd>
        <br>
        <dt class ="questions">What if I make a mistake when I post an ad?</dt>
        <dd class ="answers">Once you post an ad, you will be able to edit the ad if you see that you made a mistake. Users are also able to delete an ad, and should delete the ad once the item or service is no longer available.</dd>
        <br>
        <dt class ="questions">Can I meet Snoopy?</dt>
        <dd class ="answers">Snoopy is currently working on his great American novel, and may not be available for photo ops or autographs. An exception might be made for any buyer or seller that brings a full bowl of dog food, however.</dd>

    </dl>
</div>

<script
        src="https://code.jquery.com/jquery-3.3.1.slim.js"
        integrity="sha256-fNXJFIlca05BIO2Y5zh1xrShK3ME+/lYZ0j+ChxX2DA="
        crossorigin="anonymous">
</script>

<script>
    $('dd').addClass('invisible');

    $('#toggleButton').click(function() {
        $('dd').toggleClass('invisible');
    });

</script>

</body>
</html>
