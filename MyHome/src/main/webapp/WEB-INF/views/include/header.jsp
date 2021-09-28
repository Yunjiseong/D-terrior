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
	  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	  <script src="https://kit.fontawesome.com/86e4aadf8c.js" crossorigin="anonymous"></script>
	  	  
      <!-- Favicon-->
      <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath }/resources/img/favicon-14x160.jpg" />
      
      <!-- Font Awesome icons (free version)-->
     <script src="https://use.fontawesome.com/releases/v5.19.3/js/all.js" crossorigin="anonymous"></script>
     
      <!-- Google fonts-->
      <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
      <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
      <link rel="stylesheet" href="https://cdn.rawgit.com/twbs/bootstrap/v4-dev/dist/css/bootstrap.css">
       
	
    
<script>

  $(document).ready(function() {
	  //최초 로딩 시 이벤트
      $('#community').removeClass('acup');
      $('#store').removeClass('acup');
      
   	  //커뮤니티 마우스 이벤트  
      $('#id1').mouseover(function () {
        $('#community').addClass('acup');
        $('#store').removeClass('acup');
      }); 
      
   	  //스토어 마우스 이벤트
       $('#id2').mouseover(function () {
       $('#community').removeClass('acup');
       $('#store').addClass('acup');
      }); 
      
      //마우스 leave 시 이벤트      
      $("#total-nav").mouseleave(function () {
        $('#community').removeClass('acup');
        $('#store').removeClass('acup');
      }); 
  
  });//end jquery

  
  </script> 
  
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
  <nav class="navbar navbar-expand-lg navbar-header fixed-top " id="nav-main"
        style="background-color: rgb(255, 255, 255);  width: 100%;">
        <div class="container">
            <a class="navbar-brand" href="#"><img class="navbar-brand " href="#" img src="${pageContext.request.contextPath }/resources/img/logo2.jpg"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            
            <div class="collapse navbar-collapse" id="navbarSupportedContent"
              style="font-family:'Cafe24SsurroundAir', sans-serif; font-size: 1.2em; ">
              <ul class="navbar-nav mr-auto vi1">
                <li class="nav-item active " id="id1">
                  <a class="nav-link" href="#" style="color: black; ">커뮤니티</a>
                </li>
                <li class="nav-item vi2" id="id2">
                  <a class="nav-link" href="#" style="color: black;padding-left: 2rem;">스토어</a>
                </li>
              </ul>
            </div>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <form class="form-inline my-2 my-lg-0" role="search">
                <div class="input-group">
                  <input type="text" class="form-control" placeholder="Search" style="padding-right: 2rem;">
                  <div class="input-group-btn " style="align-items: center;">
                    <button type="submit" class="btn btn-info"><span class="lnr lnr-magnifier"></span></button>
                  </div>
                </div>
              </form>
            </div>
            <div class="collapse navbar-collapse" id="navbarSupportedContent"
              style="font-family:'Cafe24SsurroundAir', sans-serif; font-size: 1.2em; ">
              <ul class="navbar-nav">
                <li class="nav-item vi3">
                  <a class="nav-link" href="#" style="color: black;"> 로그인</a>
                </li>

                <li class="nav-item vi4">
                  <a class="nav-link" href="#" style="color: black;">회원가입</a>
                </li>
                <li class="nav-item vi5">
                  <a class="nav-link " href="#" style="color: black;">고객센터</a>
                </li>

              </ul>
            </div>
          

        </div>
      </nav>

  
  <nav class="navbar navbar-expand-lg  bg acup nav-head" id="community"
    style="min-width: max-content;background-color: white;  font-family:'Cafe24SsurroundAir', sans-serif; font-size: 0.95em ;">
    <div class="container">
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav col-auto nav-item2">
          <a class="nav-link" href="#">Home</a>
          <a class="nav-link" href="#">내집뽐내기</a>
          <a class="nav-link" href="#">질문과답변</a>
          <a class="nav-link" href="#">이벤트</a>
        </div>
      </div>
    </div>
  </nav>
  <nav class="navbar navbar-expand-lg acup nav-head" id="store"
    style="background-color: white; font-family:'Cafe24SsurroundAir', sans-serif; font-size: 0.95em ;s">
    <div class="container ">
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup" ">
        <div class=" navbar-nav col-auto">
        <a class="nav-link" href="#">베스트</a>
        <a class="nav-link" href="#" id="header-category"
          onmouseover="document.getElementById('header-cate').style.display = 'block';">카테고리</a>
        <a class="nav-link" href="#">전문가의손길</a>
      </div>
    </div>
    </div>
  </nav>
  <div class="header-categorys col-auto " id="header-cate"
  onmouseleave="document.getElementById('header-cate').style.display = 'none';">
  <ul style="font-family: 'Cafe24SsurroundAir','notosans';">
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


</body>
</html>