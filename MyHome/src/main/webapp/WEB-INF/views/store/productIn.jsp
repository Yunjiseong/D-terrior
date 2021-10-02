<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../include/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>  제품등록  </title> 
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/home-icon.png">

<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<style>
    .ex{
      margin-left: 400px;
    }
</style>
</head>
<body style="margin-top: 90px;">
    <main class="mt-3">
     <div class="container">
        <h2 class="text-center">제품등록</h2>
        <form action='<c:url value="/store/productIn" />' method="post" enctype="multipart/form-data">
	        <div class="mb-3 row">
	            <label  class="col-md-3 col-form-label">제품명</label>
	            <div class="col-md-9">
	              <input type="text" id="productName" name="name" class="form-control" >
	            </div>
	        </div>
	            <div class="mb-3 row">
	                <label  class="col-md-3 col-form-label">제품가격</label>
	                <div class="col-md-9">
	                    <div class="input-group mb-3">
	                        <input onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" type="text" id="price" name="price" class="form-control">
	                        <span class="input-group-text" >원</span>
	                      </div>
	                </div>
	            </div>
	            <div class="mb-3 row">
	                <label  class="col-md-3 col-form-label">배송비</label>
	                <div class="col-md-9">
	                    <div class="input-group mb-3">
	                        <input onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" type="text" id="deliPrice" name="deliPrice" class="form-control">
	                        <span class="input-group-text" >원</span>
	                      </div>
	                </div>
	            </div>   
	            <div class="mb-3 row">
	                <label  class="col-md-3 col-form-label">추가배송비(도서산간)</label>
	                <div class="col-md-9">
	                    <div class="input-group mb-3">
	                        <input onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" type="text" id="deliPlus" name="deliPlus" class="form-control">
	                        <span class="input-group-text" >원</span>
	                      </div>
	                </div>
	            </div>   
	            <div class="mb-3 row">
	                <label  class="col-md-3 col-form-label">제품 카테고리</label>
	                <div class="col-md-9">
	                    <div class="row">
	                        <div class="col-auto">
	                            <select name="category1" class="form-select">
	                                <option>가구</option>
	                            </select>
	                            <select name="category2" class="form-select">
	                                <option>침실</option>
	                            </select>
	                        </div>
	                    </div>
	                </div>
	            </div>      
	            <div class="mb-3 row">
	                <label  class="col-md-3 col-form-label">출고일</label>
	                <div class="col-md-9">
	                    <div class="input-group mb-3">
	                        <input onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" type="text" id="releaseDate" name="releaseDate" class="form-control">
	                        <span class="input-group-text" >일 이내 출고</span>
	                      </div>
	                </div>
	            </div>    
	            <div class="mb-3 row">
	                <label  class="col-md-3 col-form-label">섬네일 이미지</label>
	                <div class="col-md-9">
	                    <input id="thumbnail" class="form-control" type="file" name="thumbnailImg" accept="image/png,image/jpeg">
	                    <div class="alert alert-secondary" role="alert">
	                   <ul>
	                       <li>이미지 사이즈 : 350*350</li>
	                       <li>파일 사이즈 : 1M 이하</li>
	                       <li>파일 확장자 : png,jpg만 가능</li>
	                   </ul>
	                      </div>
	                </div>
	            </div>  
	            <div class="mb-3 row">
	                <label  class="col-md-3 col-form-label">제품 이미지</label>
	                <div class="col-md-9">
	                    <input class="form-control" multiple="multiple" type="file" name="productImgs" accept="image/png,image/jpeg" multiple>
	                    <div class="alert alert-secondary" role="alert">
	                   <ul>
	                       <li>최대 5개가능</li>
	                       <li>이미지 사이즈 : 350*350</li>
	                       <li>파일 사이즈 : 1M 이하</li>
	                       <li>파일 확장자 : png,jpg만 가능</li>
	                   </ul>
	                      </div>
	                </div>
	            </div>
	            <div class="mb-3 row">
	               	<label  class="col-md-3 col-form-label">제품 상세설명</label>
	                <div class="col-md-9">
            			<textarea name="productExplan" rows="5" cols="111"></textarea>    
                    </div>
            	</div>
	            
	            <div class="mb-3 row text-center">
	                <div class="col-12 d-grid p-1 ">
	                    <button type="button" id="regist-btn" class="btn btn-lg btn-info">등록하기</button>
	                </div>
	            </div>
            </form>
        </div>
    </main>
</body>

<script>

	//jquery start
	$(function() {
		
		var regex = /^[0-9]*$/;
		
		$('#regist-btn').click(function() {
			if($('#productName').val() === '') {
				alert('이름을 입력해주세요.');
			} else if($('#price').val() === '') {
				alert('상품 가격을 입력해주세요.');				
			} else if($('#deliPrice').val() === '') {
				alert('배송비를 입력해주세요.');
			} else if($('#thumbnail').val() === ''){
				alert('썸네일을 선택해 주세요.');
			} else if(!regex.test($('#releaseDate').val())) {
				alert('출고일은 숫자만 입력 가능합니다.');
			} else {
				$('#regist-btn').attr('type', 'submit');
			}
		}); // 등록 버튼 끝
		
	});
	
</script>
</html>

<%@ include file="../include/footer.jsp"%>
