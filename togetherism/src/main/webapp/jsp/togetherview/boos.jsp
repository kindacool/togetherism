<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/headerlib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="card mb-3 border-warning" style="width: 800px; height:250px;line-height:3;border-width: 2px;">

  <div class="row no-gutters">
    <div class="col-md-4">
        <img src="<%=request.getContextPath() %>/upload/${i.club_image}" class="card-img" alt="사진자리"/>
  
    </div>
    <div class="col-md-8">
      <div class="card-body" >
	<h5 class="card-title">제목 자리</h5>

        <p class="card-text">내용 자리 1</p>
        <p class="card-text">내용 자리 2</p>
        <p class="card-text">내용 자리 3</p>

       	
        </div>
      </div>
    </div>
  </div>
</body>
</html>