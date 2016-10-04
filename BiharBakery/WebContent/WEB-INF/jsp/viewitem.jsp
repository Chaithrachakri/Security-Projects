<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Item Detailsls</title>
</head>
<style type="text/css">
#bold{
    text-transform: uppercase;
}
body {
 background:#FFF8DC; 
margin:80px 80px 100px 100px;
}
#orange{
color:maroon
}

div#fixedheader {
position:fixed;
top:0px;
left:0px;
width:100%;
background:#8FBC8F;
padding:8px;
 }

div#fixedfooter {
position:fixed;
bottom:0px;
left:0px;
width:100%;
color:orange;
background:#8FBC8F;
padding:8px;
}
</style>


<div id="fixedheader">



<a href="./customerhome.htm"><img src="bakery.jpeg" class="img-rounded"  width="100" height="100" style="float:left;"> </a> <font color="maroon"><center><h1 id="orange">BIHAR BAKERY</h1> </center></font> 
<BR><BR>
<font color="maroon">HOME</FONT> 

</div>



<div id="fixedfooter">
<a href="./logout.htm"><img src="logout.jpg" class="img-rounded"  width="100" height="100" style="float:left;"> </a><a href="tcframe.html" target="_top" style="text-decoration:none; color:maroon; float:right">Terms & Conditions</a>
<br><p id="orange"style="  float:right;" >� Copyright 2015. Bihar Bakery</p></div>
<body>
<br>
<br>
<br>
<br>
<h1>Item Details</h1>
<form action="./makeorder.htm" method="GET" commandName="makeOrder">
       
 <table border="0" id="bold">

         
   <tr>
    <th style="text-align:center;">SELECT ITEM</th>                    
   	<th style="text-align:center;">ITEM NAME</th>       
   	 <th style="text-align:center;">ITEM TYPE</th>
   	 <th style="text-align:center;">QUANTITY AVAILABLE</th>
   	 <th style="text-align:center;">ITEM COST</th>  
    </tr>

           
<c:forEach  var="item" items="${requestScope.itemlist}">

               
 <tr >

 <td style="text-align:center;"> <input type="radio" name="itemid" value="${item.itemId}"> </td>    
                    
	<td style="text-align:center;">${item.itemName}</td>             
	<td style="text-align:center;">${item.itemType}</td>
	
	<c:if test="${item.quantity==0 }">
	
	<td style="text-align:center;">out of stock</td>
	</c:if>
	
	<c:if test="${item.quantity>0}">
	
	<td style="text-align:center;">${item.quantity}</td>
	
	</c:if>
	
	
	
	
	
	<td style="text-align:center;">${item.itemCost}</td>
    
               
 </tr>
          
 </c:forEach>

        </table>
        <br>
     <pre>   					  <input type="submit" name="selectingItems" value="Place Order" > </pre>
    </form> 
   </body>
   </html>��
