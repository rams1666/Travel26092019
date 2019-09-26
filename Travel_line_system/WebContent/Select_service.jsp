<%@ page import="com.vir.model.BusService" %>
<%@ page import="com.vir.service.BusServiceServiceImpl" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table, th{
  border: 1px solid black;
}


.header {
  background-color: #f1f1f1;
  padding: 30px;
  text-align: center;
background: white;
}
.topnav {
  overflow: hidden;
  background-color: #333;
}

/* Style the topnav links */
.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
 padding-top: 0px;
 margin-left: 1em;
}

/* Change color on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;


}
.nav-collapse {
  margin-left: 1em;

}
</style>

</head>
<body>
<div class="header">
<h1>Travel Line</h1>
  <img src="images/bus.jpg" alt="bus" style="width:1000px;height:300px">
<div class="nav-collapse">

<div class="topnav">
<a href="Bus_Home.html">Home</a>
<a href="ContactUs.html">ContactUs</a>
<a href="retrival1.html">Retrival</a>
<a href="Feedback.html">Feedback</a>
<a href="Admin.html">AdminLogin</a>
</div>
</div>
<div align="center" ><br>

<h3>Select Services</h3>

<form action="s2.html" method="post">
<table style="width:100%" name="tab1">
  <tr>
    <th>From:</th>
    <th>To:</th> 
    <th>Journey-Time:</th>
  </tr>
  <tr>
  <td><% request.getAttribute("from");%></td>
  <td><% request.getAttribute("to");%></td>
  <td><% request.getAttribute("dtime");%></td>
  </tr>
</table><br><br>
<% BusService bs=new BusService();
BusServiceServiceImpl bsl=new  BusServiceServiceImpl();
request.getAttribute("listData") ;
%>
  <table style="width:100%" border="100px" name="tab2">
  <tr>
    <th>Service No</th>
    <th>From</th> 
    <th>To</th>
    <th>Capacity</th>
    <th>Departure Time</th>
	<th>Journey Time </th>
	<th>Fare</th>
	<th>Distance</th>
  </tr>
  <c:forEach items="${listData}" var="bs">
                     <tr>
  <td>${bs.serviceId }</td>
  <td>${bs.serviceFrom }</td>
  <td>${bs.serviceTo }</td>
  <td>${bs.busCapacity }</td>
  <td>${bs.fare }</td>
  <td>${bs.distance }</td>
  <td>${bs.departureTime }</td>
  <td>${bs.journeyTime }</td>
  </tr>

                </c:forEach>
 
</table>


<button type="submit"  value="submit">submit</button>
<button type="reset"  value="reset">reset</button><br>
<button onclick="location.href = 'Bus_Home.html';" id="myButton" name="">back</button>

</form>
</div>
</body>
</html>