<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Spring MVC Form Handling</title>
	</head>
	<body>
		<h2>Create New Publication</h2>
		<form:form method="POST" action="/sdnext/save.html">
	   		<table>
			    <tr>
			        <td><form:label path="id">Publication ID:</form:label></td>
			        <td><form:input path="id" value="${publication.id}" readonly="true"/></td>
			    </tr>
			    <tr>
			        <td><form:label path="name">Publication Content:</form:label></td>
			        <td><form:input path="name" value="${publication.content}"/></td>
			    </tr>
			    
			  	<tr>
				    <td>
				    	<form:label path="type">Publication Type:</form:label>
				   		<form:select path="type">    
							<c:forEach items="${categories}" var="category">
							<option value="category.categoryName">${category.name}</option>
							</c:forEach>
						</form:select>
					</td>
			    </tr>
			    <tr>
			      <td colspan="2"><input type="submit" value="Submit"/></td>
		      </tr>
			</table> 
		</form:form>
		
  <c:if test="${!empty publications}">
		<h2>List publications</h2>
	<table align="left" border="1">
		<tr>
			<th>ID</th>
			<th>Content</th>
			<th>Type</th>
			<th>Actions on Row</th>
		</tr>

		<c:forEach items="${publications}" var="publication">
			<tr>
				<td><c:out value="${publication.id}"/></td>
				<td><c:out value="${publication.name}"/></td>
				<td><c:out value="${publication.type}"/></td>
				<td align="center"><a href="edit.html?id=${publication.id}">Edit</a> | <a href="delete.html?id=${publication.id}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
</c:if>
	</body>
</html>