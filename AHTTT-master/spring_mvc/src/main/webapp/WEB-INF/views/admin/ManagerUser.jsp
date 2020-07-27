<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/common/admin/header.jsp"%>
<div class="container">
	<div class="row">
		<div class="col-sm-12">
			<div align="center">
				<h2>Danh Sách Người Dùng</h2>
			</div>
			<table id="example" class="table table-striped table-bordered"
				style="width: 100%">
				<thead>

					<tr>

						<th>ID</th>
						<th>UserName</th>
						<th>Phonenumber</th>
						<th>Function</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${listUser}">
						<tr>
							<td>${item.getId()}</td>
							<td>${item.getUsername() }</td>
							<td>${item.getPhone()}</td>
							<td><button>
									<i class='far fa-trash-alt' style='font-size: 18px; color: red'></i>
									Xóa
								</button> <c:url var="updateUser" value="/admin/editUser">
									<c:param name="id" value="${item.id}" />
								</c:url> <a href="${updateUser}"><button>
										<i class="fas fa-edit" style="font-size: 18px"></i>Sửa
									</button></a></td>
						</tr>
					</c:forEach>
				</tbody>

			</table>
		</div>
	</div>
</div>

</body>
<script type="text/javascript"
	src='<c:url value="resources/DataTables/js/bootstrap.js"/>'>
	
</script>
<script type="text/javascript"
	src='<c:url value="resources/DataTables/js/jquery-3.3.1.min.js"/>'>
	
</script>
<script type="text/javascript"
	src='<c:url value="resources/DataTables/js/jquery.dataTables.js"/>'>
	
</script>
<script type="text/javascript"
	src='<c:url value="resources/DataTables/js/dataTables.bootstrap.js"/>'>
	
</script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#example').DataTable();
	});
</script>
</html>