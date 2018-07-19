<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BOOKS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {font-family: "Lato", sans-serif}
.mySlides {display: none}
</style>
</head>
<body>
<%@include file="Header.jsp" %>
<!-- Page content -->
<div class="w3-content" style="max-width:1500px;margin-top:40px">

  <!-- Automatic Slideshow Images -->
  <div class="mySlides w3-display-container w3-center">
    <img src="resources/images/image1.jpg" style="width:100%">
    <div class="w3-display-bottommiddle w3-container w3-text-Black w3-padding-32 w3-hide-small">
      <h3>SCIENCE</h3>
      <p><b>The greatest formula that reveals the truth of creation.</b></p>   
    </div>
  </div>
  <div class="mySlides w3-display-container w3-center">
    <img src="resources/images/image2.jpg" style="width:100%">
    <div class="w3-display-bottommiddle w3-container w3-text-black w3-padding-32 w3-hide-small">
      <h3>BHAGAVAD GITA</h3>
      <p><b>One of the most ancient ethics that reveals the truth of universe.</b></p>    
    </div>
  </div>
  <div class="mySlides w3-display-container w3-center">
    <img src="resources/images/image4.jpg" style="width:100%">
    <div class="w3-display-bottommiddle w3-container w3-text-black w3-padding-32 w3-hide-small">
      <h3>INDIAN STORIES</h3>
      <p><b>One that tells the moral of life.</b></p>    
    </div>
  </div>
  </div>

<script>
// Automatic Slideshow - change image every 4 seconds
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 4000);    
}
</script>
<%@include file="Footer.jsp"%>

</body>
</html>