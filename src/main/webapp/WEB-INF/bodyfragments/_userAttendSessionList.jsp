<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@page isELIgnored="false"%>
<style><%@include file="/WEB-INF/css/session.css"%></style>

<c:url var="addSearch" value="/ctl/attendance/user/attend/search" />



<div class="container">

	<sf:form method="post"
		action="${pageContext.request.contextPath}/ctl/session/search"
		modelAttribute="form">
		<div class="card" style="background-color: #536162; color: white;">
			<h5 class="card-header"
				style="background-color: #536162; color: white;">Attend
				Sessions</h5>
			<div class="card-body">
				<div class="row g-3"></div>
				<b><%@ include file="businessMessage.jsp"%></b>
				
				<table class="table"
					style="background-color: #536162; color: white;">
					<thead>
						<tr>

							<th scope="col" style="text-align: center">S.No</th>
							<th scope="col" style="text-align: center">Session Id</th>
							<th scope="col" style="text-align: center">Session Date</th>
							<th scope="col" style="text-align: center">Session
								Description</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="ses" varStatus="sess">
							<tr>

								<td scope="row" style="text-align: center">${sess.index+1}</td>
								<td scope="row" style="text-align: center">${ses.session.sessionId}</td>
								<td scope="row" style="text-align: center">${ses.session.date}</td>
								<td scope="row" style="text-align: center">${ses.session.description}</td>

							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="clearfix"></div>
				
			</div>

		</div>
	</sf:form>
</div>

