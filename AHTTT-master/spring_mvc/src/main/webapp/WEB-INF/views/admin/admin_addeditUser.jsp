<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.user input, button {
	width: 100%;
	height: 35px;
	font-size: 10px;
}
</style>
<%@ include file="/common/admin/header.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8">

				<div class="user" align="center">
					<div align="center">
						<c:if test="${user.getId() > 0}">
							<h2>Cập Nhật Tài Khoản</h2>
						</c:if>
						<c:if test="${user.getId() < 1}">
							<h2>Thêm Tài Khoản</h2>
						</c:if>
					</div>
					<table class="usertable">
						<form:form action="admin/saveUser" method="POST"
							modelAttribute="user">
							<c:if test="${not empty user.getId()}">
								<form:hidden path="id" />
							</c:if>

							<tr>
								<th>Username</th>
								<td><form:input path="username" /></td>
							</tr>
							<c:if test="${user.getId() < 1 }">
								<tr>
									<th>PassWord</th>
									<td><form:password path="password" /></td>
								</tr>
							</c:if>
							<c:if test="${not empty user.getId()}">
								<form:hidden path="password" />
							</c:if>

							<tr>
								<th>Phone</th>
								<td><form:input path="phone" /></td>
							</tr>
							<tr>
								<th>Role</th>
								<td><form:select path="role"
										style="width: 300px;height:35px;;">
										<form:option value="1">Admin</form:option>
										<form:option value="2">User</form:option>
									</form:select></td>
							</tr>
							<tr>
								<th></th>
								<th><form:button style="background: lightblue;">Save</form:button></th>
							</tr>
						</form:form>
					</table>
				</div>
			</div>
		</div>
		<div class="col-sm-2"></div>
	</div>

</body>


</html>