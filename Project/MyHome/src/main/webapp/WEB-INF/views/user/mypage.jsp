<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>  마이 페이지  </title> 
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/home-icon.png">

	<meta name="description" content="Source code generated using layoutit.com">
	<meta name="author" content="LayoutIt!">

	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/mypage.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/mypage2.css" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
 	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
 	<script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
	
	<style>
		

	</style>

</head>
 
 <body>
 <section>
 	<div class="container-fluid">
 		<div class="row">
 			<div class="col-md-3">
 				<div class="my_icon">
 					<c:choose>
 						<c:when test="${userInfo.profile === null}">
 							<img class="my" src='${pageContext.request.contextPath}/resources/img/mi_icon.webapp'>
 						</c:when>
 						<c:otherwise>
		 					<img class="my" src='<c:url value="/user/display?profile=${userInfo.profile }"/>'>
 						</c:otherwise>
 					</c:choose>
 					<div class="ninkname">${userInfo.nickName } </div>
 					<div class="Attention">
 						<div class="inner">
 							<a class="scrap_url scrap-btn" href="#">
 								<div class="scrap_icon"><svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" preserveAspectRatio="xMidYMid meet">
 										<path fill-rule="evenodd" transform="matrix(1 0 0 -1 0 23.033)"
 											d="M12.943 6.342a2 2 0 0 1-1.886 0L3 2.032V20.5a.5.5 0 0 0 .5.5h17a.5.5 0 0 0 .5-.5V2.033l-8.057 4.309zm-.471-.882l8.056-4.31A1 1 0 0 1 22 2.034V20.5a1.5 1.5 0 0 1-1.5 1.5h-17A1.5 1.5 0 0 1 2 20.5V2.033a1 1 0 0 1 1.472-.882l8.056 4.31a1 1 0 0 0 .944 0z">
 										</path>
 									</svg></div>
 								<div class="scrap_ko">스크랩북</div>
 								<div class="scrap_count">0</div>
 							</a>
 						</div>
 						<div class="inner">
 							<a class="heart_url" href="#">
 								<div class="heart"><svg width="24" height="24"
 										viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
 										<path fill="currentColor"
 											d="M22.971 7.638c-.548-5.17-7.119-7.135-10.57-2.488a.5.5 0 0 1-.802 0C8.148.503 1.577 2.469 1.029 7.625.642 12.451 3.897 17.183 12 21.436c8.104-4.252 11.36-8.984 10.972-13.798zm.996-.093c.428 5.319-3.137 10.446-11.738 14.899a.5.5 0 0 1-.46 0C3.169 17.99-.395 12.864.034 7.532.656 1.67 7.904-.683 12 4.052 16.096-.683 23.344 1.67 23.967 7.545z">
 										</path>
 									</svg></div>
 								<div class="heart ko">좋아요</div>
 								<div class="heart count">0</div>
 							</a>
 						</div>

						 <button id="#" onclick="location.href='<c:url value="/user/userModify" />'" class="btn btn-sm btn-info btn-block" type="button">개인정보 수정</button>
						 <button id="#" class="btn btn-sm btn-info btn-block btn-open-popup" type="button">회원 탈퇴</button>
 				</div>
               

 			</div>
			 
 		</div>

	
        <div class="col-md-9">
			<div class="board">
				
				<div class="category">
					<ul>			
						<li class="category-item is-active" data-filter4="" data-sort="" >
							<button type="button" id="home-btn" class="btn btn-default btn-sm" style="border: 1px solid black;">뽐내기</button>
						</li>
					
						<li class="category-item" data-filter4="" data-sort="rgstdtime">
							<button type="button" id="quiz-btn" class="btn btn-default btn-sm" style="border: 1px solid black;">질문과답변</button>
						</li>
						
						<li class="category-item" data-filter4="" data-sort="rgstdtime">
							<button type="button" class="btn btn-default btn-sm scrap-btn" style="border: 1px solid black;">스크랩 </button>
						</li>

						<li class="category-item" data-filter4="" data-sort="rgstdtime">
							<button type="button" id="upgrade-btn" class="btn btn-default btn-sm" style="border: 1px solid black;">등업신청</button>
						</li>
		               
		                <c:choose>
		                	<c:when test="${userInfo.grade == 'admin' }">
							</c:when>
							<c:when test="${userInfo.grade == 'pro'}">
								<li class="category-item" data-filter4="" data-sort="rgstdtime">
									<button type="button" id="reco-quiz-btn" class="btn btn-default btn-sm" style="border: 1px solid black;">추천질문</button>
								</li>
							</c:when>
						</c:choose>
						<li class="category-item" data-filter4="" data-sort="rgstdtime" style="position: absolute; left: 55%;">
							<button id="'#" class="btn btn-sm btn-info btn-block " style="border: 1px solid black;" type="submit">작성</button>
						</li>
		
					</ul>
				</div>
				
				<div class="articles-wrap">
					<!-- 비동기로 작성 
					<div class="col-md-3 cards">
						<div class="card" style="width: 13rem;">
							<img src="${pageContext.request.contextPath}/resources/img/interior10.png" class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">${a.title }</h5>
								<p class="card-text">
									글내용
								</p>
								<hr>
								<div class="d-flex justify-content-between align-items-center">
			
			
									<a class="dete"><fmt:formatDate value="${a.regDate }" pattern="yyyy-MM-dd"/> </a>
									<a class="eye"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											fill="currentColor" class="bi bi-eye-fill" viewBox="0 0 16 16">
											<path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"></path>
											<path
												d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z">
											</path>
										</svg>${a.viewCnt }</a>
			
								</div>
							</div>
						</div>
					</div>
					게시글이 존재하지 않습니다.
					-->
				</div>
				
				

			</div>
		</div>

	</div>

	<nav id="page-btn-wrap" class="pagination-sm pag">
	<!--  
		<ul class="pagination">
				<li class="page-item">
					<a class="page-link" href="#">
						◁
					</a>
				</li>			
				<li class="page-item">
					<a class="page-link" href='<c:url value="/" />'>
						${i }
					</a>
				</li>
			<li class="page-item">
				<a class="page-link" href="#">
					▷
				</a>
			</li>
		</ul>
	-->
	</nav>
</div>
 </section>
 
 <!-- 회원 탈퇴 모달 -->
 <div class="modal">
	<div class="modal_body block"><strong>회원탈퇴</strong><br>
  
	  <div class="container">
		<div class="row">
		  <div>
			<img class="modal-img" src="${pageContext.request.contextPath}/resources/img/logo2.jpg" alt="로고사진">
		  </div>
		  <form action='<c:url value="/user/userDelete" />' method="post">
			  <div class="low">
				<label for="inputPassword" class="sr-only">Password</label>
				<input type="password" id="pw" class="form-control" placeholder="비밀번호를 입력해주세요." required>
				<input type="hidden" name="id" value="${userInfo.id}">
			  </div>
				  <button type="button" id="del-btn" class="btn btn-info btn-sm">확인</button>
  		  </form>
		   </div>
			</div>
		</div>
	  </div>
 
</body>

<script>

	
	// jquery start
	$(function() {
		
		getList('home', 1);
		
		// 뽐내기 버튼 클릭
		$('#home-btn').click(function() {
			getList('home', 1);
		});
		
		// 스크랩 버튼
		$('.scrap-btn').click(function() {
			getList('scrap', 1);
		});
		
		// 질문/답변 버튼 클릭
		$('#quiz-btn').click(function() {
			getList('quiz', 1);
		});
		
		// 추천/질문 버튼
		$('#reco-quiz-btn').click(function() {
			getList('recoQuiz', 1);
		});
		
		// 등업 신청 버튼
		$('#upgrade-btn').click(function() {
			getList('upgrade', 1);
		});
		
		let StrAdd = "";
		let pageStr = "";
		// 목록(비동기)
		function getList(type, pageNum) {
			
			$.getJSON(
				"<c:url value='/user/getList/" + type + "?pageNum=" + pageNum + "'/>",
				function(data) {
					
					let list = data.list;
					let paging = data.paging;
					console.log("뽐내기 목록");
					console.log(list);
					
					StrAdd = '';
					
					if(list[0] !== null) {
						if(type === 'home' || type === 'scrap') {
							for(let i=0; i<list.length; i++) {
								StrAdd += "<div class='col-md-3 cards'>";
								StrAdd += "<div class='card' style='width: 13rem;'>";
								StrAdd += "<img src='${pageContext.request.contextPath}/resources/img/interior10.png' class='card-img-top' alt='미리보기'>";
								StrAdd	+= "<div class='card-body'>";
								StrAdd	+= "<h5 class='card-title'><a href='<c:url value='/myhome/homeDetail?bno=" + list[i].bno + "'/>'>" + list[i].title + " </a></h5>";
								StrAdd	+= "<p class='card-text'>글내용</p>";
								StrAdd	+= "<hr>";
								StrAdd	+= "<div class='d-flex justify-content-between align-items-center'>";
								StrAdd	+= "<a class='dete'>" + timeStamp(list[i].regDate) + "</a>";
								StrAdd	+= "<a class='eye'><svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-eye-fill' viewBox='0 0 16 16'>";
								StrAdd	+= "<path d='M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z'></path>";
								StrAdd	+= "<path d='M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z'></path>";
								StrAdd	+= "</svg>" + list[i].viewCnt + "</a>";
								StrAdd	+= "</div>";
								StrAdd	+= "</div>";
								StrAdd	+= "</div>";
								StrAdd	+= "</div>";
							}
						} else if(type === 'quiz' || type === 'recoQuiz' || type ==='upgrade') {
								StrAdd += "<div class='col-md-12'>";
								StrAdd += "<div class='board'>";
								StrAdd += "<div class='row'>";
								StrAdd += "<div class='col-md-12'>";
								StrAdd += "<div><table class='table table-hover table-bod' style='width: 800px;'>";
								StrAdd += "<thead><tr style='background-color: #17a2b8;'>";
								StrAdd += "<th width='10%'>번호</th>";
								StrAdd += "<th width='45%'>제목 </th>";
								StrAdd += "<th width='15%'>작성자 </th>";
								if(type === 'upgrade') {
									StrAdd += "<th width='20%'>가입일</th>";
									StrAdd += "<th width='10%'>등급</th></tr></thead>";
									for(let i=0; i<list.length; i++) {
										StrAdd += "<tbody><tr><td>" + list[i].userNum + "</td>";
										StrAdd += "<td class='title'>";
										StrAdd += "<a href='<c:url value='/user/proInfo/" + list[i].userNum + "' />'>" + list[i].nickName +"님의 등업 신청 </a>";
										StrAdd += "<span class='new'>NEW!</span></td>";
										StrAdd += "<td>" + list[i].nickName + "</td><td>" + timeStamp(list[i].regDate) + "</td>";
										StrAdd += "<td>" + list[i].grade + "</td><tr></tbody>";
									}
								} else {
									StrAdd += "<th width='20%'>작성일</th>";
									StrAdd += "<th width='10%'>조회</th></tr></thead>";
									for(let i=0; i<list.length; i++) {
										StrAdd += "<tbody><tr><td>" + list[i].quizNum + "</td>";
										StrAdd += "<td class='title'>";
										StrAdd += "<a href='<c:url value='/quiz/quizDetail/" + list[i].quizNum + "' />'>" + list[i].title + "</a>";
										StrAdd += "<span class='new'>NEW!</span></td>";
										StrAdd += "<td>" + list[i].writer + "</td><td>" + timeStamp(list[i].regDate) + "</td>";
										StrAdd += "<td>" + list[i].views + "</td><tr></tbody>";
									}
								}

								StrAdd += "</table></div></div></div></div></div>";
							}
					}else {
							StrAdd	+= "게시글이 존재하지 않습니다.";
					}
					$('.articles-wrap').html(StrAdd);
					
					// 페이지 버튼 생성
					if(list.length > 0) {
						pageStr = '';
						
						pageStr += "<ul class='pagination'>";
						
						if(paging.prev) {
							pageStr += "<li class='page-item'>";
							pageStr += "<button class='page-link'>◁</button>";
							pageStr += "</li>";										
						}
						
						for(let k=paging.beginPage; k<=paging.endPage; k++) {
							pageStr += "<li class='page-item'>";
							pageStr += "<button type='" + type + "' pageNum='" + k + "' class='page-link' />" + k + "</button>";
							pageStr += "</li>";
							}
						
						if(paging.next) {
							pageStr += "<li class='page-item'>";
							pageStr += "<button id='#' class='page-link'>▷</button>";
							pageStr += "</li>";
						}
					
						pageStr += "</ul>";
						
						$('#page-btn-wrap').html(pageStr);
					} // 페이지 버튼 생성 끝
					
				}
					
			); //getJson end
		} // 목록 함수 끝
		
		// 댓글 페이징 이벤트
		$('#page-btn-wrap').on('click', 'button', function() {
			getList($(this).attr('type'), $(this).attr('pageNum'));
		});
		
		// 날짜 보정 함수
		function timeStamp(millis) {
			
			const today = new Date();
			const gap = today.getTime() - millis;
			
			let time;
			
				const regDate = new Date(millis);
				const year = regDate.getFullYear();
				const month = regDate.getMonth() + 1;
				const day = regDate.getDate();
				
				time = year + "-" + month + "-" + day;				
		
			return time;
		}
		
		// 탈퇴 버튼 클릭
		$('#del-btn').click(function() {
			if('${userInfo.pw}' !== $('#pw').val() ) {
				alert('비밀번호를 확인해주세요.');
				$('#pw').val('');
			} else {
				const result = confirm('정말 탈퇴하시겠습니까?');
				if(result) {
					$('#del-btn').attr('type', 'submit');					
				}
			}
		});
		
		
	}); // jquery end
	
	
	// 회원탈퇴 모달
	const body = document.querySelector('body');
	const modal = document.querySelector('.modal');
	const btnOpenPopup = document.querySelector('.btn-open-popup');
	
	btnOpenPopup.addEventListener('click', () => {
	  modal.classList.toggle('show');
	
	  if (modal.classList.contains('show')) {
		body.style.overflow = 'hidden';
	  }
	});
	
	modal.addEventListener('click', (event) => {
	  if (event.target === modal) {
		modal.classList.toggle('show');
	
		if (!modal.classList.contains('show')) {
		  body.style.overflow = 'auto';
		}
	  }
	});

</script>
</html>