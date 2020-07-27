<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <style>
.user input, button {
	width: 100%;
	height: 35px;
	
}
</style>
<%@ include file="/common/admin/header.jsp"%> --%>
	<div class="container">
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8">

				<div class="user" align="center">
					<div align="center">
						
							<h2>Thêm Bài Viết</h2>
	
					</div>
					<form action= '<c:url value="/admin/savepost"/>' method="post" enctype="multipart/form-data">
						<input type="hidden" name="userid" value="1"> <input
							type="hidden" name="username" value="vodanh"> <input
							type="hidden" name="timepost" value="${post.getTime_post()}">
						<table class="usertable">
							<tr>
								<th>Title</th>
								<td><input type="text" name="title"></td>
							</tr>
							<tr>
								<th>Content</th>
								<td><textarea rows="15" cols="50" name="content"></textarea></td>
							</tr>
							<tr>
								<th>Image</th>
								<td><input type="file" name="fileimg"></td>
							</tr>
							<tr>
								<th>Category</th>
								<td><select name="category" style="width: 100%;height:35px;;">
										<option value="1">Địa điểm</option>
										<option value="2">Ẩm thực</option>
										<option value="3">Văn hóa</option>
										<option value="4">Thiên nhiên</option>
								</select></td>
							</tr>
							<tr>
							<th></th>
							<td><input type="submit" value="Save"></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
		<div class="col-sm-2"></div>
	</div>



