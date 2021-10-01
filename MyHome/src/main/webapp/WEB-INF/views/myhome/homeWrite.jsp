<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file = "../include/header.jsp" %> 
<!DOCTYPE html>

<%--게시글쓰기 네이버 게시판 API 이용하기! (커서 위치에 사진 삽입) --%>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.84.0">
<title>내집 뽐내기</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<style>
  .bd-placeholder-img {
    font-size: 1.125rem;
    text-anchor: middle;
    -webkit-user-select: none;
    -moz-user-select: none;
    user-select: none;
  }
 


  .side-text{
      display: inline-block;
      width: 100px;
      margin-bottom: 20px;
  }

  .pc-verbose{
      display: block;
  }

  .ex{
    margin-left: 400px;
  }

  #work{
    margin-top: 6px;
  }
  
  #thumb{
  	width: 100%;
  	height: 100%;
  	border-radius: 2%;
  }
  
  #thumbPlace{
  	height: 400px; 
  	padding: 0;
  	border-radius: 2%;
  	text-align: center;
  	vertical-align: middle;  	
  }
  
  #thumbText{
  	list-style: none;
  	position: relative;
  	top: 150px;
  }
  
</style>

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/resources/css/form-validation.css" rel="stylesheet">

</head>

<body>
  <main class="mt-3">
    <div class="container" style="width: 50%;">
    
       <h2 class="text-center">글쓰기</h2>
      
       <br>

       <h4 class="mb-3">필수 정보 입력</h4>  
       <form action='<c:url value="/myhome/homeWrite" />' method="post" id="writeForm" enctype="multipart/form-data"> 
       
           <div class="mb-3 row">
               <label  class="col-md-3 col-form-label">주거 형태 *</label>
               <div class="col-md-9">
                   <div class="input-group mb-3">
                       <select class="input-box form-control" name="homeForm">
	                        <option selected disabled>선택해주세요.</option>
	                        <option>아파트</option>
	                        <option>빌라</option>
	                        <option>오피스텔</option>
	                        <option>단독주택</option>
                      	</select> 
                     </div>
               </div>
           </div>
           <div class="mb-3 row">
               <label  class="col-md-3 col-form-label">평수 *</label>
               <div class="col-md-9">
                   <div class="input-group mb-3">
                      <select class="form-control" name="homeSize">   
                        <option selected disabled>선택해주세요.</option>
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
                     </div>
               </div>
           </div>   
           <div class="mb-3 row">
              <label  class="col-md-3 col-form-label">예산 *</label>
              <div class="col-md-9">
                <select class="form-control" name="money">          
                    <option selected disabled>선택해주세요.</option>
                    <option>500만원 미만</option>
                    <option>500~1000만원</option>
                    <option>1000~1500만원</option>
                    <option>1500~2000만원</option>
                    <option>2000~3000만원</option>
                    <option>3000~4000만원</option>
                    <option>4000~5000만원</option>
                    <option>5000만원 이상</option>
                </select> 
              </div>
           </div>
            
           <div class="mb-3 row">
	           <label  class="col-md-3 col-form-label">시공 영역 *</label>
	           <div class="col-md-9">
		            <select class="form-control" name="place">
		              <option selected disabled>선택해주세요.</option>
		              <option>전체</option>
		              <option>주방</option>
		              <option>화장실</option>
		              <option>조명</option>
		              <option>발코니확장</option>
		              <option>거실</option>
		              <option>방</option>
		              <option>중문</option>
		              <option>방문</option>
		              <option>폴딩도어</option>
		              <option>기타</option>
		          </select>
	           </div>
       		</div>
       		<div class="mb-3 row">
              <label  class="col-md-3 col-form-label">가족형태 *</label>
              <div class="col-md-9">
                <select class="form-control" name="family">
                    <option selected disabled>선택해주세요.</option>
                    <option>싱글라이프</option>
                    <option>신혼부부</option>
                    <option>자녀가 있는 집</option>
                    <option>부모님과 함께사는 집</option>
                    <option>룸메이트와 사는 집</option>
                    <option>기타</option>
                </select>
              </div>
           </div> 
           <div class="mb-3 row">
              <label  class="col-md-3 col-form-label">작업자 *</label>
              <div class="col-md-9" id="work">
                <input type="radio" name="worker" value="셀프">셀프 &nbsp;&nbsp;&nbsp;
                <input type="radio" name="worker" value="반셀프">반셀프 &nbsp;&nbsp;&nbsp;
                <input type="radio" name="worker" value="전문가">전문가
              </div>
          </div>             
           <div class="mb-3 row">
               <label  class="col-md-3 col-form-label">방향</label>
               <div class="col-md-9">
                  <select class="form-control" name="direction">
                    <option selected disabled>선택해주세요.</option>
                    <option>남향</option>
                    <option>동향</option>
                    <option>북향</option>
                    <option>서향</option>
                    <option>남동향</option>
                    <option>남서향</option>
                    <option>북동향</option>
                    <option>북서향</option>
                  </select>
               </div>
           </div> 
           <div class="mb-3 row">
               <label  class="col-md-3 col-form-label">준공연차</label>
               <div class="col-md-9">
                  <select class="form-control" name="age">
                    <option selected disabled>선택해주세요.</option>
                    <option>2년 미만</option>
                    <option>2~4년</option>
                    <option>5~10년</option>
                    <option>11~15년</option>
                    <option>16~20년</option>
                    <option>21~25년</option>
                    <option>26년 이상</option>
                  </select>
               </div>
           </div>     
           <div class="mb-3 row">
               <label  class="col-md-3 col-form-label">지역</label>
               <div class="col-md-9">
                   <div class="input-group mb-3">
                      <select class="form-control" name="region">
                        <option selected disabled>선택해주세요.</option>
                        <option>서울특별시</option>
                        <option>부산광역시</option>
                        <option>인천광역시</option>
                        <option>대구광역시</option>
                        <option>광주광역시</option>
                        <option>울산광역시</option>
                        <option>강원도</option>
                        <option>경기도</option>
                        <option>전라남도</option>
                        <option>전라북도</option>
                        <option>경상남도</option>
                        <option>경상북도</option>
                        <option>충청남도</option>
                        <option>충청북도</option>
                        <option>제주도</option>
                      </select>
                    </div>
               </div>
           </div>  
           <div class="mb-3 row">
               <label  class="col-md-3 col-form-label">방 개수</label>
               <div class="col-md-9">
                   <div class="input-group mb-3">
                      <select class="form-control" name="room">
                        <option selected disabled>선택해주세요.</option>
                        <option>1개</option>
                        <option>2개</option>
                        <option>3개</option>
                        <option>4개</option>
                        <option>5개 이상</option>
                      </select>
                     </div>
               </div>
           </div>  
             
            <hr class="my-4">
            
            <div class="mb-3 row">
               <label  class="col-md-3 col-form-label">썸네일 이미지 *</label>
               <div class="col-md-9">
                   <input class="form-control" type="file" accept="image/png,image/jpeg,image/jpg" name="file">
                   <div class="alert alert-secondary" role="alert" id="thumbPlace">
	                  <img alt="thumb" src="" id="thumb" style="display: none;">
	                  <ul id="thumbText">
	                      <li>이미지 사이즈 : 350*350</li>
	                      <li>파일 사이즈 : 1M 이하</li>
	                      <li>파일 확장자 : png, jpg, jpeg만 가능</li>
	                  </ul>
                   </div>
                    
                     
               </div>
           </div>
          
           <input type="hidden" name="writer" value="jiseong"> <!-- 세션에서 얻어온 nick 넣어주기 -->            
           <table class="table">
              <tbody class="t-control">    
                  <tr>
                      <td class="t-title">제목</td>
                      <td><input class="form-control input-sm" name="title" placeholder="제목을 입력해 주세요."></td>
                  </tr>
                  <tr>
                      <td class="t-title">내용</td>
                      <td>
                      <textarea class="form-control" rows="15" name="content" placeholder="내용을 입력해 주세요."></textarea>
                      </td>                 
                  </tr>
              </tbody>
            </table>
         
	          <div class="mb-3 row text-center">
	              <div class="col-12 d-grid p-1 ">
	                  <button type="button" class="btn btn-lg btn-dark" id="cancelBtn">취소하기</button>
	                  <button type="button" class="btn btn-lg btn-info" id="subBtn">등록하기</button>
	              </div>
	          </div>
          </form>
          

       </div>
  </main>



</body>


<script>		
	$(function() { //start jquery
		//등록하기 버튼 이벤트
		$('#subBtn').click(function() {	
		
			if($('select[name=place] option:selected').val() === '선택해주세요.'){
				alert('시공 영역을 선택해 주세요.');
				$('select[name=place] option:selected').focus();
				return;
			}
			else if($('select[name=homeForm] option:selected').val() === '선택해주세요.'){
				alert('주거 형태를 선택해 주세요.');
				$('select[name=homeForm] option:selected').focus();
				return;		
			}
			else if($('select[name=homeSize] option:selected').val() === '선택해주세요.'){
				alert('평수를 선택해 주세요.');
				$('select[name=homeSize] option:selected').focus();
				return;		
			}			
			else if($('select[name=money] option:selected').val() === '선택해주세요.'){
				alert('예산을 선택해 주세요.');
				$('select[name=money] option:selected').focus();
				return;		
			}
			else if($('select[name=family] option:selected').val() === '선택해주세요.'){
				alert('가족형태를 선택해 주세요.');
				$('select[name=family] option:selected').focus();
				return;		
			}
			else if($('select[name=worker] option:selected').val() === '선택해주세요.'){
				alert('작업자를 선택해 주세요.');
				$('select[name=worker] option:selected').focus();
				return;		
			}
			else if($('input[name=title]').val() === ''){
				alert('제목을 작성해 주세요.');
				$('input[name=title]').focus();
				return;	
			}
			else if($('textarea[name=content]').val() === ''){
				alert('내용을 작성해 주세요.');
				$('textarea[name=content]').focus();
				return;	
			}
			else{
				alert('글이 등록되었습니다.');
				$('#writeForm').submit();	
			}
			
		});
			
		
		//취소버튼 클릭 이벤트
		$('#cancelBtn').click(function() {
			if(confirm('글 작성을 취소하시겠습니까?')){
				location.href = '${pageContext.request.contextPath}/myhome/homeList';
			}
			else
				return;					
		});
		
		//썸네일 미리보기 기능
		function preView(input) {
			if(input.files && input.files[0]){
				var reader = new FileReader();
				reader.readAsDataURL(input.files[0]); 
				
				reader.onload = function(e) {
					$('#thumb').css('display', 'block');
					$('#thumb').attr('src', e.target.result);
					$('#thumbPlace ul').css('display', 'none');
					console.log(e.target);
				};
				
			}
		}
		
		$('input[name=file]').change(function() {
			preView(this);			
		});
	
		
		
		
	}); //end jquery
		
</script>

<%@include file = "../include/footer.jsp" %> 

