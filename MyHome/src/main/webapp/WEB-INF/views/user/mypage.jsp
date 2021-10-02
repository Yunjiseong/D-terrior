<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@include file = "../include/header.jsp" %> 

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

   <!--css-->
     <link href="${pageContext.request.contextPath }/resources/css/bootstrap.css" rel="stylesheet">
     <link href="${pageContext.request.contextPath }/resources/css/header.css" rel="stylesheet">
     <link href="${pageContext.request.contextPath }/resources/css/mypage2.css" rel="stylesheet">
     
      <link href="${pageContext.request.contextPath }/resources/css/footer.css" rel="stylesheet">    
    
     <!--font-->
     <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/Cafe24SsurroundAir.woff">
     <!--script-->
     <script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
     <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
     <script src="https://kit.fontawesome.com/86e4aadf8c.js" crossorigin="anonymous"></script>
          
      <!-- Favicon-->
      <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/img/favicon-14x160.jpg" />
      
      <!-- Font Awesome icons (free version)-->
     <script src="https://use.fontawesome.com/releases/v5.19.3/js/all.js" crossorigin="anonymous"></script>
     
      <!-- Google fonts-->
      <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
      <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
      <link rel="stylesheet" href="https://cdn.rawgit.com/twbs/bootstrap/v4-dev/dist/css/bootstrap.css">
       
  
  
  


   
   <style>
   .sections{

  margin: 100px 250px 0 250px;
}

   </style>

</head>
 
 <body>
 <section class="sections">
    <div class="container-fluid">
       <div class="row">
          <div class="col-md-3">
             <div class="my_icon">
                <c:choose>
                   <c:when test="${userInfo.profile == null}">
                      <img class="my" src='${pageContext.request.contextPath}/resources/img/mi_icon.webp'>
                   </c:when>
                   <c:otherwise>
                      <img class="my" src='<c:url value="/user/display?profile=${userInfo.profile}"/>'>
                   </c:otherwise>
                </c:choose>
                <div class="ninkname">${userInfo.nickName } </div>
                <div class="Attention">
                   <div class="inner">
                      <a class="scrap_url scrap-btn" href="#" style="color: black;">
                         <div class="scrap"><i class="fas fa-bookmark fa-2x"></i></div>
                         <div class="scrap_ko">
                         스크랩북
                         </div>
                         <div class="scrap_count">0</div>
                      </a>
                   </div>
                   <div class="inner">
                      <a class="koo_url" href="#" style="color: black;">
                         <div class="koo"><i class="fas fa-book fa-2x"></i>
                            </svg></div>
                         <div class="heart ko">쿠폰</div>
                         <div class="heart count">0</div>
                      </a>
                   </div>


                   <button id="#" onclick="location.href='<c:url value="/user/userModify" />'" class="btn btn-sm btn-info btn-block" type="button">개인정보 수정</button>
                   <button id="#" class="btn btn-sm btn-info btn-block btn-open-popup" type="button">회원 탈퇴</button>
                   <c:if test="${user.grade == 'admin' }">
                   		<button id="#" onclick="window.open('${pageContext.request.contextPath}/chat/adminChat')" class="btn btn-sm btn-info btn-block btn-open-popup" type="button">관리자전용상담페이지</button>
                   </c:if>
             </div>
               

          </div>
          
       </div>

   
        <div class="col-md-9">
         <div class="board">
            
            <div class="category" style="text-align:left; ">
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
                     
                     <c:choose>
                         <c:when test="${userInfo.grade == 'admin' }">
                         	<li class="category-item" data-filter4="" data-sort="rgstdtime">
                     			<button type="button" id="upgrade-btn" class="btn btn-default btn-sm" style="border: 1px solid black;">등업신청</button>
                  			</li>
	                     </c:when>
	                     <c:when test="${userInfo.grade == 'pro'}">
	                        <li class="category-item" data-filter4="" data-sort="rgstdtime">
	                           <button type="button" id="reco-quiz-btn" class="btn btn-default btn-sm" style="border: 1px solid black;">추천질문</button>
	                        </li>
	                     </c:when>
                  </c:choose>
      
               </ul>
            </div>
            
            <div class="articles-wrap">
            <!--   비동기로 작성 
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

   <nav id="page-btn-wrap" class="pagination-sm"  style="position: absolute; left: 55%">
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
 <div class="modal" id="modal">
   <div class="modal_body block"><strong>회원탈퇴</strong><br>
  
     <div class="container">
      <div class="row">
        <div>
         <img class="modal-img" src="${pageContext.request.contextPath}/resources/img/logo2.jpg" alt="로고사진">
        </div>
        <form action='<c:url value="/user/userDelete" />' method="post">
           <div class="low" style="display: inline-block;">
           <div class="col">
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" id="pw" class="form-control" placeholder="비밀번호를 입력해주세요." required>
            <input type="hidden" name="id" value="${userInfo.id}">
         </div>
         <div class="delbt">
              <button type="button" id="del-btn" class="btn btn-info btn-sm" style="width: 205px;">확인</button>
              </div>
                </div>
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
               
               if(list === null || list[0] === null) {
            	   StrAdd   += "게시글이 존재하지 않습니다.";
               }else {      
                  console.log('리스트 데이터 받아옴');
                  if(type === 'home' || type === 'scrap') {
                     for(let i=0; i<list.length; i++) {
                        StrAdd += "<div class='col-md-4 cards' style='position: initial;'>";
                        StrAdd += "<div class='card' style='width: 13rem;'>";
                        StrAdd += "<img src='${pageContext.request.contextPath}/resources/img/interior10.png' class='card-img-top' alt='미리보기'>";
                        StrAdd   += "<div class='card-body'>";
                        StrAdd   += "<h5 class='card-title'><a href='<c:url value='/myhome/homeDetail?bno=" + list[i].bno + "'/>'>" + list[i].title + " </a></h5>";
                        StrAdd   += "<p class='card-text'>글내용</p>";
                        StrAdd   += "<hr>";
                        StrAdd   += "<div class='d-flex justify-content-between align-items-center'>";
                        StrAdd   += "<a class='dete'>" + timeStamp(list[i].regDate) + "</a>";
                        StrAdd   += "<a class='eye'><svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-eye-fill' viewBox='0 0 16 16'>";
                        StrAdd   += "<path d='M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z'></path>";
                        StrAdd   += "<path d='M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z'></path>";
                        StrAdd   += "</svg>" + list[i].viewCnt + "</a>";
                        StrAdd   += "</div>";
                        StrAdd   += "</div>";
                        StrAdd   += "</div>";
                        StrAdd   += "</div>";
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
                              if(list[i].newMark){
	                              StrAdd += "<span class='new'>NEW!</span></td>";                            	  
                              }
                              StrAdd += "<td>" + list[i].writer + "</td><td>" + timeStamp(list[i].regDate) + "</td>";
                              StrAdd += "<td>" + list[i].views + "</td><tr></tbody>";
                           }
                        }

                        StrAdd += "</table></div></div></div></div></div>";
                     }
               }
               $('.articles-wrap').html(StrAdd);
               
               // 페이지 버튼 생성
               if(list.length > 0) {
                  pageStr = '';
                  
                  pageStr += "<ul class='pagination'>";
                  
                  if(paging.prev) {
                     pageStr += "<li class='page-item'>";
                     pageStr += "<button type='" + type + "' pageNum='" + --paging.beginPage  + "' class='page-link'>◁</button>";
					 ++paging.beginPage
                     pageStr += "</li>";                              
                  }
                  
                  for(let k=paging.beginPage; k<=paging.endPage; k++) {
                     pageStr += "<li class='page-item'>";
                     pageStr += "<button type='" + type + "' pageNum='" + k + "' class='page-link' >" + k + "</button>";
                     pageStr += "</li>";
                     }
                  
                  if(paging.next) {
                     pageStr += "<li class='page-item'>";
					pageStr += "<button type='" + type + "' pageNum='" + ++paging.endPage  + "' class='page-link'>▷</button>";
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
                  
         let time;
         
        let regDate = new Date(millis);
        let year = regDate.getFullYear();
        let month = regDate.getMonth() + 1;
        let day = regDate.getDate();
        
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
   const body1 = document.querySelector('body');
   const modal1 = document.querySelector('#modal');
   const btnOpenPopups = document.querySelector('.btn-open-popup');
   
   btnOpenPopups.addEventListener('click', function() {   
     modal1.classList.toggle('show');
   
     if (modal1.classList.contains('show')) {
      body1.style.overflow = 'hidden';
     }
   });
   
   modal.addEventListener('click', function() {   
     if (event.target === modal1) {
      modal1.classList.toggle('show');
   
      if (!modal1.classList.contains('show')) {
        body1.style.overflow = 'auto';
      }
     }
   });

</script>
</html>
<%@include file = "../include/footer.jsp" %> 