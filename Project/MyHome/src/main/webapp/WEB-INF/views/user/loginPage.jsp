<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>  로그인  </title> 
    <link rel="shortcut icon" href="../img/home-icon.png">

    <style>
        @import url("http://fonts.googleapis.com/earlyaccess/nanumgothic.css");

html {
		height: 100%;
	}
	
	body {
	    height:100%;
	    margin: 0;
  		padding-top: 250px;
  		padding-bottom: 40px;
  		font-family: "Nanum Gothic", arial, helvetica, sans-serif;
  		background:url(../img/interior10.png)no-repeat center / cover ;
	}
	
    .card {
        margin: 0 auto; /* Added */
        float: none; /* Added */
        margin-bottom: 10px; /* Added */
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
	}
	
	.form-signin .form-control {
  		position: relative;
  		height: auto;
  		-webkit-box-sizing: border-box;
     	-moz-box-sizing: border-box;
        	 box-sizing: border-box;
  		padding: 10px;
  		font-size: 16px;
	}
  .modal {
      position: absolute;
      top: 0;
      left: 0;

      width: 100%;
      height: 100%;

      display: none;

      background-color: rgba(0, 0, 0, 0.4);
    }

    .modal.show {
      display: block;
    }

    .modal_body {
      position: absolute;
      top: 50%;
      left: 50%;

      width: 400px;
      height: 600px;

      padding: 40px;

      text-align: center;

      background-color: rgb(255, 255, 255);
      border-radius: 10px;
      box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);

      transform: translateX(-50%) translateY(-50%);
    }
    .image {
    width: 300px;
    height: 300px;
    background-image: url(../img/interior3.png);
    background-size: contain;
    background-repeat: no-repeat;
    background-position: center;
    border:1px  black;
    margin-bottom: 50px;
}
    </style>
  </head>


  <body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%" align="center">

	<div class="card align-middle" style="width:20rem; border-radius:20px;">
		<div class="card-title" style="margin-top:30px;">
			<h2 class="card-title text-center" style="color:#116566;">중앙의 집</h2>
		</div>
		<div class="card-body">
      <form class="form-signin" action="login" method="post">
        <h5 class="form-signin-heading">이메일 정보를 입력하세요</h5>
        <label for="inputEmail" class="sr-only">E-mail</label>
        <input type="text" id="#" class="form-control" placeholder="E-mail" name="id" required autofocus><BR>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="#" class="form-control" placeholder="Password" name="pw" required><br>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> 기억하기
          </label>
        </div>
 
        <button href="<c:url value='/user/userLoginPage' />" id="#" class="btn btn-lg btn-primary btn-block" type="submit">로 그 인</button>
        <button id="'#" class="btn btn-lg btn-primary btn-block btn-open-popup ">회원가입</button>
      </form>
		</div>
	</div>
<!--모달창-->
<div class="modal">
  <div class="modal_body block"><strong>회원가입 분류창</strong><br>
   


    <ul>
      <li>
    <a href="normalJoinPage" id="#" class="btn-primary btn-square" type="submit">일반회원</a>
  </li>
  <li>
    <a href="proJoinPage" id="'#" class="btn-primary btn-square" type="submit">전문가회원</a>
  </li>


  </ul>
  </div>
</div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 
  </body>
  <script>
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