<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>

	<div id="container">
		<div id="content">
		
		<!-- Put new button  for  adding customer -->
		<input type='button' value='Add Customer' onclick="window.location.href='showForm'; return false;"
		class='add-button'/>
		
		
			<table border="1">
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email Id</th>
					<th>Action</th>
				</tr>

				<c:forEach var="customer" items="${customers}">
					<c:url var="updateLink" value="/customer/showFormForUpdate">
						<c:param name="customerId" value="${customer.id}"/>
					</c:url>
					
					<c:url var="deleteLink" value="/customer/showFormForDelete">
						<c:param name="customerId" value="${customer.id}"/>
					</c:url>
					<tr>
						<td>${customer.firstName}</td>
						<td>${customer.lastName}</td>
						<td>${customer.emailId}</td>
						<td>
						<a href='${updateLink}'>UPDATE</a>
						<a href="${deleteLink}"
								onclick="if(!(confirm('Are you sure u want to delete this customer?')))return false;">DELETE</a>
						</td>
					</tr>
				</c:forEach>

			</table>
		</div>
	</div>

</body>
</html>