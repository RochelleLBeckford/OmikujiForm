<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Omikuji</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script><!-- change to match your file/naming structure -->
</head>
<body>
    <!-- ~ Java equivalent of Jinja 
        -> take data from controller and have it render on my view 
        -> give it a value attribute
        -> then what we want to render on page
    -->
    <div class="container d-flex justify-content-center border border-5 mt-5">
        <!-- <c:out value="${name}" ></c:out> -->
        <!-- Survey part -> Form -->
        <card>
            <h1>Send an Omikuji!</h1>
            <card-body>
                <form action="/omikuji" method="POST">
                    <div>
                        <label>Pick any number from 5 to 25:</label>
                        <input type="number" class="form-control" name="number" min="5" max="25">
                    </div>

                    <div>
                        <label>Enter the name of any city:</label>
                        <input type="text" class="form-control" name="location">
                    </div>
                    
                    <div>
                        <label>Enter the name of any real person:</label>
                        <input type="text" class="form-control" name="name">
                    </div>

                    <div>
                        <label>Enter professional endeaver or hobby:</label>
                        <input type="text" class="form-control" name="hobby">
                    </div>

                    <div>
                        <label>Enter any type of living thing:</label>
                        <input type="text" class="form-control" name="livingThing">
                    </div>

                    <div>
                        <label>Say something nice to someone:</label>
                        <!-- <input type="textera" name="niceComment"> -->
                        <textarea name="niceComment" class="form-control" id="niceComment" cols="30" rows="10"></textarea>
                    </div>

                    <p>Send and show a friend<p>

                    <input type="submit" value="Send">
                </form>
            </card-body>
        </card>
    </div>
</body>
</html>


<!-- <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Omikuji</title>
</head>
<body>
    <h1>Welcome to my Omikuji Form Project.</h1>

    <ul>
        <li>
            <a href="/omikuji">Omikuji Form</a>
        </li>
        <li>
            <a href="/omikuji/show">Omikuji Display</a>
        </li>
    </ul>

    <p>These new routes require some different steps.</p>
    <ol>
        <li>One way is to input into the browser after 8080 "/daikichi/travel/any city name" to see something new one the webpage =).</li>
        <li>Then the other way is to input into the browser after 8080 "/daikichi/lotto/any number" to see something new one the webpage =) </li>
    </ol>
    <p>PS... try some even and odd numbers for step 2 and see what happpens..</p>
</body>
</html> -->