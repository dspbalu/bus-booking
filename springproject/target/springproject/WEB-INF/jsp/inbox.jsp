<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scable=no">
    <link href="${pageContext.request.contextPath}/lib/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/lib/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/lib/css/project.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/lib/js/jslib/holder.min.js"></script>
<link rel="${pageContext.request.contextPath}/lib/icon" href="favicon.ico">
<link href="${pageContext.request.contextPath}/lib/css/simple-sidebar.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/lib/js/jslib/bootstrap.min.js"></script>
<!-- <script src="${pageContext.request.contextPath}/lib/js/jslib/jquery1.min.js"></script> -->
<script src="${pageContext.request.contextPath}/lib/js/jslib/jquery-3.2.1.min.js"></script>

<script src="${pageContext.request.contextPath}/lib/js/jslib/bootbox.min.js"></script>
<script src="${pageContext.request.contextPath}/lib/js/jslib/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/lib/js/project.js"></script>
<script type="text/javascript">
var passid= '${passid}';
</script>
<title>sample
</title>
    <style>
    	 #side table{
            height: 25%;
        }
        .carousel-inner > .item > img {
  width: 1110px;
  height:460px;
}
        ul li:hover{
            background-color: black;
        }
       </style>
    <script>
    
    $('document').ready(function(){
       $("#mycarousel").carousel(); 
        
        
    });
        
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    </script>
    </head>
    <body>
    <div class="container">
        <div id="side" class="container visible-all col-md-3">
           <h1><a href="#">website</a></h1> <br>
           <table class="table table-hover">
            <tr><td>Welcome ${user}</td></tr>
            <tr><td><a href="#">BOOK TICKET</a></td></tr>
            <tr><td><a href="#">SUGGESTED TRAVELS</a></td></tr>
            <tr><td><a href="#">LOGOUT</a></td></tr>

         </table></div>
        <div class="container visible-all col-md-9">
       <div id="mycarousel" class="carousel slide" data-ride="carousel" data-interval="2000">
            <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
           <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="${pageContext.request.contextPath}/lib/images/travel.jpg" alt="1" class="img-responsive" />
            </div>
                <div class="carousel-caption">
              <table class="table table-border">
			<tr>
				<td><input class="form-control" type="text" id="source" placeholder="Boarding point" /></td>
				<td><p class="lead">-</p></td><td><input class="form-control" type="text" id="destination" placeholder="Destination point" /></td>
				<td><button id="ticketSearch" class="btn">search</button></td>
			</tr>
		</table></div>
            <div class="item">
            <img src="${pageContext.request.contextPath}/lib/images/stranded_main.jpg" alt="2" class="img-responsive" />
            </div>
            <div class="item">
            <img src="${pageContext.request.contextPath}/lib/images/images.jpg" alt="3" class="img-responsive" />
            </div>
        </div> 
      <a class="left carousel-control" href="#mycarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"> </span>
  </a>
  <a class="right carousel-control" href="#mycarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"> </span>
  </a>
           </div>
           <div  id="editSearch">
           <table class="table table-border">
			<tr>
				<td><input class="form-control" type="text" id="copysource" placeholder="Boarding point" /></td>
				<td><p class="lead">-</p></td><td><input class="form-control" type="text" id="copydestination" placeholder="Destination point" /></td>
				<td><button id="ticketSearch" class="btn">search</button></td>
			</tr>
		</table></div>
    		 <div id="busdetails" class="row">
			<table class="table table-border table-hover">
				<tr></tr>				
			</table>
		</div>
		
		<div id="seatLayout"  style="display: none">
			<div id="holder">
				<ul id="place">
				</ul>
			</div>
			<div style="float: left;">
				<ul id="seatDescription">
					<li
						style="background: url('${pageContext.request.contextPath}/lib/images/available_seat_img.gif') no-repeat scroll 0 0 transparent;">Available
						Seat</li>
					<li
						style="background: url('${pageContext.request.contextPath}/lib/images/booked_seat_img.gif') no-repeat scroll 0 0 transparent;">Booked
						Seat</li>
					<li
						style="background: url('${pageContext.request.contextPath}/lib/images/selected_seat_img.gif') no-repeat scroll 0 0 transparent;">Selected
						Seat</li>
				</ul>
			</div>
			 <!--<div style="clear: both; width: 100%">
				<input type="button" class="btn" id="proceed" value="Proceed" />
				 <input type="button" class="btn" id="btnShow" value="Show All" />
 
			</div> -->
			</div>
			<div style="display:none" id="pass-details">
			<table style="display:none" class="table table-responsive" id="pass-details-table">
			<tr><td colspan=4>Enter details:</tr>
			<tr id="detail-index"><td>Seat no</td><td>Name</td><td>Phone</td><td>Email</td></tr>
			<tr><td colspan=4><button class="btn" id="btnBook">Proceed</button></td></tr>
			
			</table></div>
			<!-- <div id="payment" style="display: none">
			<table class="table table-hover table-responsive">
			<tr><td><input type="text" class="form-control" placeholder="NAME"  value='${user}' id="pass_name"/></td></tr>
			<tr><td><input type="text" class="form-control" placeholder="EMAIL" value='${email}' id="pass_email"/></td></tr>
			<tr><td><input type="text" class="form-control" placeholder="MOBILE"  id="pass_mobile"/></td></tr>
			<tr><td><input type="button" class="btn"  id="btnBook" value="Book Seats" /></td></tr>
			</table>
			</div> -->
</div></div>
    </body></html>