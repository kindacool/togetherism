<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/headerlib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    .cover {
        display: flex;
        justify-content: space-between;
    }
</style>
</head>
<body>

<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#photoModal" data-bs-whatever="@mdo">사진 등록</button>
<form action="<%=request.getContextPath()%>/photo_create.do" method="post" enctype="multipart/form-data">
<input type="hidden" name="club_num" value="${club_num}">

<div class="modal fade" id="photoModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">모임 가입하기</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form>
          <div class="mb-3"> <!-- 이후 유효성검사 -->
            <label for="recipient-name" class="col-form-label">사진</label>
            <input type="file" class="form-control" name="photo_file0" id="recipient-name">
          </div>
          <div class="mb-3"> <!-- 이후 유효성검사 -->
            <label for="recipient-name" class="col-form-label">글귀</label>
            <input type="text" class="form-control" name="photo_content" id="recipient-name">
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소하기</button>
        <button type="submit" class="btn btn-primary">사진 올리기</button>
      </div>
    </div>
  </div>
</div>
</form>


<c:if test="${empty pblist}">
	<div class="alert alert-warning" role="alert" style="width: 640px;">
 		현재 이 모임에 사진이 없습니다!
	</div>
</c:if>
<c:if test="${not empty pblist}">
<div class="row row-cols-1 row-cols-md-4 g-4">
<c:forEach items="${pblist}" var="p">
  <div class="col">
    <div class="card h-100">
      <img src="<%=request.getContextPath() %>/upload/${p.photo_file}" style="width:100%; height:100%" class="card-img-top" alt="defalutimage">
      <div class="card-body">
        <div class='cover'>
        <p class="card-text">${p.photo_content}</p>
<%--   		 <div class="dropdown">
            <button type="button" data-bs-toggle="dropdown" aria-expanded="false" style="background-color:white; border:0; outline:0">
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-three-dots" viewBox="0 0 16 16">
                <path d="M3 9.5a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z"/>
              </svg>
            </button>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">수정</a></li>
              <li><a class="dropdown-item" href="<%=request.getContextPath() %>/photo_delete.do?photo_num=${p.photo_num}&photo_member_email=${p.photo_member_email}&club_num=${club_num}">삭제</a></li>
            </ul>
          </div> --%>
          <a href="<%=request.getContextPath() %>/photo_delete.do?photo_num=${p.photo_num}&club_num=${club_num}">삭제</a>

        </div>
      </div>
<!--       <div class="card-footer">
        <small class="text-muted">Last updated 3 mins ago</small>
      </div> -->
    </div>
  </div>
</c:forEach>
</div>
</c:if>

</body>
</html>




