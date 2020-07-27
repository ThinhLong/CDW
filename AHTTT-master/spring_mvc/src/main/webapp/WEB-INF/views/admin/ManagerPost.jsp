<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ include file="/common/admin/header.jsp"%> --%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<%@ include file="/common/taglib.jsp" %>
<div class="container">
	<div class="row">
		<div class="col-sm-12">
			<div align="center">
				<h2>Danh Sách Bìa Viết</h2>
				<a href="addpost"><button
											style="padding-top: 2px; padding-bottom: 2px; font-weight: bold;">
											<i class="fa fa-plus-circle"
												style="font-size: 20px; color: blue"></i> Thêm
										</button></a>
			</div>
			<table id="example3" class="table table-striped table-bordered"
				style="width: 100%">
				<thead>

					<tr>

						<th>Id</th>
						<th>Title</th>
						<th>Username</th>
						<th>Content</th>
						<th>Time</th>
						<th>Function</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${listpost}">
						<tr>
							<td>${item.getId()}</td>
							<td>${item.getTitle()}</td>
							<td>${item.getUsername()}</td>
							<td>${item.getContent()}</td>
							<td>${item.getTime_post()}</td>
							<td><c:url var="deleteComment" value="/admin/deletePost">
									<c:param name="id" value="${item.getId()}" />
								</c:url> <a href="${deleteComment}"><button
										onclick="if (!confirm('Are you sure?')) { return false }">
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
<%-- <script type="text/javascript"
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
		$('#example3').DataTable();
	});
</script> --%>

