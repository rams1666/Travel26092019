<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
  padding-top: 10px;
 margin-left: 8em;
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
  <img src="images\bus.jpg" alt="bus" style="width:1000px;height:300px;">
</div>
<div class="nav-collapse">

<div class="topnav">
<a href="Add_Service.html">Add Service</a>
<a href="Modify_Service.html">Modify Service</a>
<a href="Schedule.html">Schedule</a>
<a href="Bus_Home.html">Logout</a>
</div>
</div>
<div align="center" ><br>

<h2>Feedback</h2>
<% request.getAttribute("view"); %>
<table style="width:100%">
  <tr>
    <th>Passenger id:</th>
    <th>Email id:</th> 
    <th>Comment:</th>
  </tr>
  <c:forEach items="${view}" var="view">
  <tr>
  <td>${view.getPassengerName() }</td>
  <td>${view.getMailId() }</td>
  <td>${view.getComments()}</td>
  </tr>
  </c:forEach>
</table><br><br>
</div>
</body>
</html>