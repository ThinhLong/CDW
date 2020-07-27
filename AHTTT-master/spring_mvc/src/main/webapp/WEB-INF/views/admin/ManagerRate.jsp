<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/common/admin/header.jsp"%>
<div class="container">
	<div class="row">
		<div class="col-sm-12">
			<div align="center">
				<h2>Danh Sách Đánh Gía</h2>
			</div>
			<table id="example2" class="table table-striped table-bordered"
				style="width: 100%">
				<thead>

					<tr>

						<th>ID</th>
						<th>UserId</th>
						<th>PostId</th>
						<th>Time</th>
						<th>Quantity</th>

					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${listrate}">
						<tr>
							<td>${item.getId()}</td>
							<td>${item.getUser_id() }</td>
							<td>${item.getPost_id()}</td>
							<td>${item.getTime_rate()}</td>
							<td>${item.getQuantity()}</td>


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
		$('#example2').DataTable();
	});
</script>
</html>