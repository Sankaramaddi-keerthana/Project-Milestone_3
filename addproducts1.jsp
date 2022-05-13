<%String msg=request.getParameter("msg");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Fashion Store</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<script type="text/javascript">
function validation()
{
	var e=document.reg.pmodel.value;
if(e=="")
	{
	alert("Please Enter Product Model ")
		document.reg.pmodel.focus();
	return false;
	}
	
	var f=document.reg.price.value;
if(f=="")
	{
	alert("Please Enter Product Price ")
		document.reg.price.focus();
	return false;
	}
	if(isNaN(f))
	{
	alert("Product Price Must Be Numaric ");
	document.reg.price.focus();
	return false;
	}
	var a=document.reg.features.value;
	if(a=="")
	{
		alert("Please Enter  Product features ");
	document.reg.features.focus();
	return false;
}
	
	return true;
}
</script>
</head>
<body>
<div id="mainblock">
  <div id="innerblock">
    <div id="toppanel">
      <div class="tp_heading">ONLINE SHOPPING FOR GADGETS</div>
      <div class="tp_bg"> <a href="#"><img src="images/tp_logo.jpg" width="329" height="71" alt="" class="tp_logo" /></a>
        <div class="tp_txt1"></div>
        <div class="tp_txt2"></div>
      </div>
      <div class="fp_menutile"> <a href=""></a>  <a href="admin.jsp" class="menu2">Home Page</a> <img src="images/tp_divider.gif" width="2" height="59" alt="" class="tp_divider" /> <a href="addproducts.jsp" class="menu2">Add Products</a> <img src="images/tp_divider.gif" width="2" height="59" alt="" class="tp_divider" /> <a href="viewproducts1.jsp" class="menu2">View products</a> <img src="images/tp_divider.gif" width="2" height="59" alt="" class="tp_divider" /> <a href="viewbooked1.jsp" class="menu2">View Booked Products</a> <img src="images/tp_divider.gif" width="2" height="59" alt="" class="tp_divider" /> <a href="#" class="menu2"></a> <img src="images/tp_divider.gif" width="2" height="59" alt="" class="tp_divider" /> <a href="delete.jsp" class="menu2">Delete Product</a> <img src="images/tp_divider.gif" width="2" height="59" alt="" class="tp_divider" /> <a href="index.html" class="menu2">Logout</a> </div>
      <div class="fp_shoppingbg"> <img src="images/tp_image.jpg" width="13" height="11" alt="" class="tp_image1" />
        <div class="tp_txt3"></div>
      </div>
    </div>
   <div>
   
   <%if(msg!=null){%>
			<h1><font color="green"><%=msg%></font></h1>
			<%}%>
	    
	<p> <font color="white">Add product Details</p>
  
 <form name="reg" action="addproduct1.jsp" method="post" onSubmit=" return validation()">
	  
  	 <table class="s1" height="100" >  
	

<tr ><td height="10"></td>
    </tr>
	<tr><td  align="right" ><font color="white">Product Catageory&nbsp;&nbsp;&nbsp;:</td>
    <td ><select name="pcat">
	
	<option value="Mobiles">Mobiles</option>
	<option value="Tablets">Tablets</option>
	<option value="Accessories">Accessories</option>
	
	</select></td></tr><tr ><td height="10"></td>
    </tr>
	<tr ><td height="10"></td>
    </tr>
	</tr>
	<tr><td  align="right" ><font color="white">Product Company&nbsp;&nbsp;&nbsp;:</td>
    <td ><select name="pcompany">
	
	<option value="Apple">Apple</option>
	<option value="Motrola">Motrola</option>
	<option value="Nokia">Nokia</option>
	<option value="sony">sony</option>
	<option value="samsung">Samsung</option>
	<option value="asus">Asus</option>
	<option value="lenova">Lenova</option>
	<option value="micromax">Micromax</option>
	<option value="cables">Cables</option>
	<option value="earphones">Ear Phones</option>
	<option value="batteries">Batteries</option>
	v<option value="memorycards">Memory cards</option>
</select></td></tr><tr ><td height="10"></td>
    </tr>

    </tr>
	<tr ><td  align="right"><font color="white">Product Model&nbsp;&nbsp;&nbsp;:</td>
    <td ><input type="text" name="pmodel" ></td></tr>
	
	<tr ><td height="10"></td>
    </tr>
	
    </tr>
	<tr ><td  align="right"><font color="white">Price&nbsp;&nbsp;&nbsp;:</td>
    <td ><input type="text" name="price" ></td></tr>
	
	<tr ><td height="10"></td>
    </tr>
	
    </tr>
	<tr ><td  align="right"><font color="white">Features&nbsp;&nbsp;&nbsp;:</td>
    <td ><textarea name="features" ></textarea></td></tr>
	
	<tr ><td height="10"></td>
    </tr>
 
   <tr colspan="2" ><td align="center"><input type="submit" value="Add Products"></td><td><center><input TYPE="RESET" VALUE="Reset"></center></td></tr>
</table>

	 </form>
     
	   
     
	 </div>
    <div class="fp_bg">
      <div id="footerblock"> <a href="#" class="fp_txt"></a>
	 <p> <font color="white">All Rights are Reserved</p> 
        
      </div>
    </div>
  </div>
</div>
</body>
</html>