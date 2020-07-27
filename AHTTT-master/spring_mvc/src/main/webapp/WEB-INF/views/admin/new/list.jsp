<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Danh sách bài viết</title>
	</head>

	<body>
	<div class="container">
		<h2>Demo table record from db</h2>
		<p>Demo demo demo</p>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Tên bài viết</th>
					<th>Mô tả ngắn</th>
					<th>Thao tác</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${model.listResult}">
					<tr>
						<td>${item.title}</td>
						<td>${item.shortDescription}</td>
						<td><a class="btn btn-sm btn-primary btn-edit"
							data-toggle="tooltip" title="Cập nhật bài viết" href='#'><i
								class="fa fa-pencil-square-o" aria-hidden="true"></i> </a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<!-- /.main-content -->
		<script>
		
		</script>
	</body>

	</html>