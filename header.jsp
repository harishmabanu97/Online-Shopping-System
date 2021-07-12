<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<div class="collapse navbar-collapse menu--shylock"
	id="bs-example-navbar-collapse-1">
	<ul class="nav navbar-nav menu__list">
	
		<li class="active menu__item menu__item--current"><a
			class="menu__link" href="index.jsp">Home <span class="sr-only">(current)</span></a></li>
		<li class="active menu__item menu__item"><a class="menu__link"
			href="mens.jsp">Men's / Women's WEAR </a></li>
		<li class=" menu__item"><a class="menu__link"
			href="electronics.jsp">Electronics</a></li>
			<li class=" menu__item"><a class="menu__link"
			href="homeappliances.jsp">Home appliances</a></li>
			<li class=" menu__item"><a class="menu__link"
			href="Makeup_products.jsp">Makeup products</a></li>
			<li class=" menu__item"><a class="menu__link"
			href="Groceries.jsp">Groceries</a></li>
			<li class=" menu__item"><a class="menu__link"
			href="vegtables&fruits.jsp">vegtables & fruits</a></li>
			<li class=" menu__item"><a class="menu__link"
			href="kids-section.jsp">Kids Section</a></li>
			<li class=" menu__item"><a class="menu__link"
			href="musical-instrument.jsp">Musical Instruments</a></li>
			<li class=" menu__item"><a class="menu__link"
			href="sports&fitness.jsp">Sports & Fitness</a></li>
			<li class=" menu__item"><a class="menu__link"
			href="fasionjewellery.jsp">Fashion Jewellery</a></li>
			<li class=" menu__item"><a class="menu__link"
			href="petsupplies.jsp">Pet Supplies</a></li>
			
		<li class=" menu__item"><a class="menu__link" href="contact.jsp">Contact</a></li>
		<li class=" menu__item"><a class="menu__link" href="aboutus.jsp">About Us</a></li>
		
				<li class=" menu__item"><a class="menu__link" href="user_rating.jsp">Rate this website</a></li>
		     
		<%
			if ((String) session.getAttribute("name") != null) {
		%>
		<li class="dropdown menu__item"><a href="#"
			class="dropdown-toggle menu__link" data-toggle="dropdown"
			role="button" aria-haspopup="true" aria-expanded="false"><%=session.getAttribute("name")%>
				<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<div class="row">
					<div class="col-sm-12">
						<ul class="multi-column-dropdown">
							<li><a href="checkout.jsp">&nbsp;&nbsp;&nbsp;My Cart</a></li>
							<li><a href="my-orders.jsp">&nbsp;&nbsp;&nbsp;My Orders</a></li>
							<li><a href="my-own-profile.jsp">&nbsp;&nbsp;&nbsp;My
									Profile</a></li>
							<li><a href="changeCustomerPassword.jsp">&nbsp;&nbsp;&nbsp;Change
									Password</a></li>
									<li><a href="changeCustomerAddress.jsp">&nbsp;&nbsp;&nbsp;Change
									Address</a></li>
							<li><a href="logout.jsp">&nbsp;&nbsp;&nbsp;Logout</a></li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
			</ul></li>
		<%
			} else {
		%>
		<li class="menu__item"><a class="menu__link"
			href="customer-login.jsp"><span
				class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;Login</a></li>
		<%
			}
		%>
	   <li class=" menu__item"><a class="menu__link" href="help.jsp">Help&nbsp;<span class="glyphicon glyphicon-question-sign"></span></a></li>
	</ul>
</div>
