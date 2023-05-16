<%@page import="DTO.Order"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Medico</title>
    <link rel="icon" type="image/png" href="http://example.com/myicon.png">
    <link rel="icon" type="image/png" href="image/user.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/prod.css">
    
    	<script type="text/javascript">

function preventBack(){window.history.forward()};
setTimeout("preventBack()",0);
window.onunload=function(){null;}

</script>
</head>
<body>


    <div>
        <nav>
            <table>
                <tr>
                    <td>
                    <label><%
                    
                   String ses =(String)session.getAttribute("session");
                    if(ses!=null){
                    	out.print("Welcome "+ ses);
                    	
                    }
                    
                    %></label>
                        <h1 class="fl1">Online Medical</h1>
                        <h4 class="fl1">Explore plus +</h4>
                        
                    </td>
                    <td><input type="search" placeholder="Search for product,brands and more Medicine"></td>
                    <td><button>Search</button></td>
                   
                    <td><select class="more">
                        <option>More</option>
                        <option>Notification prefrence</option>
                        <option>27x7 Costumer support</option>
                        <option>Adervties</option>
                        <option>Download app</option>
                    </select></td>
                    <td><a class="cart" href="addcart.jsp"><i class="fa fa-shopping-cart" style="font-size:25px">&nbsp;</i>Cart</a>
                    
                
			<a href=<%=response.encodeURL("LogOut.jsp")%>>Logout</a>
	
                    </td>
                </tr>
            </table>
        </nav>
    </div>
   
    
    <div class="se-row">
         <div>
            <h1>Best Of </h1>
            <h1>Ayurvedic Medicine</h1>
            
            <div>
                <img src="images/Ayurveda.jpg" width="250" height="200">
            </div>
            <button>View all</button>
            
         </div>
         <div>
            <img class="im2" src="images/medi01.jpg" alt="">
            <div name="aayu" value="">
                <h3>Kapiva Acne<br>
                Ease Juice 1<br>
               Ayurvedic Juice </h3>
                <p>Price :200RS</p>
                 <form action="Cart02" method="post">
            <input type="hidden" name="product_name" value="Kapiva Acne">
            <input type="hidden" name="product_price" value="200">
            <button type="submit" name="add_to_cart">Add to Cart</button>
           </form>
            </div>
            
            
         </div>
         <div>
            <img class="im2" src="images/medi02.jpg" alt="">
            <div >
                <h3>Blood  <br>
                Pressure<br>
                Balance</h3>
                <p>Price :400RS</p>
                  <form action="Cart02" method="post">
            <input type="hidden" name="product_name" value="Blood Pressure">
            <input type="hidden" name="product_price" value="400">
            <button type="submit" name="add_to_cart">Add to Cart</button>
           </form>
            </div>
         </div>
         <div>
            <img class="im2" src="images/medi03.jpg" alt="">
            <div>
                <h3>Urid Capsule Ayurvedic Medicine<br>
                for Kidney Stone Pain<br>
                Reduce Bladder Infection</h3>
                <p>Price :1200RS</p>
                <form action="Cart02" method="post">
            <input type="hidden" name="product_name" value="Urid Capsule">
            <input type="hidden" name="product_price" value="1200">
            <button type="submit" name="add_to_cart">Add to Cart</button>
           </form>
            </div>
         </div>
         <div>
            <img class="im2" src="images/medi04.jpg" alt="">
            <div name="aayu">
                <h3 id="">Smart N Slim Capsule Ayurvedic <br>
                From 10999<br>
                Epson</h3>
                <p>Price :300RS</p>
                <form action="Cart02" method="post">
            <input type="hidden" name="product_name" value="Smart N Slim Capsule">
            <input type="hidden" name="product_price" value="300">
            <button type="submit" name="add_to_cart">Add to Cart</button>
           </form>
            </div>
         </div>

    </div>
    <div class="se-row">
<div>
            <h1>Best Of </h1>
            <h1>Ayurvedic Medicine</h1>
            
            <div>
                <img src="images/Ayurveda.jpg" width="250" height="200">
            </div>
            <button>View all</button>
            
         </div>
         <div>
            <img class="im2" src="images/medi01.jpg" alt="">
            <div name="aayu" value="">
                <h3>Kapiva Acne<br>
                Ease Juice 1<br>
               Ayurvedic Juice </h3>
                <p>Price :200RS</p>
                 <form action="Cart02" method="post">
            <input type="hidden" name="product_name" value="Kapiva Acne">
            <input type="hidden" name="product_price" value="200">
            <button type="submit" name="add_to_cart">Add to Cart</button>
           </form>
            </div>
         </div>
         <div>
            <img class="im2" src="images/medi02.jpg" alt="">
            <div >
                <h3>Blood  <br>
                Pressure<br>
                Balance</h3>
                <p>Price :400RS</p>
               <form action="Cart02" method="post">
            <input type="hidden" name="product_name" value="Blood Pressure">
            <input type="hidden" name="product_price" value="400">
            <button type="submit" name="add_to_cart">Add to Cart</button>
           </form>
            </div>
         </div>
         <div>
            <img class="im2" src="images/medi03.jpg" alt="">
            <div>
                <h3>Urid Capsule Ayurvedic Medicine<br>
                for Kidney Stone Pain<br>
                Reduce Bladder Infection</h3>
                <p>Price :1200RS</p>
                 <form action="Cart02" method="post">
            <input type="hidden" name="product_name" value="Urid Capsule">
            <input type="hidden" name="product_price" value="1200">
            <button type="submit" name="add_to_cart">Add to Cart</button>
           </form>
            </div>
         </div>
         <div>
            <img class="im2" src="images/medi04.jpg" alt="">
            <div name="aayu">
                <h3>Smart N Slim Capsule Ayurvedic <br>
                From 10999<br>
                Epson</h3>
                <p>Price :300RS</p>
                <form action="Cart02" method="post">
            <input type="hidden" name="product_name" value="Smart N Slim Capsule">
            <input type="hidden" name="product_price" value="300">
            <button type="submit" name="add_to_cart">Add to Cart</button>
           </form>
            </div>
         </div>

    </div>

   
   
</body>
</html>