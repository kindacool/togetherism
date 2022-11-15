<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>     
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="<%=request.getContextPath()%>/images/favicon.ico" />
<title>내가 참여한 이벤트</title>
<style type="text/css">

#box{background-color:#F6F7F8;}

.wrapper {
        display: flex;
        justify-content: center;
        align-items: center;
      }
.content {
        padding: 1rem;
        }
        
.host{
    float: left;
  }
  
.cover{
  display: flex;
  justify-content: space-between;
  }

</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>

</head>
<body>
<div id="box">
<jsp:include page="../include/header.jsp"></jsp:include><br><br><br><br><br>

<div class="wrapper"><div class="content">
<table>
<tr>
<td valign=top><jsp:include page="../include/sidemenu.jsp"></jsp:include>
</td>

<td align="center" class="wrapper" width="800px">
<div id="eventlist_wrap">
<h2 align="right" style="font-weight: bold; color: #5e17eb">Togetherism</h2>
<h2 align="right" style="font-weight: bold;">내가 참석한 이벤트</h2>
<br><br><br><br><br><br>



<c:forEach var="my" items="${attendMylist}"> 
<%-- 여기부터 카드 시작 --%>
<div class="card mb-3 border-warning" style="width: 800px; height: 250px;line-height:3;border-width: 2px;">
  <div class="row no-gutters">
    <div class="col-md-4">
    <a href="<%=request.getContextPath() %>/event_cont.do?club_num=${my.club_num}&event_num=${my.event_num }&eventPage=1&state=cont"> 
    <img src="<%=request.getContextPath() %>/upload/${my.event_file}" class="card-img full" style="width:100%; height:245px"/>
    </a>
    </div>
    <div class="col-md-8">
      <div class="card-body" style="height:250px;">
      <div class="center cover" style="height:50px;">
        <h5 class="card-title hidden" style="float:left;"><a href="<%=request.getContextPath() %>/event_cont.do?club_num=${my.club_num}&event_num=${my.event_num }&eventPage=1&state=cont" 
        style="text-decoration:none;">${my.event_title}</a></h5>   
	  </div>
      <div class="center cover" style="height:50px;">
        <p class="card-title hidden" style="float:left;"><a href="<%=request.getContextPath() %>/event_cont.do?club_num=${my.club_num}&event_num=${my.event_num }&eventPage=1&state=cont" 
        style="text-decoration:none;">
        <c:choose>
           <c:when test="${my.event_region == 'Seoul_Metropolitan'}">수도권</c:when>
           <c:when test="${my.event_region == 'Gangwon'}">강원</c:when>
           <c:when test="${my.event_region == 'Gyeongsang'}">경상</c:when>
           <c:when test="${my.event_region == 'Jeolla'}">전라</c:when>
           <c:when test="${my.event_region == 'Chungcheong'}">충청</c:when>
           <c:when test="${my.event_region == 'Jeju'}">제주</c:when>
           <c:when test="${my.event_region == 'Abroad'}">해외</c:when>
        </c:choose>
        </a></p>
      </div>
      <div class="center cover" style="height:50px;">
        <p class="card-title hidden" style="float:left;"><a href="<%=request.getContextPath() %>/event_cont.do?club_num=${my.club_num}&event_num=${my.event_num }&eventPage=1&state=cont" 
        style="text-decoration:none;">${my.event_date}</a></p>
      </div>       
      <div style="float:right;">
        <button onclick="location.href='<%=request.getContextPath() %>/event_user_attend_no.do?event_num=${my.event_num }&club_num=${my.club_num}'"
				 class="btn btn-danger">참석취소</button>
      </div>
     </div>
   </div>
    </div>
   </div>
</c:forEach>

				<ul style= "margin-right: auto;" >
					<c:if test="${pp.startPage > pp.pagePerBlk }">
						<li><a href="<%=request.getContextPath() %>/event_user_attend_mylistPaging.do?attendPage=${pp.startPage - 1}">
						이전</a>
						</li>
					</c:if>
					<c:forEach var="i" begin="${pp.startPage}" end="${pp.endPage}">
						<li <c:if test="${pp.page==i}">class="active"</c:if>>
							<a href="<%=request.getContextPath() %>/event_user_attend_mylistPaging.do?attendPage=${i}">
							${i}
							</a>
						</li>
					</c:forEach>
					<c:if test="${pp.endPage < pp.totalPage}">
						<li>
							<a href="<%=request.getContextPath() %>/event_user_attend_mylistPaging.do?attendPage=${pp.endPage + 1}">
							다음</a>
						</li>
					</c:if>
				</ul>


</div>
</td>
</tr>
			
</table> 
		
		
		


</div>

</div>
</div>

<br><br><br><br><br>
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>