<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ page session="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<tiles:importAttribute name="innerLayout" />
<c:forEach var="innerLayout" items="${innerLayout}">
    <link type="text/css" rel="stylesheet" href="<c:url value="${innerLayout}"/>" />
</c:forEach>

<div class="container">
	<h4>IBM WAY</h4><br>

		<div class="slideshow-container">
		  
		  <div class="mySlides">
		    <div class="numbertext">0 / 6</div>
		    <img src="/images/ibmway0.png" style="width:100%">
		    <div class="text">The IBM WAY</div>
		  </div>
		
		  <div class="mySlides fade">
		    <div class="numbertext">1 / 6</div>
		    <img src="/images/ibmway1.png" style="width:100%">
		    <div class="text">Clients first</div>
		  </div>
		
		  <div class="mySlides fade">
		    <div class="numbertext">2 / 6</div>
		    <img src="/images/ibmway2.png" style="width:100%">
		    <div class="text">Reinvention by design</div>
		  </div>
		  
		  <div class="mySlides fade">
		    <div class="numbertext">3 / 6</div>
		    <img src="/images/ibmway3.png" style="width:100%">
		    <div class="text">Cognitive to the core</div>
		  </div>
		  
		  <div class="mySlides fade">
		    <div class="numbertext">4 / 6</div>
		    <img src="/images/ibmway4.png" style="width:100%">
		    <div class="text">Agile on the cloud</div>
		  </div>
		  
		  <div class="mySlides fade">
		    <div class="numbertext">5 / 6</div>
		    <img src="/images/ibmway5.png" style="width:100%">
		    <div class="text">You to the IBM</div>
		  </div>
		  
		  <div class="mySlides">
		    <div class="numbertext">6 / 6</div>
		    <img src="/images/ibmway6.png" style="width:100%">
		    <div class="text">Delivered with confidence and quality</div>
		  </div>

		  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
		  <a class="next" onclick="plusSlides(1)">&#10095;</a>
		</div>
		<br>
		
		<div style="text-align:center">
		  <span class="dot" onclick="currentSlide(0)"></span> 
		  <span class="dot" onclick="currentSlide(1)"></span> 
		  <span class="dot" onclick="currentSlide(2)"></span>
		  <span class="dot" onclick="currentSlide(3)"></span> 
		  <span class="dot" onclick="currentSlide(4)"></span> 
		  <span class="dot" onclick="currentSlide(5)"></span>
		  <span class="dot" onclick="currentSlide(6)"></span> 
		</div>
<br><br><br>
</div>

<style>
	* {box-sizing:border-box}
	
	/* Slideshow container */
	.slideshow-container {
	  max-width: 1000px;
	  position: relative;
	  margin: auto;
	}
	
	.mySlides {
	    display: none;
	}
	
	/* Next & previous buttons */
	.next {
	  cursor: pointer;
	  position: absolute;
	  top: 50%;
	  width: auto;
	  margin-top: -22px;
	  padding: 16px;
	  color: white;
	  font-weight: bold;
	  font-size: 18px;
	  transition: 0.6s ease;
	  border-radius: 0 3px 3px 0;
	}
	.prev {
	  cursor: pointer;
	  position: absolute;
	  top: 50%;
	  width: auto;
	  margin-top: -22px;
	  padding: 16px;
	  color: black;
	  font-weight: bold;
	  font-size: 18px;
	  transition: 0.6s ease;
	  border-radius: 0 3px 3px 0;
	}
	
	/* Position the "next button" to the right */
	.next {
	  right: 0;
	  border-radius: 3px 0 0 3px;
	}
	
	/* On hover, add a black background color with a little bit see-through */
	.prev:hover, .next:hover {
	  background-color: rgba(0,0,0,0.8);
	}
	
	/* Caption text */
	.text {
	  color: #E9F2FF;
	  font-size: 15px;
	  padding: 8px 12px;
	  position: absolute;
	  bottom: 8px;
	  width: 100%;
	  text-align: center;
	}
	
	/* Number text (1/3 etc) */
	.numbertext {
	  color: #f2f2f2;
	  font-size: 12px;
	  padding: 8px 12px;
	  position: absolute;
	  top: 0;
	}
	
	/* The dots/bullets/indicators */
	.dot {
	  cursor:pointer;
	  height: 15px;
	  width: 15px;
	  margin: 0 2px;
	  background-color: #bbb;
	  border-radius: 50%;
	  display: inline-block;
	  transition: background-color 0.6s ease;
	}
	
	.active, .dot:hover {
	  background-color: #717171;
	}
	
	/* Fading animation */
	.fade {
	  -webkit-animation-name: fade;
	  -webkit-animation-duration: 1.5s;
	  animation-name: fade;
	  animation-duration: 1.5s;
	}
	
	@-webkit-keyframes fade {
	  from {opacity: .4} 
	  to {opacity: 1}
	}
	
	@keyframes fade {
	  from {opacity: .4} 
	  to {opacity: 1}
	}
</style>

<script>
	var slideIndex = 0;
	showSlides(slideIndex);
	
	function plusSlides(n) {
	  showSlides(slideIndex += n);
	}
	
	function currentSlide(n) {
	  showSlides(slideIndex = n);
	}
	
	function showSlides(n) {
	  var i;
	  var slides = document.getElementsByClassName("mySlides");
	  var dots = document.getElementsByClassName("dot");
	  if (n >= slides.length) {slideIndex = slides.length-1} 
	  if (n < 0) {slideIndex = 0}
	  for (i = 0; i < slides.length; i++) {
	      slides[i].style.display = "none"; 
	  }
	  for (i = 0; i < dots.length; i++) {
	      dots[i].className = dots[i].className.replace(" active", "");
	  }
	  slides[slideIndex].className = slides[slideIndex].className.replace(" fade", "");
	  slides[slideIndex].style.display = "block"; 
	  dots[slideIndex].className += " active";
	}
</script>