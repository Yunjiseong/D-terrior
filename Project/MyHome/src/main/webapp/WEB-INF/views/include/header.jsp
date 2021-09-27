<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>D'terrior</title>

	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath }/resources/css/header.css" rel="stylesheet">	
	
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!--개인 디자인 추가-->
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
    

	<link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	<script src="https://kit.fontawesome.com/86e4aadf8c.js" crossorigin="anonymous"></script>
	
	<link href="${pageContext.request.contextPath}/resources/css/activeheader.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/footer.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/indexcss.css" rel="stylesheet">
	
	<!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="img/favicon-16x160.jpg" />
    
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
	
    
<script>

  $(document).ready(function() {
    $('#id1').mouseover(function(){
      $('#community').addClass('acup');
      $('#store').removeClass('acup');
    }); //커뮤니티 마우스 이벤트   
  
  
  
    $('#id2').mouseover(function(){
      $('#community').removeClass('acup');
      $('#store').addClass('acup');
    }); //스토어 마우스 이벤트 
  
  
  
  });//end jquery

  
  </script> 
  
  <style>
	    .carousel-container {
	        width: 900px;
	        margin: 30px auto;
	        border: 0px solid #000;
	        overflow: hidden;
	        position: relative;
	    }
	     .carimg {
	      top: 0;
	      left: 0;
	      min-width: 1000px;
	      min-height: 400px;
	    } 

        .carousel-slide {
            display: flex;
            width: 100%;
            height: 450px;
        }

        #prevBtn {
            position: absolute;
            top: 50%;
            left: 0;
            transform: translate(0%, -50%);
            width: 20px;
            height: 36px;
            background: url(img/angle_left_arrow_icon_123990.png) no-repeat;
            text-indent: -9999px;
        }

        #nextBtn {
            position: absolute;
            top: 50%;
            right: 0;
            transform: translate(0%, -50%);
            width: 20px;
            height: 36px;
            background: url(img/angle_right_arrow_icon_123991.png) no-repeat;
            text-indent: -9999px;
        }
    </style>   
    
<title>Insert title here</title>
</head>
<body>
	  <nav class="navbar navbar-expand-lg  fixed-top" style="background-color: rgb(255, 253, 253); align-content: flex-start;">
          <div class="container">
              <img class="navbar-brand" href="#" img src="${pageContext.request.contextPath }/resources/img/logo2.jpg" style="justify-content: left;">
              
              <div class="collapse navbar-collapse" id="navbarResponsive" style="justify-content:end;">
            <ul class="navbar-nav ml-auto">
            <li class="nav-item" id="id1">
                <a class="nav-link" href="#" style="color: black; font-family: 'Noto Sans KR', sans-serif;">커뮤니티</a>
            </li>
            <li class="nav-item" id="id2">
                <a class="nav-link" href="#" style="color: black; font-family: 'Noto Sans KR', sans-serif;">스토어</a>
            </li>
            </ul>
              <form class="" role="search">
                  <div class="input-group">
                      <input type="text" class="form-control" placeholder="Search">
                      <div class="input-group-btn" style="align-items: center;">
                          <button type="submit" class="btn btn-info"><span class="lnr lnr-magnifier"></span></button>
                      </div>
                  </div>
              </form>
        
             
                  <ul class="navbar-nav ml-auto">
                      <li class="nav-item">
                          <a class="nav-link" href="<c:url value='/user/userLoginPage' />" style="color: black;"> 로그인</a>
                      </li>
                      
                      <li class="nav-item">
                          <a class="nav-link" href="<c:url value='/user/normalJoinPage' />" style="color: black;">회원가입</a>
                      </li>
                      <li class="nav-item">
                          <a class="nav-link" href="#" style="color: black;">고객센터</a>
                      </li>
        
                  </ul>
        
              </div>
          </div>
        </nav>
        <nav class="navbar navbar-expand-lg navbar-light bg acup"id="community"
        style="background-color: white;">
          <div class="container-fluid">
            <a class="navbar-brand" href="#"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup" style="text-align: center;">
              <div class="navbar-nav">
                <a class="nav-link" href="#">Home</a>
                <a class="nav-link" href="#">내집뽐내기</a>
                <a class="nav-link" href="#">질문과답변</a>
                <a class="nav-link" href="#">이벤트</a>
              </div>
            </div>
          </div>
        </nav>
        <nav class="navbar navbar-expand-lg navbar-light  acup2" id="store"
        style="background-color: white;">
          <div class="container-fluid">
            <a class="navbar-brand" href="#"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup" style="text-align: center;">
              <div class="navbar-nav">
                <a class="nav-link" href="#">Home</a>
                <a class="nav-link" href="#">베스트</a>
                <a class="nav-link" href="#" id="header-category" 
                onmouseup="document.getElementById('header-cate').style.display = 'block';"
                onmouseover="document.getElementById('header-cate').style.display = 'none';"
                >카테고리</a>
                <a class="nav-link" href="#">전문가의손길</a>
              </div>
            </div>
          </div>
        </nav>
        <div class="header-categorys col-md-12" id="header-cate">
          <ul>
            <li class="category-item col-md-1"><a href="#" style="color: black;"><i class="fas fa-couch fa-2x"></i><br>가구</a></li>
            <li class="category-item col-md-1"><a href="#" style="color: black;"><i class="fas fa-bed fa-2x"></i><br>패브릭</a></li>
            <li class="category-item col-md-1"><a href="#" style="color: black;"><i class="fas fa-tv fa-2x"></i><br>가전</a></li>
            <li class="category-item col-md-1"><a href="#" style="color: black;"><i class="fas fa-sink fa-2x"></i><br>주방용품</a></li>
            <li class="category-item col-md-1"><a href="#" style="color: black;"><i class="fas fa-laptop-house fa-2x"></i><br>생활용품</a></li>
            <li class="category-item col-md-1"><a href="#" style="color: black;"><i class="fas fa-box fa-2x"></i><br>수납</a></li>
            <li class="category-item col-md-1"><a href="#" style="color: black;"><i class="fas fa-hiking fa-2x"></i><br>캠핑용품</a></li>
            <li class="category-item col-md-1"><a href="#" style="color: black;"><i class="fas fa-dog fa-2x"></i><br>애완운동</a></li>
          </ul>
        </div>
</body>
</html>