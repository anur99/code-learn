<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Code Learners</title>
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
              crossorigin="anonymous">
        <link rel="stylesheet" href="css/likeDislike.css">
    </head>
    <style>
        .primary-background {
            background: #000000!important;
            font-weight: bold;
        }
        .banner-background{
            clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 91%, 65% 100%, 27% 91%, 0 100%, 0 0);
        }
        .card{
            border-radius: 4px;
            box-shadow: 0 6px 10px rgba(0,0,0,.08), 0 0 6px rgba(0,0,0,.05);
            transition: .3s transform cubic-bezier(.155,1.105,.295,1.12),.3s box-shadow,.3s -webkit-transform cubic-bezier(.155,1.105,.295,1.12);
            padding: 14px 80px 18px -1px;
            cursor: pointer;
        }

        .gapping{
            margin-bottom: 10px;
        }
        .card:hover{
            transform: scale(1.03);
            box-shadow: 0 10px 20px rgba(0,0,0,.12), 0 4px 8px rgba(0,0,0,.06);
        }
       


    </style>
    <body>
        <%@include file="header.jsp" %>

        <div class="container-fluid p-0 m-0">
            <div class="jumbotron primary-background text-white banner-background">
                <div class="container">
                    <h3 class="display-3">Welcome to Code Learners</h3>
                    <p>A Coding is the study of the properties of codes and their
                        respective fitness for specific applications. Codes are used for
                        data compression, cryptography, error detection and correction,
                        data transmission and data storage.</p>

                    <p>Computer programming is the process of designing and building
                        an executable computer program to accomplish a specific computing
                        result or to perform a specific task.</p>

                    <a href="registerPage.jsp" class="btn btn-outline-light btn-lg">
                        <span class="fa fa-user-plus"></span>Learn! its Free
                    </a>
                    <a href="loginPage.jsp" class="btn btn-outline-light btn-lg">
                        <span class="fa fa-user-circle fa-spin"></span>Login here
                    </a>
                </div>
            </div>
        </div>
        <br>
        <div class="container">
            <div class="row">
                <div class="col-md-4 gapping">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="image/java.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the
                                card title and make up the bulk of the card's content.</p>
                            <a href="loginPage.jsp" class="btn primary-background text-white">Read
                                More...</a>
                            <button class="like">
                                <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                            </button>
                            <button class="dislike">
                                <i class="fa fa-thumbs-o-down" aria-hidden="true"></i>
                            </button>
                        </div>
                    </div>

                </div>
                <div class="col-md-4 gapping">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="image/python.png" alt="Card image cap" height="160rem">
                        <div class="card-body">
                            <h5 class="card-title">Python Programming</h5>
                            <p class="card-text">Some quick example text to build on the
                                card title and make up the bulk of the card's content.</p>
                            <a href="loginPage.jsp" class="btn primary-background text-white">Read
                                More...</a>
                            <button class="like">
                                <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                            </button>
                            <button class="dislike">
                                <i class="fa fa-thumbs-o-down" aria-hidden="true"></i>
                            </button>
                        </div>
                    </div>

                </div>
                <div class="col-md-4 gapping">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="image/c++.png" alt="Card image cap" height="160rem">
                        <div class="card-body">
                            <h5 class="card-title">C++ Programming</h5>
                            <p class="card-text">Some quick example text to build on the
                                card title and make up the bulk of the card's content.</p>
                            <a href="loginPage.jsp" class="btn primary-background text-white">Read
                                More...</a>
                            <button class="like">
                                <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                            </button>
                            <button class="dislike">
                                <i class="fa fa-thumbs-o-down" aria-hidden="true"></i>
                            </button>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-4 gapping">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="image/datastructure.jpg" alt="Card image cap" height="160rem">
                        <div class="card-body">
                            <h5 class="card-title">DS and Algorithm</h5>
                            <p class="card-text">Some quick example text to build on the
                                card title and make up the bulk of the card's content.</p>
                            <a href="loginPage.jsp" class="btn primary-background text-white">Read
                                More...</a>
                            <button class="like">
                                <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                            </button>
                            <button class="dislike">
                                <i class="fa fa-thumbs-o-down" aria-hidden="true"></i>
                            </button>
                        </div>
                    </div>

                </div>
                <div class="col-md-4">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="image/kotlin.png" alt="Card image cap" height="160rem">
                        <div class="card-body">
                            <h5 class="card-title">Kotlin Programming</h5>
                            <p class="card-text">Some quick example text to build on the
                                card title and make up the bulk of the card's content.</p>
                            <a href="loginPage.jsp" class="btn primary-background text-white">Read
                                More...</a>
                            <button class="like">
                                <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                            </button>
                            <button class="dislike">
                                <i class="fa fa-thumbs-o-down" aria-hidden="true"></i>
                            </button>
                        </div>
                    </div>

                </div>
                <div class="col-md-4">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="image/c.png" alt="Card image cap" height="160rem">
                        <div class="card-body">
                            <h5 class="card-title">C Programming</h5>
                            <p class="card-text">Some quick example text to build on the
                                card title and make up the bulk of the card's content.</p>
                            <a href="loginPage.jsp" class="btn primary-background text-white">Read
                                More...</a>
                            <button class="like">
                                <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                            </button>
                            <button class="dislike">
                                <i class="fa fa-thumbs-o-down" aria-hidden="true"></i>
                            </button>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!--additional-->
        <div class="container">
            <div class="row">
                <div class="col-md-4 gapping">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="image/javascriptpng.png" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">JavaScript Programming</h5>
                            <p class="card-text">Some quick example text to build on the
                                card title and make up the bulk of the card's content.</p>
                            <a href="loginPage.jsp" class="btn primary-background text-white">Read
                                More...</a>
                            <button class="like">
                                <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                            </button>
                            <button class="dislike">
                                <i class="fa fa-thumbs-o-down" aria-hidden="true"></i>
                            </button>
                        </div>
                    </div>

                </div>
                <div class="col-md-4">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="image/darkpng.png" alt="Card image cap" height="160rem">
                        <div class="card-body">
                            <h5 class="card-title">Dart Programming</h5>
                            <p class="card-text">Some quick example text to build on the
                                card title and make up the bulk of the card's content.</p>
                            <a href="loginPage.jsp" class="btn primary-background text-white">Read
                                More...</a>
                            <button class="like">
                                <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                            </button>
                            <button class="dislike">
                                <i class="fa fa-thumbs-o-down" aria-hidden="true"></i>
                            </button>
                        </div>
                    </div>

                </div>
                <div class="col-md-4">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="image/scalapng.png" alt="Card image cap" height="160rem">
                        <div class="card-body">
                            <h5 class="card-title">Scala Programming</h5>
                            <p class="card-text">Some quick example text to build on the
                                card title and make up the bulk of the card's content.</p>
                            <a href="loginPage.jsp" class="btn primary-background text-white">Read
                                More...</a>
                            <button class="like">
                                <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                            </button>
                            <button class="dislike">
                                <i class="fa fa-thumbs-o-down" aria-hidden="true"></i>
                            </button>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <%@include file="html/footer.html"  %>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"
                integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
        crossorigin="anonymous"></script>
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
        <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
    </body>
</html>