<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Seat Selection</title>

<style>
button[type=submit], button[type=back], input[type=button] {
	background-color: #4CAF50;
	border: none;
	color: white;
	padding: 10px 18px;
	text-decoration: none;
	margin: 4px 2px;
	cursor: pointer;
}

p {
	color: red;
}

table, th {
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
	margin-left: 10em;
}
/* Change color on hover */
.topnav a:hover {
	background-color: #ddd;
	color: black;
}

.nav-collapse {
	margin-left: 1em;
}

.reserved {
	color: blue;
}

.tab {
	align: left;
	padding-top: 00px;
}
</style>
<script type="text/javascript">

function add() {
var boxes = document.f1.checkbox.length;
var txt = "";
var fare=0;
num=1;
for (var i = 0; i < boxes; i++) {
if (document.f1.checkbox[i].checked) {
txt =  document.f1.checkbox[i].value + " ";
}
}
fare=400;
document.f1.text2.value = txt;
document.f1.text4.value = fare;
}

function countCheckboxes(){
      var inputElems = document.getElementsByTagName("input");
      var count = 0;
      for (var i=0; i<inputElems.length; i++) {
        if (inputElems[i].type === "checkbox" && inputElems[i].checked === true) {
          count++;
        }
      }
      if(count == 1){
       
		alert ("seat selected successfully");
		return true;
        
      }
	  else {
	     alert("Select only  One seat to continue");
           		return false;}
}
</script>
</head>
<body>
	<div class="header">
		<h1>Travel Line</h1>
		<img src="images\bus.jpg" alt="bus"
			style="width: 850px; height: 220px;">
	</div>
	<div class="nav-collapse">
		<div class="topnav">
			<a href="Bus_Home.html">Home</a> <a href="ContactUs.html">Contact
				Us</a> <a href="retrival1.html">Retrieval</a> <a href="Admin_login.html">Admin
				Login</a>
		</div>
	</div>
	<div align="center">
		<br>
		<h1>Select seat</h1>
	</div>
	<center>
		<div class="row info"></div>
		<hr />
		<!--<div style="width: 350px; float:left; height:200px;border:1px solid #000;color:blue;background-color:LightGray;margin:10px">-->

		<%request.getAttribute("seat"); %>
		<table style="width: 100%">
			<tr>
				<th>Service No</th>
				<th>From</th>
				<th>To</th>
				<th>Journey Date</th>
			</tr>
			<tr>
			<td>${seat.serviceId }</td>
			<td>${seat.serviceFrom }</td>
			<td>${seat.serviceTo }</td>
			<td>${seat.departureTime }</td>
			</tr>
		</table>
		<br>
		<br>
		<br>
		<div style="width: 220px; height: 250px; border: 1px solid #000; color: blue; background-color: LightGray"></div>
			<br>
			<br>
			
				<form id="f1" name="f1" method="post" action="Details.html">
					<!--<input name="checkbox" type="checkbox" id="checkbox" value="1" />
    1
    <input name="checkbox" type="checkbox" id="checkbox" value="2" />
    2
    <input name="checkbox" type="checkbox" id="checkbox" value="3" />
    3
    <input name="checkbox" type="checkbox" id="checkbox" value="4" />
    4<br />-->
					<div class="seats">
						<div class="row">
							<div class="col-sm-4">
								<label><input type="checkbox" class="cust-checkbox"
									id="checkbox" value="01">01<span></span></label> <label><input
									type="checkbox" class="cust-checkbox" id="checkbox" value="02">02<span></span></label>&emsp;&emsp;
								<label><input type="checkbox" class="cust-checkbox"
									id="checkbox" value="03">03<span></span></label> <label><input
									type="checkbox" class="cust-checkbox" id="checkbox" value="04">04<span></span></label>
							</div>
							<div class="col-sm-4">
								<label><input type="checkbox" class="cust-checkbox"
									id="checkbox" value="05">05<span></span></label> <label><input
									type="checkbox" class="cust-checkbox" id="checkbox" value="06">06<span></span></label>&emsp;&emsp;
								<label><input type="checkbox" class="cust-checkbox"
									id="checkbox" value="07">07<span></span></label> <label
									class="reserved"><input type="checkbox" disabled
									id="08" class="reserved" id="checkbox" value="08">08<span></span></label>

							</div>
							<div class="col-sm-4">
								<label><input type="checkbox" class="cust-checkbox"
									id="checkbox" value="09">09<span></span></label> <label><input
									type="checkbox" class="cust-checkbox" id="checkbox" value="10">10<span></span></label>&emsp;&emsp;
								<label><input type="checkbox" disabled id="11"
									class="reserved" id="checkbox" value="11">11<span></span></label>
								<label><input type="checkbox" class="cust-checkbox"
									id="checkbox" value="12">12<span></span></label>
							</div>
							<div class="col-sm-4">
								<label><input type="checkbox" class="cust-checkbox"
									id="checkbox" value="13">13<span></span></label> <label><input
									type="checkbox" class="cust-checkbox" id="checkbox" value="14">14<span></span></label>&emsp;&emsp;
								<label><input type="checkbox" class="cust-checkbox"
									id="checkbox" value="15">15<span></span></label> <label><input
									type="checkbox" class="cust-checkbox" id="checkbox" value="16">16<span></span></label>
							</div>
							<div class="col-sm-4">
								<label><input type="checkbox" class="cust-checkbox"
									id="checkbox" value="17">17<span></span></label> <label><input
									type="checkbox" class="cust-checkbox" id="checkbox" value="18">18<span></span></label>&emsp;&emsp;
								<label><input type="checkbox" class="cust-checkbox"
									id="checkbox" value="19">19<span></span></label> <label><input
									type="checkbox" class="cust-checkbox" id="checkbox" value="20">20<span></span></label>
							</div>
							<div class="col-sm-4">
								<label><input type="checkbox" disabled id="21"
									class="reserved" id="checkbox" value="21">21<span></span></label>
								<label><input type="checkbox" class="cust-checkbox"
									id="checkbox" value="22">22<span></span></label>&emsp;&emsp; <label><input
									type="checkbox" class="cust-checkbox" id="checkbox" value="23">23<span></span></label>
								<label><input type="checkbox" class="cust-checkbox"
									id="checkbox" value="24">24<span></span></label>
							</div>
							<div class="col-sm-4">
								<label><input type="checkbox" class="cust-checkbox"
									id="checkbox" value="25">25<span></span></label> <label><input
									type="checkbox" class="cust-checkbox" id="checkbox" value="26">26<span></span></label>&emsp;&emsp;
								<label><input type="checkbox" class="cust-checkbox"
									id="checkbox" value="27">27<span></span></label> <label><input
									type="checkbox" class="cust-checkbox" id="checkbox" value="28">28<span></span></label>

							</div>
							<div class="col-sm-4">
								<label><input type="checkbox" class="cust-checkbox"
									id="checkbox" value="29">29<span></span></label> <label><input
									type="checkbox" class="cust-checkbox" id="checkbox" value="30">30<span></span></label>&emsp;&emsp;
								<label><input type="checkbox" class="cust-checkbox"
									id="checkbox" value="31">31<span></span></label> <label><input
									type="checkbox" class="cust-checkbox" id="checkbox" value="32">32<span></span></label>

							</div>
							<div class="col-sm-4">
								<label><input type="checkbox" class="cust-checkbox"
									id="checkbox" value="33">33<span></span></label> <label><input
									type="checkbox" class="cust-checkbox" id="checkbox" value="34">34<span></span></label>&emsp;&emsp;
								<label><input type="checkbox" class="cust-checkbox"
									id="checkbox" value="35">35<span></span></label> <label><input
									type="checkbox" class="cust-checkbox" id="checkbox" value="36">36<span></span></label>

							</div>
						</div>
					</div>


					<br> <input name="ok" type="button" id="buton1"
						onclick="add();" value="ok" /><br>
					<br>
					<TABLE id="dataTable" width="500px" border="1">

						<TR>


							<TD>name<INPUT type="text" name="name" required="required"
								pattern="[a-z A-Z]+" /></TD>
							<TD>age<INPUT type="number" min="1" required="required" name="age"/></TD>
							<TD>Gender <SELECT name="gender">
									<OPTION value="in">Male</OPTION>
									<OPTION value="de">Female</OPTION>
									<OPTION value="fr">Other</OPTION>
							</SELECT>
							</TD>
							<td>fare:<input type="text" name="fare" id="text4" disabled /></td>


							<TD>seat number:<input type="text" name="seatno" id="text2"
								disabled /></td>
						</TR>
					</TABLE>
					<br> <br>
					<button type="submit" value="book"
						onclick="return countCheckboxes();">book</button>
					<button type="back" value="back" formaction="Select_service.jsp">back</button>
	
	</form>
	</center>
</body>

</html>
