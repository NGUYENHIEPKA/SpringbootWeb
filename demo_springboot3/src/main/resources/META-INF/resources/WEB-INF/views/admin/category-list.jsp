<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<a href="/admin/categories/add"> Add Category</a>
<c:if test="${message!=null}">
	${message}
</c:if>

<!-- Hêt thông báo -->
<form action="/admin/categories/searchpaginated">
<input type="text" name="name"
id="name" placeholder="Nhập từ khóa để tìm" />
<button>Search</button>
</form>
<c:if test="${!categoryPage.hasContent()}">
No Category
</c:if>
<c:if test="${categoryPage.hasContent()}">

<table border ="1" width ="100%">
	<tr>
		<th>STT</th>
		<th>images</th>
		<th>CategoryID</th>
		<th>CategoryName</th>
		<th>Status</th>
		<th>Action</th>
	</tr>
	
	<c:forEach items="${categoryPage.content}" var="cate" varStatus="STT">
		<tr>
			<td>${STT.index+1 }</td>		
			<td>		
			<c:if test="${cate.images != null && cate.images.startsWith('https')}">
				<!-- Đường dẫn ảnh từ URL bên ngoài -->
				<img height="150" width="200" src="${cate.images}" />
			</c:if>
			
			<!-- Nếu không phải đường dẫn https -->
			<c:if test="${cate.images != null && !cate.images.startsWith('https')}">
				<!-- Sử dụng c:url để tạo đường dẫn cho ảnh cục bộ -->
				<c:url value="/image?fname=${cate.images}" var="imgUrl"></c:url>
				<img height="150" width="200" src="${imgUrl}" />
			</c:if>
			</td>
			<td>${cate.id }</td>
			<td>${cate.name }</td>
			<td>
			<c:if test="${cate.status ==1 }">
				<span>Hoạt động</span>
			</c:if>
			<c:if test="${cate.status !=1 }">
				<span>Khóa</span>
			</c:if>
			
			
			
			</td>
			<td>
				<a href="<c:url value='/admin/categories/edit/${cate.id }'/>">Sửa</a> 
				| <a href="<c:url value='/admin/categories/delete/${cate.id }'/>">Xóa</a>
			</td>
		</tr>
	</c:forEach>
</table>
</c:if>
<form action=""> Page size:
	<select name="size" id="size" onchange="this.form.submit()">
	<option ${categoryPage.size == 3 ? 'selected':''} value="3">3</option>
	<option ${categoryPage.size == 5 ? 'selected':''} value="5">5</option>
	<option ${categoryPage.size == 10 ? 'selected':''} value="10">10</option>
	<option ${categoryPage.size == 15 ? 'selected':''} value="15">15</option>
	<option ${categoryPage.size == 20 ? 'selected':''} value="20">20</option>
	</select>
	</form>
<c:if test="${categoryPage.totalPages > 0}">
	<ul >
		<c:forEach items="${pageNumbers}" var="pageNumber">
			<c:if test="${categoryPage.totalPages > 1}">
				<li class="${pageNumber == categoryPage.number + 1 ? 'page-item active' : 'page-item'}">
				<a href="<c:url value='/admin/categories/searchpaginated?name=${name}&size=${categoryPage.size}&page=${pageNumber}'/>">${pageNumber}</a>
				</li>
			</c:if>
		</c:forEach>
	</ul>
</c:if>