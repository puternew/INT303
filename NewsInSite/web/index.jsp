<%-- 
    Document   : index
    Created on : Aug 10, 2018, 11:19:58 AM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>NEWs - In Site</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="css/agency.min.css" rel="stylesheet">

  </head>
  <style>
      body {
        /*background: linear-gradient(to bottom right, #4FBDDD, #FFE920);*/
      }
      #calculator {
          text-align: center;
          background-color: buttonhighlight;
      }
      #table {
          text-align: center;
      }
  </style>
  <body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">NEW IN SITE</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav text-uppercase ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#services">Option</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#calculator">Simple Calculator</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#about">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#team">Team</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Header -->
    <header class="masthead">
      <div class="container">
        <div class="intro-text">
          <div class="intro-lead-in">Welcome To Our Studio!</div>
          <div class="intro-heading text-uppercase">Learning to INT303</div>
          <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#services">Let's Go</a>
        </div>
      </div>
    </header>

    <!-- Services -->
    <section id="services">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h1 class="section-heading text-uppercase"> OPTION </h1>
            <h3 class="section-subheading text-muted">You can select option to do.</h3>
          </div>
        </div>
        <div class="row text-center">
          <div class="col-md-4">
            <span class="fa-stack fa-4x">
              <i class="fa fa-circle fa-stack-2x text-primary"></i>
              <i class="fa fa-shopping-cart fa-stack-1x fa-inverse"></i>
            </span>
            <h4 class="service-heading">Simple Calculator</h4>
            <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
          </div>
            <div class="col-md-4">
            <span class="fa-stack fa-4x">
              <i class="fa fa-circle fa-stack-2x text-primary"></i>
              <i class="fa fa-shopping-cart fa-stack-1x fa-inverse"></i>
            </span>
            <h4 class="service-heading">Prime Number</h4>
            <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
          </div>
          <div class="col-md-4">
            <span class="fa-stack fa-4x">
              <i class="fa fa-circle fa-stack-2x text-primary"></i>
              <i class="fa fa-laptop fa-stack-1x fa-inverse"></i>
            </span>
            <h4 class="service-heading">Test Request</h4>
            <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
          </div>
          <div class="col-md-4">
            <span class="fa-stack fa-4x">
              <i class="fa fa-circle fa-stack-2x text-primary"></i>
              <i class="fa fa-lock fa-stack-1x fa-inverse"></i>
            </span>
            <h4 class="service-heading">Shopping</h4>
            <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
          </div>
        </div>
      </div>
    </section>

    <!-- Simple Calculator ---------------------------------------------------->
    
    <section id="calculator">
         <div>
    <h1>Calculator</h1>
        <form action="SimpleCalculator#calculator" method="post">
            x= <input type = "number" required name= "x"/>
            <select name="operator">
            <option value = "+">+</option>
            <option value = "-">-</option>
            <option value = "*">*</option>
            <option value = "/">/</option>              
            </select>
            y= <input type = "number" required name= "y"/>
            <input type="submit"/>
        </form>
    <br><br>
    <h1>Result ::</h1>
    <table id="table">
            <tr>
                <td> X </td>
                <td> = </td>
                <td> ${calculator.x} </td>                          
            </tr>
            <tr>
                <td> Y </td>
                <td> = </td>
                <td> ${calculator.y} </td>                     
            </tr>
            <tr>
                <td> Operator </td>
                <td> = </td>
                <td> ${calculator.operator} </td>                   
            </tr>
            <tr>
                <td> Result </td>
                <td> = </td> 
                <td> ${calculator.result} </td>                     
            </tr>
        </table>
    </div>
    </section> 
   <!-------------------------------------------------------------------------->
 <table>
      <tr><td colspan=5>Table of Number${param.n}</td></tr>
 
      <c:forEach begin="2" end="12" var="x">
        <tr>
        <td style=text-align right>${param.n}</td>
            <td>x</td>
            <td style=text-align right>${x}</td>
            <td>=</td>
            <td style=text-align right>${param.nx}</td>
      </tr>
        </c:forEach>
  </table>
   <!-------------------------------------------------------------------------->
    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Contact form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/agency.min.js"></script>

  </body>

</html>