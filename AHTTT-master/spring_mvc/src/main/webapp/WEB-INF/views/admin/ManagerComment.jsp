<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/common/admin/header.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<div align="center">
					<h2>Danh Sách Bình Luận</h2>
				</div>
				<table id="example4" class="table table-striped table-bordered"
					style="width: 100%">
					<thead>

						<tr>

							<th>ID</th>
							<th>UserName</th>
							<th>PostId</th>
							<th>Time</th>
							<th>Content</th>
							<th>Function</th>

						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${listcomment}">
							<tr>
								<td>${item.getId()}</td>
								<td>${item.getUser_name() }</td>
								<td>${item.getPost_id()}</td>
								<td>${item.getTime_comment()}</td>
								<td>${item.getContent()}</td>
								<td><c:url var="deleteComment" value="/admin/deleteComment">
										<c:param name="id" value="${item.getId()}" />
									</c:url><a href="${deleteComment}"><button>
											<i class='far fa-trash-alt'
												style='font-size: 18px; color: red'></i> Xóa
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
		$('#example4').DataTable();
	});
</script>
</html>