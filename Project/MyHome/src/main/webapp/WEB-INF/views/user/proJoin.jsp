<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>  회원가입(전문가)  </title> 
  <link rel="shortcut icon" href="../img/home-icon.png">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <style>
    body {
      min-height: 100vh;
      background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));
      background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
    }

    .input-form {
      max-width: 680px;
      margin-top: 80px;
      padding: 32px;
      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
    .invalid-checkbox{
      border: #000 solid;
      border-radius: 10px;
      background-color:#92b5db ;
    }
    .code{
      margin-top: 10px;
    }
  </style>
</head>

<body>
  <div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3">회원가입</h4>
        <form action="userJoin" method="post" class="validation-form" novalidate>
          <div class="row">
            <div class="col-md-6 mb-3"> <label for="name">이름</label> <input type="text" class="form-control" id="name"
                placeholder="" value="" required name="name">
              <div class="invalid-feedback"> 이름을 입력해주세요. </div>
            </div>
            <div class="col-md-6 mb-3"> <label for="nickname">닉네임</label> <input type="text" class="form-control"
                id="nickname" placeholder="" value="" required name="nickName">
              <div class="invalid-feedback"> 닉네임을 입력해주세요. </div>
            </div>
          </div>
          <div class="mb-3"> <label for="email">이메일</label> <input type="email" class="form-control" id="email"
              placeholder="you@example.com" required name="id">
            <div class="invalid-feedback"> 이메일을 입력해주세요. 
            </div>
            <div class="col-md-6 mb-3"> <label for="email-code">인증코드</label> <input type="text" class="form-control"
              id="email-code" placeholder="" value="" required>
              <button class="btn btn-primary code" type="submit">인증확인</button>
            </div>  
          </div>
          <div class="mb-3"> <label for="password">비밀번호</label> <input type="password" class="form-control" id="pw"
            placeholder="비밀번호를 적어주세요" required name="pw">
          <div class="invalid-feedback"> 비밀번호 입력해주세요. 
          </div>
          <div class="mb-3"> <label for="passwordCH">비밀번호확인</label> <input type="password" class="form-control" id="pw"
            placeholder="비밀번호를 다시 한번 적어주세요" required>
          <div class="invalid-feedback"> 비밀번호확인 체크해주세요. 
          </div>
          <div class="mb-3"><label for="phoene">전화번호</label> <br>
            <select id="mPhone1" name="phone1">
                <option value="010" selected>010</option>
                <option value="011">011</option>
                <option value="016">017</option>
                <option value="018">018</option>
                <option value="019">019</option>
            </select>-
            <input id="mPhone2" name="phone2" type="number" value="" size="4" maxlength="4" autocomplete="off">-
            <input id="mPhone3" name="phone3" type="number" value="" size="4" maxlength="4" autocomplete="off">
        </div>
        <div class="mb-3"> <label for="address">테스트용 우편번호</label> <input type="text" class="form-control" id="address"
              placeholder="서울특별시 강남구" required name="zipNum">
            <div class="invalid-feedback"> 테스트용 우편번호 </div>
          </div>
        </div> 
          <div class="mb-3"> <label for="address">주소</label> <input type="text" class="form-control" id="address"
              placeholder="서울특별시 강남구" required name="addrBasic">
            <div class="invalid-feedback"> 주소를 입력해주세요. </div>
          </div> 
          <div class="mb-3"> <label for="address2">상세주소<span class="text-muted">&nbsp;(필수 아님)</span></label> <input
              type="text" class="form-control" id="address2" placeholder="상세주소를 입력해주세요." name="addrDetail"> </div>
          <div class="row">
            <div class="col-md-8 mb-3"> <label for="Attention">전문분야</label>
               <div class=invalid-checkbox>
                  <label><input type="checkbox" name="major" value="major-1">시공</label>
                  <label><input type="checkbox" name="major" value="major-2">타일</label><br>
                  <label><input type="checkbox" name="major" value="major-3">건축자재</label>
                  <label><input type="checkbox" name="major" value="major-4">건축설비</label><br>
                  <label><input type="checkbox" name="major" value="major-6">도배</label>
                  <label><input type="checkbox" name="major" value="major-7">창틀</label>
                  <label><input type="checkbox" name="major" value="major-8">페인트</label>
               </div>
               <div class="col-md-8 mb-3"><label>증빙서류</label>
               <form  action="#" method="post" enctype="#">
                <input type="file" name="profile" multiple>
              </div>
              </select>
        
            </div>
           
          <div class="mb-4"></div> <button class="btn btn-primary btn-lg btn-block" type="submit">가입 완료</button>
        </form>
      </div>
    </div>
  </div>
<script>

$('#sendCode').click(function() {
	if($('#email').val() === '') {
		alert('아이디(이메일)을 입력해주세요.');
		return;
	}
	
	const id = $('#email').val();
	
	$.ajax({
		type: "post",
		url: "/user/idCheck",
		data: id,
		headers: {
			"Content-type" : "application/json"
		},
		success: function(data) {
			if(data === 'send') {
				alert('인증코드가 발송되었습니다')
			} else {
				alert('이미 가입된 이메일입니다.')
			}
		},
		error: function() {
			alert('서버에러 입니다. 관리자에게 문의하세요.');
		}
	});	
});
</script>


</body>

</html>