<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.84.0">
	<title>내집 뽐내기</title>
	
	<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/album/">
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    
    <style>
      .bd-placeholder-img {
        font-homeSize: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-homeSize: 3.5rem;
        }
      }

      .img{
        height: 240px;
        width: 100%;
        border-radius: 5%;
      }

      .profile{
        width: 20px;
        height: 20px;
        border-radius: 50%;
      }

      .card{
        margin-bottom: 10px;
        border: none;
        background: none;
        display: inline-block;
      }
    

      .card-body{
        text-align: center;
      }

      .card-text{
        font-weight: 1000;
        margin-bottom: 3px;
        color: rgb(66, 63, 73);
      }

      .id-link{
        display: block;
      }

      #total{
        font-weight: 600;
        font-homeSize: 15px;
        margin: 30px 0 5px 1px;
      }

      .order-list{
        list-style: none;
        
      }

      .my-btn{
        -moz-user-select: -moz-none;
        -khtml-user-select: none;
        -webkit-user-select: none;
        -ms-user-select: none;
        user-select: none;
        display: inline-block;
        margin-right: 7px;
        margin-bottom: 15px;
        padding: 3px;
        box-sizing: border-box;
        border: 1px solid transparent;
        background: lightgray;
        font-family: inherit;
        color: black;
        font-weight: bold;
        font-homeSize: 15px;
        text-decoration: none;
        text-align: center;
        transition: color .1s,background-color .1s,border-color .1s;
        border-radius: 4px;
        cursor: pointer;
      }     
      
      
    
    </style>
    
</head>
<body>

<main>

  <!-- 정렬 메뉴 -->
  <div class="album py-5 bg-light">
    <div class="container">      
      <div class="control-list">  

		<form action="<c:url value='/myhome/homeList' />" method="post">
			<select class="input-box" name="sort"> 		     
	            <option value selected disabled>정렬</option>
	            <option value="1">인기순</option>
	            <option value="2">최신순</option>
	        </select>    
	        
	        <select class="input-box" name="homeForm">          
	            <option value selected disabled>주거형태</option>
	            <option>아파트</option>
	            <option>빌라</option>
	            <option>오피스텔</option>
	            <option>단독주택</option>
	        </select>          
	      
	        
	        <select class="input-box" name="homeSize">          
	            <option selected disabled>평수</option>
	            <option>10평 미만</option>
	            <option>10~15평</option>
	            <option>16~20평</option>
	            <option>21~25평</option>
	            <option>26~30평</option>
	            <option>31~35평</option>
	            <option>36~40평</option>
	            <option>41~50평</option>
	            <option>51평 이상</option>
	        </select> 
	        
	        <select class="input-box" name="money">          
	            <option selected disabled>예산</option>
	            <option>500만원 미만</option>
	            <option>500~1000만원</option>
	            <option>1000~1500만원</option>
	            <option>1500~2000만원</option>
	            <option>2000~3000만원</option>
	            <option>3000~4000만원</option>
	            <option>4000~5000만원</option>
	            <option>5000만원 이상</option>
	        </select>         
		</form>     
         
      </div>
	<br>
	<div id="write-btn"><button type="button" id="writeBtn" class="btn btn-info" onclick="location.href='<c:url value="/myhome/homeWrite" />'">글쓰기</button></div>
	<!-- 글 목록 -->
      <div id="total">전체 ${fn:length(myhome)}</div>
      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
	      <c:forEach var="num" items="${myhome}">
	      	<div class="col-lg-4 col-sm-4">
	          <div class="card">
	            <a href='<c:url value="/myhome/homeDetail?bno=${num.bno}" />'>
	              <img class="img" src='<c:url value="/resources/img/interior1.png" />' alt="사진">
	              <div class="card-body">
	                <p class="card-text">${num.title}</p>
	                  <a href="#" class="id-link"><img class="profile" src='<c:url value="/resources/img/interior1.png" />' alt="사진"><small class="text-muted"> ${num.writer}</small></a>
	                  <small class="text-muted">스크랩 ${num.scrapCnt} · 조회 ${num.viewCnt}</small> 
	              </div>
	            </a>  
	          </div>
	        </div>
	      </c:forEach> 
      </div>     
        
      
    <!--페이지-->
    <%-- 
    <form action="<c:url value='/myhome/homeList' />" name="pageForm" method="post">
           <div class="text-center">
           <hr>
                             
           <ul class="pagination pagination-sm" id="pagination">
              <c:if test="${pc.prev}">
              		<li><a href="#" data-pageNum="${pc.beginPage-1}">이전</a></li>
              </c:if>
              
              <c:forEach var="num" begin="${pc.beginPage}" end="${pc.endPage}">
               <li class="${pc.paging.nowPage == num ? 'active' : ''}"><a href="#" data-pageNum="${num}">${num}</a></li>
              </c:forEach>
               
               <c:if test="${pc.next}">
               	<li><a href="#" data-pageNum="${pc.endPage+1}">다음</a></li>
               </c:if>                      
           </ul>
           
           <!-- 페이지 관련 버튼을 클릭시 숨겨서 보낼 값 -->
           <input type="hidden" name="nowPage" value="${pc.paging.nowPage}">
           <input type="hidden" name="countPerPage" value="${pc.paging.countPerPage}">
           <input type="hidden" name="homeForm" value="${pc.paging.homeForm}">
           <input type="hidden" name="money" value="${pc.paging.money}">
           <input type="hidden" name="homeSize" value="${pc.paging.homeSize}">
                      
           
           </div>
    </form>
     --%>
    </div>
  </div>

</main>

<script>
	$(function() { //start jquery
		$('select[name=sort]').click(function() {
			
		});
		
		
		
	}); //end jquery

</script>

</body>
</html>