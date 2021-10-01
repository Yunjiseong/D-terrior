<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>D'terrior</title>
   
    <!--css-->
     <link href="${pageContext.request.contextPath }/resources/css/bootstrap.css" rel="stylesheet">
     <link href="${pageContext.request.contextPath }/resources/css/header.css" rel="stylesheet">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
      <link href="${pageContext.request.contextPath }/resources/css/footer.css" rel="stylesheet">    
      <link href="${pageContext.request.contextPath }/resources/css/indexcss.css" rel="stylesheet">
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
        a{
       color: #000;
       }
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
    
<title>D'terrior</title>
</head>
 <body>

  <nav id="total-nav">
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top" id="first-nav"
      style="background-color: rgb(255, 255, 255);font-family: 'Cafe24SsurroundAir';">
      <div class="collapse navbar-collapse " id="navbarSupportedContent"></div>
      <a class=" navbar-brand" href="${pageContext.request.contextPath}"><img src="${pageContext.request.contextPath }/resources/img/logo2.jpg"></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>


      <div class="collapse navbar-collapse " id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto ">
          <li class="nav-item active" id="id1">
            <a class="nav-link" href="#">커뮤니티 </a>
          </li>
          <li class="nav-item active" id="id2">
            <a class="nav-link" href="#">스토어</a>
          </li>

        </ul>
      </div>
      <div class="collapse navbar-collapse">
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success lnr lnr-magnifier my-2 my-sm-0" type="submit"></button>
        </form>
      </div>
      <div class="collapse navbar-collapse " id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto ">
          <li class="nav-item active">
            <a class="nav-link" href="#">로그인 </a>
          </li>
          <li class="nav-item active popup">
            <a class="nav-link popup" href="">회원가입</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="${pageContext.request.contextPath}/qna/qna">고객센터</a>
          </li>

        </ul>
        <!--
        <div class="collapse navbar-collapse " id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto ">
            <li class="nav-item active">
              <a class="nav-link" href="#">로그아웃 </a>
            </li>
            <li class="nav-item active" >
              <a class="nav-link" href="${pageContext.request.contextPath}/user/mypage">mypage</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="${pageContext.request.contextPath}/qna/qna">고객센터</a>
            </li>
  
          </ul>-->
    </nav>
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top " id="community"
      style="background-color: rgb(255, 255, 255);font-family: 'Cafe24SsurroundAir';">
      
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>


      <div class="collapse navbar-collapse container nav-item2 " id="navbarNavAltMarkup">
        <ul class="navbar-nav mr-auto collapse navbar-collapse">
          <li class="nav-item active ">
            <a class="nav-link" href="${pageContext.request.contextPath}">Home </a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="${pageContext.request.contextPath}/myhome/homeList">내집뽐내기</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="${pageContext.request.contextPath}/quiz/quizList">질문과답변</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="#">이벤트</a>
          </li>


        </ul>
      </div>
    </nav>
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top " id="store"
      style="background-color: rgb(255, 255, 255);font-family: 'Cafe24SsurroundAir';">
      
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      

      <div class="collapse navbar-collapse container " id="navbarNavAltMarkup">
        <ul class="navbar-nav mr-auto collapse navbar-collapse nav-item2" >
          
            <li class="nav-item active">
              <a class="nav-link" href="${pageContext.request.contextPath}">Home </a>
            </li>
            <li class="nav-item active">
            <a class="nav-link" href="#">베스트</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="#" id="grab">전문가의손길</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="#" id="header-category">카테고리</a>
          </li>



        </ul>
      </div>
    </nav>
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top  " id="header-cate"
      style="background-color: rgb(255, 255, 255);font-family: 'Cafe24SsurroundAir';">
      


      <div class="collapse navbar-collapse container header-categorys nav-item2" id="navbarNavAltMarkup">
        <ul class="navbar-nav mr-auto nav-item2" style="font-family: 'Cafe24SsurroundAir','notosans';" >
          <li class="category-item col-lg-auto"><a href="#" style="color: black;">
              <i class="fas fa-couch fa-2x"></i><br>가구</a></li>
          <li class="category-item col-lg-auto"><a href="#" style="color: black;">
              <i class="fas fa-bed fa-2x"></i><br>패브릭</a></li>
          <li class="category-item col-lg-auto"><a href="#" style="color: black;">
              <i class="fas fa-tv fa-2x"></i><br>가전</a></li>
          <li class="category-item col-lg-auto"><a href="#" style="color: black;">
              <i class="fas fa-sink fa-2x"></i><br>주방용품</a></li>
          <li class="category-item col-lg-auto"><a href="#" style="color: black;">
              <i class="fas fa-laptop-house fa-2x"></i><br>생활용품</a></li>
          <li class="category-item col-lg-auto"><a href="#" style="color: black;">
              <i class="fas fa-box fa-2x"></i><br>수납</a></li>
          <li class="category-item col-lg-auto"><a href="#" style="color: black;">
              <i class="fas fa-hiking fa-2x"></i><br>캠핑용품</a></li>
          <li class="category-item col-lg-auto"><a href="#" style="color: black;">
              <i class="fas fa-dog fa-2x"></i><br>애완운동</a></li>
        </ul>
      </div>
    </nav>
    
    
    </nav>


  <!--모달창-->
  <div class="modal">
    <div class="modal_body block"><strong>회원가입</strong><br>

      <div class="container">
        <div class="row">
          <div>
            <img class="modal-img" src="${pageContext.request.contextPath}/resources/img/logo2.jpg" alt="로고사진">
          </div>
          <div class="btn-group">
            <button type="button" class="btn btn-primary btn-lg" style="font-size: 19px;">일반회원</button>
            <button type="button" class="btn btn-primary btn-lg" style="font-size: 19px;">전문회원</button>


          </div>
        </div>
      </div>
    </div>
  </div>

</body>
<script>
  $(document).ready(function () {
    $('#community').removeClass('acup');
    $('#store').removeClass('acup');
    $('#id1').mouseover(function () {
      $('#store').removeClass('acup');
      $('#community').addClass('acup');

    }); //커뮤니티 마우스 이벤트   
    $('#id2').mouseover(function () {
      $('#community').removeClass('acup');
      $('#store').addClass('acup');
    }); //스토어 마우스 이벤트 
    $("#total-nav").mouseleave(function () {
      $('#community').removeClass('acup');
      $('#store').removeClass('acup');
      $('#header-cate').removeClass('acup');
    }); //네비바 리브이벤트


    $('#header-category').mouseover(function () {
      $('#header-cate').addClass('acup')
    });
    //카테고리버튼 마우스 이벤트
    $('#first-nav').mouseover(function () {
      $('#header-cate').removeClass('acup')
    });   
   
    
    
    

    $('#header-cate').mouseleave(function () {
      $('#header-cate').removeClass('acup')
    });
    //카테고리 리브이벤트

  }); //end jquery

  //모달
  const body = document.querySelector('body');
  const modal = document.querySelector('.modal');
  const btnOpenPopup = document.querySelector('.popup');

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