<%@include file="/views/common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="/views/common/head.jsp"%>
	<title>Lesson 03 - List Account</title>
</head>
<body>
	<div class="container">
		<jsp:include page="/views/common/header.jsp">
			<jsp:param name="current" value="index" />
		</jsp:include>

		<div class="content row">
			<div class="col-3 page-sidebar">
				<jsp:include page="/views/common/sidebar.jsp">
					<jsp:param name="current" value="page-directive" />
				</jsp:include>
			</div>
			<div class="col-9 page-content">
				<h1 class="page-title"> List account.</h1>
				<table class="table">
					<thead>
					<tr>
						<th>Id</th>
						<th>Account</th>
						<th>Full Name</th>
						<th>Birth Of Date</th>
					</tr>
					</thead>
					<tbody>
						<c:forEach items="${accountDtoList}" var="accountDto" >
							<tr>
								<td>${accountDto.id}</td>
								<td>${accountDto.account}</td>
								<td>${accountDto.fullName}</td>
								<td>${accountDto.dateOfBirth}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

		<jsp:include page="/views/common/footer.jsp">
			<jsp:param name="current" value="index" />
		</jsp:include>
	</div>
</body>
</html>