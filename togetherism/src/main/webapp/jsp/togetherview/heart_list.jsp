<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="<%=request.getContextPath()%>/images/favicon.ico" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="icon" href="<%=request.getContextPath()%>/images/favicon.ico" />
<title>내가 좋아요한 모임 목록</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/heartlist.css" type="text/css">
</head>
<form action="<%=request.getContextPath()%>/heart_list.do">
	<jsp:include page="../include/header.jsp"></jsp:include><br> <br>
	<br> <br> <br>
	<body>
		<div class="wrapper" style="margin-left:100px; margin-right:100px;">
			<div class="content">
				<table>

					<tr>
						<td valign="top"><jsp:include page="../include/sidemenu.jsp"></jsp:include></td>
						<!-- 내가 좋아요한 모임 리스트 -->
						<div class="mt-5 pt-5">
							<div class="container-fluid px-4" id="heart_list">
								<h2 class="heartlist_title" style="text-align: center;">내가
									좋아요한 모임 목록</h2>
								<div id="heart_list_c" style="text-align: center;">내가 좋아요한
									모임 갯수 : ${listcount}</div>

								<td>
									<div>
										<c:if test="${empty heartlist}">
											<div class="mb-3 mt-3">좋아요한 모임이 없습니다.</div>
										</c:if>
									</div> <!-- 반복문 시작 --> <c:if test="${!empty heartlist}">
										<c:forEach var="ch" items="${heartlist}">


											<%-- 리스트 출력 --%>

											<div class="card mb-3 border-warning"
												style="width: 800px; height: 250px; line-height: 3; border-width: 2px;">
												<div class="row no-gutters">
													<div class="col-md-4">
														<img
															src="<%=request.getContextPath() %>/upload/${ch.club_image}"
															width="70" class="card-img-top"
															style="height: 245px; width: 100%" />
													</div>
													<div class="col-md-8">
														<div class="card-body" style="height: 250px;">
															<div class="cover center" style="height: 50px;">
																<div style="float: left;">
																	<h5 class="card-title hidden">
																		<a
																			href="<%=request.getContextPath() %>/club_ct.do?club_num=${ch.club_num }"><c:out
																				value="${ch.club_name}" /></a>
																	</h5>
																</div>

															</div>
															<br> <a
																href="<%=request.getContextPath() %>/club_ct.do?club_num=${ch.club_num }">
																<c:choose>
																	<c:when
																		test="${ch.club_region == 'Seoul_Metropolitan'}">수도권</c:when>
																	<c:when test="${ch.club_region == 'Gangwon'}">강원</c:when>
																	<c:when test="${ch.club_region == 'Gyeongsang'}">경상</c:when>
																	<c:when test="${ch.club_region == 'Jeolla'}">전라</c:when>
																	<c:when test="${ch.club_region == 'Chungcheong'}">충청</c:when>
																	<c:when test="${ch.club_region == 'Jeju'}">제주</c:when>
																	<c:when test="${ch.club_region == 'Abroad'}">해외</c:when>
																</c:choose>
															</a>

															<!-- <p class="card-text"><small class="text-muted">${i.club_reg_date}</small></p>  -->
															<div>
																<div style="float: left;">
																	<a
																		href="<%=request.getContextPath() %>/club_ct.do?club_num=${ch.club_num }"><c:out
																			value="${ch.club_member_count}" /></a>/<a
																		href="<%=request.getContextPath() %>/club_ct.do?club_num=${ch.club_num }"><c:out
																			value="${ch.club_member_limit}" /></a>
																</div>
																<div style="float: right;">
																	<button
																		onclick="location='<%=request.getContextPath() %>/remove1_heart.do?club_num=${ch.club_num }'"
																		class="btn btn-warning"
																		style="width: 200px; height: 40px; border-radius: 20px;">좋아요
																		취소</button>
																</div>
															</div>

														</div>
													</div>
												</div>
											</div>
										</c:forEach>
									</c:if>
									<div id="heartlist_paging">
										<c:if test="${heartPage <=1 }">
				[이전]&nbsp;
			</c:if>

										<c:if test="${heartPage > 1 }">
											<a href="heart_list.do?page=${heartPage-1}">[이전]</a>&nbsp;
			</c:if>

										<c:forEach var="a" begin="${startpage}" end="${endpage}">
											<c:if test="${a == heartpage }">
					[${a}]
				</c:if>
											<c:if test="${a != heartPage }">
												<a href="heart_list.do?page=${a}">[${a}]</a>&nbsp;
				</c:if>
										</c:forEach>

										<c:if test="${heartPage >= maxpage }">
				[다음] 
			</c:if>
										<c:if test="${heartPage < maxpage }">
											<a href="heart_list.do?page=${heartPage+1}">[다음]</a>
										</c:if>

									</div>
								</td>
					</tr>
				</table>
			</div>
		</div>
		<%-- 


						<div class="card mb-3 border-warning shadow-sm"
							style="width: 800px; height: 250px; line-height: 2; border-width: 2px;">

							<div class="row no-gutters">
								<div class="col-md-4">
									<img
										src="p<%=request.getContextPath() %>/upload/${ch.club_image}"
										width="70" class="card-img-top" style="height: 250px;" />

								</div>
								<div class="col-md-8">
									<div class="card-body" style="height: 250px;">
										<div>
											<h5 class="card-title">
												<a
													href="<%=request.getContextPath() %>/club_ct.do?club_num=${ch.club_num }"><c:out
														value="${ch.club_name}" /></a>
											</h5>
										</div>


										<br> <a
											href="<%=request.getContextPath() %>/club_ct.do?club_num=${ch.club_num }">
											<c:choose>
												<c:when test="${ch.club_region == 'Seoul_Metropolitan'}">수도권</c:when>
												<c:when test="${ch.club_region == 'Gangwon'}">강원</c:when>
												<c:when test="${ch.club_region == 'Gyeongsang'}">경상</c:when>
												<c:when test="${ch.club_region == 'Jeolla'}">전라</c:when>
												<c:when test="${ch.club_region == 'Chungcheong'}">충청</c:when>
												<c:when test="${ch.club_region == 'Jeju'}">제주</c:when>
												<c:when test="${ch.club_region == 'Abroad'}">해외</c:when>
											</c:choose>
										</a> <br> <a
											href="<%=request.getContextPath() %>/club_ct.do?club_num=${ch.club_num }"><c:out
												value="${ch.club_keyword}" /></a><br>
										<div class="cover">
											<div style="float: left; padding-bottom: 10px;">
												<a
													href="<%=request.getContextPath() %>/club_ct.do?club_num=${ch.club_num }"><c:out
														value="${ch.club_member_count}" /></a>/<a
													href="<%=request.getContextPath() %>/club_ct.do?club_num=${ch.club_num }"><c:out
														value="${ch.club_member_limit}" /></a>
											</div>
											<div style="float: right;">
												<button
													onclick="location='<%=request.getContextPath() %>/remove1_heart.do?club_num=${ch.club_num }'"
													class="btn btn-warning"
													style="width: 200px; height: 40px; border-radius: 20px;">좋아요취소</button>

												<br>
											</div>
										</div>

										<br>
									</div>
								</div>
							</div>
						</div>
						</c:forEach>
						</c:if> --%>
		<!-- 반복문 끝 -->

	</body>
	<br> <br> <br> <br> <br> <br> <br> <br>
	<br> <br> <br> <br> <br>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include></footer>
</html>