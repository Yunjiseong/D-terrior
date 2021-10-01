<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
 <!-- Bootstrap CSS -->
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
 integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 <link href="${pageContext.request.contextPath}/resources/css/manager_info.css" rel="stylesheet">
<style>

</style>
</head>

<body>
<div class="container">
 <div class="input-form-backgroud row">
   <div class="input-form col-md-12 mx-auto">
     <h4 class="mb-3">등업 정보</h4>
     <form class="validation-form" novalidate>
       <div class="mb-3"> <label for="email">아이디</label> 
       <input type="email" class="form-control" id="id" value="${proInfo.id }" required readonly>
       </div>
 
             <div class="mb-3"> <label for="nickname">닉네임</label> 
             <input type="text" class="form-control" id="nickname" value="${proInfo.nickName }" required readonly>
               <div class="invalid-feedback"> 닉네임을 입력해주세요. </div>
             </div>
      
       
           <div class="mb-3"><label for="phoene">전화번호</label> <br>
            <input id="mPhone1" name="phone1" type="text" value="${proInfo.phone1 }" size="2" maxlength="4" autocomplete="off" readonly>-
             <input id="mPhone2" name="phone2" type="text" value="${proInfo.phone2 }" size="2" maxlength="4" autocomplete="off" readonly>-
             <input id="mPhone3" name="phone3" type="text" value="${proInfo.phone3 }" size="2" maxlength="4" autocomplete="off" readonly>
           </div>
           <label for="map api">주소</label><br>
           <input class="ka-api" type="text" id="sample6_postcode" value="${proInfo.zipNum }" placeholder="우편번호" readonly>
           <input class="ka-api" type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" readonly><br>
           <input class="ka-api" type="text" id="sample6_address" value="${proInfo.addrBasic }" readonly><br>
           <input class="ka-api" type="text" id="sample6_detailAddress" value="${proInfo.addrDetail }" readonly>

           <div class="row">
             <div class="mb-3" style="margin-top: 10px;"> <label for="Attention">관심분야</label>
               <div class=invalid-checkbox>
                <label><input class="checkcss" type="checkbox" name="#" value="intr1">시공</label>
                <label><input class="checkcss" type="checkbox" name="#" value="intr2"> 타일</label>
                <label><input class="checkcss" type="checkbox" name="#" value="intr3"> 건축자재</label>
                <label><input class="checkcss" type="checkbox" name="#" value="intr4"> 건축설비</label>
                <label><input class="checkcss" type="checkbox" name="#" value="intr5"> 창호/샷시</label>
                <label><input class="checkcss" type="checkbox" name="#" value="intr6"> 도배</label>
                <label><input class="checkcss" type="checkbox" name="#" value="intr7"> 창틀</label>
                <label><input class="checkcss" type="checkbox" name="#" value="intr8"> 페인트</label>
               </div>
               <div class="mb-3" style="margin-top: 20px;">
                   <label for="files">증빙서류</label>
                <form action="#" method="post" enctype="#"><br>

                    <a href="file.pdf" download="newfilename">DownLoad</a>
              </div>

               </select>

             </div>

             <div class="mb-4"></div> <button class="btn btn-info btn-lg btn-block" type="submit">등업 완료</button>
     </form>
     </div>
    </div>
    </div>

 </div>
</div>

</body>

<script>
	
	// jqiery end
	$(function() {
		
		// 관심분야 체크 박스
		  const interests = '${proInfo.interest}'.split(',');
		  
		  for(var i=0; i<interests.length; i++) {
			  for(var j=0; j<$('.checkcss').length; j++) {
				  if(interests[i] == $('.checkcss')[j].value) {
					  $('.checkcss')[j].checked = 'true';
					  $('.checkcss')[j].disabled = 'true';
				  }
			  }
		  }
		
	});

</script>

</html>