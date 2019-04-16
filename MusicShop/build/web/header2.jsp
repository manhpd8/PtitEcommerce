
<%@page import="java.text.DecimalFormat"%>
<%@page import="get.BrandGet"%>
<%@page import="model.Brand"%>
<%@page import="java.util.Map"%>
<%@page import="model.Item"%>
<%@page import="model.Cart"%>
<%@page import="model.User"%>
<%@page import="model.Category"%>
<%@page import="get.CategoryGet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>header</title>
    </head>
    <body>
        
        <% 
            
        CategoryGet categoryget = new CategoryGet();
        BrandGet brandget = new BrandGet();
        User user = null;
        if(session.getAttribute("user") != null){
            user = (User) session.getAttribute("user");
        }
        
        Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
            DecimalFormat formatter = new DecimalFormat("###,###,###");
        %>
        <div id="header">
        <div class="container">
        <div id="welcomeLine" class="row">
            <div class="span6">Welcome!<strong>
                    <%if(user!=null){ %>
                        <a href="navigate.jsp">Chào <%=user.getUserName()%></a>
                        <% } %>
                        <%if(user==null){ %>

                        <a href="navigate.jsp">My Account</a>
                    <% } %>
                </strong></div>
                <div class="span6">
                <div class="pull-right">
                        <a href="#"><span class="">Fr</span></a>
                        <a href="#"><span class="">Es</span></a>
                        <span class="btn btn-mini">En</span>
                        <a href="checkout.jsp"><span>&pound;</span></a>
                        <span class="btn btn-mini">$<%=formatter.format(cart.totalCart())%></span>
                        <a href="checkout.jsp"><span class="">$</span></a>
                        <a href="checkout.jsp"><span class="btn btn-mini btn-primary"><i class="icon-shopping-cart icon-white"></i> Open your cart </span> </a> 
                </div>
                </div>
        </div>
        <!-- Navbar ================================================== -->
        <div id="logoArea" class="navbar">
        <a id="smallScreen" data-target="#topMenu" data-toggle="collapse" class="btn btn-navbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
        </a>
          <div class="navbar-inner">
            <a class="brand" href="index.html"><img src="images/logo.png" alt="Bootsshop"/></a>
                        <form class="form-inline navbar-search" method="post" action="products.html" >
                        <input id="srchFld" class="srchTxt" type="text" />
                          <select class="srchTxt">
                              <option value="true">All</option>
                            <%
                              for (Category c : categoryget.getListCategory()) {
                            %>
                                <option value="<%=c.getCategoryID()%>"><%=c.getCategoryName()%></option>
                            <% } %>
                        </select> 
                          <button type="submit" id="submitButton" class="btn btn-primary">Go</button>
            </form>
            <ul id="topMenu" class="nav pull-right">
                 <li class=""><a href="#">Specials Offer</a></li>
                 <li class=""><a href="delivery.jsp">Delivery</a></li>
                 <li class=""><a href="contact.jsp">Contact</a></li>
            </ul>
          </div>
        </div>
        </div>
        </div>
        <!-- Header End====================================================================== -->
    </body>
</html>
