<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file = "include/header.jsp" %>  


<body id="page-top">     
    <div id="demo" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <!-- 슬라이드 쇼 -->
            <div class="carousel-item active">
                <!--가로--> <img class="d-block w-100" src="${pageContext.request.contextPath }/resources/img/cas2.jpg" alt="First slide">
            </div>
            <div class="carousel-item"> <img class="d-block w-100" src="${pageContext.request.contextPath }/resources/img/cas1.jpg" alt="Second slide"> </div>
            <div class="carousel-item"> <img class="d-block w-100" src="${pageContext.request.contextPath }/resources/img/cas3.jpg" alt="Third slide"> </div>
            <!-- / 슬라이드 쇼 끝 -->
            <!-- 왼쪽 오른쪽 화살표 버튼 --> <a class="carousel-control-prev" href="#demo" data-slide="prev"> <span
                    class="carousel-control-prev-icon" aria-hidden="true"></span> <!-- <span>Previous</span> --> </a> <a
                class="carousel-control-next" href="#demo" data-slide="next"> <span class="carousel-control-next-icon"
                    aria-hidden="true"></span> <!-- <span>Next</span> --> </a> <!-- / 화살표 버튼 끝 -->
            <!-- 인디케이터 -->
            <ul class="carousel-indicators">
                <li data-target="#demo" data-slide-to="0" class="active"></li>
                <!--0번부터시작-->
                <li data-target="#demo" data-slide-to="1"></li>
                <li data-target="#demo" data-slide-to="2"></li>
            </ul> <!-- 인디케이터 끝 -->
        </div>



        <h3 class="best_title" style="margin-top: 40px;">전문가 집들이</h3>
      

        <div class="hash-tag-lists text-center" style="margin: 50px;">
            <a href="javascript:;" data-typecd="lan" class="hash-tag__name">#랜선 집들이</a>
            <a href="javascript:;" data-typecd="export" class="hash-tag__name">#전문가 집들이</a>
            <a href="javascript:;" data-typecd="movie" class="hash-tag__name">#영상 집들이</a>
        </div>


        <div class="cards col-md-2">
            <div class="card" style="width: 100%;">
                <a href="#"><img src="${pageContext.request.contextPath }/resources/img/interior10.png" class="card-img-top" alt="..."></a>
                <div class="card-body">
                    <h5 class="card-title">제목</h5>

                    <hr>
                    <div class="d-flex justify-content-between align-items-center">
                        <div class="reply-image" style="font-size: 10px;">
                            <img class="userimg" src="${pageContext.request.contextPath }/resources/img/icon.png" alt="prof">
                            닉네임~
                        </div>
                        <div class="reply-view">
                            <span>댓글5</span>
                            <a class="heart"><i class="far fa-heart"></i>5</a>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="cards col-md-2">
            <div class="card" style="width: 100%;">
                <a href="#"><img src="${pageContext.request.contextPath }/resources/img/interior10.png" class="card-img-top" alt="..."></a>
                <div class="card-body">
                    <h5 class="card-title">제목</h5>

                    <hr>
                    <div class="d-flex justify-content-between align-items-center">
                        <div class="reply-image" style="font-size: 10px;">
                            <img class="userimg" src="${pageContext.request.contextPath }/resources/img/icon.png" alt="prof">
                            닉네임~
                        </div>
                        <div class="reply-view">
                            <span>댓글5</span>
                            <a class="heart"><i class="far fa-heart"></i>5</a>

                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="cards col-md-2">
            <div class="card" style="width: 100%;">
                <a href="#"><img src="${pageContext.request.contextPath }/resources/img/interior10.png" class="card-img-top" alt="..."></a>
                <div class="card-body">
                    <h5 class="card-title">제목</h5>

                    <hr>
                    <div class="d-flex justify-content-between align-items-center">
                        <div class="reply-image" style="font-size: 10px;">
                            <img class="userimg" src="${pageContext.request.contextPath }/resources/img/icon.png" alt="prof">
                            닉네임~
                        </div>
                        <div class="reply-view">
                            <span>댓글5</span>
                            <a class="heart"><i class="far fa-heart"></i>5</a>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="cards col-md-2">
            <div class="card" style="width: 100%;">
                <a href="#"><img src="${pageContext.request.contextPath }/resources/img/interior10.png" class="card-img-top" alt="..."></a>
                <div class="card-body">
                    <h5 class="card-title">제목</h5>

                    <hr>
                    <div class="d-flex justify-content-between align-items-center">
                        <div class="reply-image" style="font-size: 10px;">
                            <img class="userimg" src="${pageContext.request.contextPath }/resources/img/icon.png" alt="prof">
                            닉네임~
                        </div>
                        <div class="reply-view">
                            <span>댓글5</span>
                            <a class="heart"><i class="far fa-heart"></i>5</a>

                        </div>
                    </div>
                </div>
            </div>
        </div>




    </div>
    </div>

    <div class="button-area text-center button-more" style="margin-top: 50px; margin-bottom: 50px;">
        <input type="hidden" value="1" class="" name="">
        <button class="btn btn-default more" data-addmore="true" onclick="#">더보기</button>
    </div>

    <h3 class="best_title">내집 뽐내기 BEST</h3>

    <div class="col-md-12">
        <div class="board">
            <div class="cards col-md-2">
                <div class="card" style="width: 100%;">
                    <a href="#"><img src="${pageContext.request.contextPath }/resources/img/interior10.png" class="card-img-top" alt="..."></a>
                    <div class="card-body">
                        <h5 class="card-title">제목</h5>

                        <hr>
                        <div class="imgview">

                            <img class="imgbtn" src="${pageContext.request.contextPath }/resources/img/witbtn.png" alt="가구느낌사진">

                        </div>
                    </div>
                </div>
            </div>
            <div class="cards col-md-2">
                <div class="card" style="width: 100%;">
                    <a href="#"><img src="${pageContext.request.contextPath }/resources/img/interior10.png" class="card-img-top" alt="..."></a>
                    <div class="card-body">
                        <h5 class="card-title">제목</h5>

                        <hr>
                        <div class="imgview">

                            <img class="imgbtn" src="${pageContext.request.contextPath }/resources/img/simebtn.png" alt="가구느낌사진">

                        </div>
                    </div>
                </div>
            </div>
            <div class="cards col-md-2">
                <div class="card" style="width: 100%;">
                    <a href="#"><img src="${pageContext.request.contextPath }/resources/img/interior10.png" class="card-img-top" alt="..."></a>
                    <div class="card-body">
                        <h5 class="card-title">제목</h5>

                        <hr>
                        <div class="imgview">

                            <img class="imgbtn" src="${pageContext.request.contextPath }/resources/img/homebtn.png" alt="가구느낌사진">

                        </div>
                    </div>
                </div>
            </div>
            <div class="cards col-md-2">
                <div class="card" style="width: 100%;">
                    <a href="#"><img src="${pageContext.request.contextPath }/resources/img/interior10.png" class="card-img-top" alt="..."></a>
                    <div class="card-body">
                        <h5 class="card-title">제목</h5>

                        <hr>
                        <div class="imgview">

                            <img class="imgbtn" src="${pageContext.request.contextPath }/resources/img/babybtn.png" alt="가구느낌사진">

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

	<div class="button-area text-center button-more" style="margin-top: 50px; margin-bottom: 50px;">
        <input type="hidden" value="1" class="" name="">
        <button class="btn btn-default more2" data-addmore="true" onclick="#">더보기</button>
    </div>




    <!-- 스토어 view-->

    <h4 class="card-title" style="text-align: center; font-weight: bold; margin-top: 60px;">스토어</h4>

    <div class="col-md-12 category">
        <ul>
            <li class="col-md-1 category-item is-active" data-filter4="" data-sort="">
                <a href="#" class="is-active"><i class="fas fa-heart fa-4x "
                        style="color: rgb(51, 49, 49);"></i><br>BEST</a>
            </li>
            <li class="col-md-1 category-item" data-filter4="" data-sort="rgstdtime">
                <a href="#"><i class="fas fa-clinic-medical fa-4x" style="color: rgb(51, 49, 49);"></i><br>NEW</a>
            </li>

            <li class="col-md-1 category-item is-active" data-filter4="" data-sort="#">
                <a href="#"><i class="fas fa-couch fa-4x" style="color: rgb(51, 49, 49);"></i><br>거실</a>
            </li>

            <li class="col-md-1 category-item is-active" data-filter4="" data-sort="#">
                <a href="#"><i class="fas fa-bed fa-4x" style="color: rgb(51, 49, 49);"></i><br>침실</a>
            </li>

            <li class="col-md-1 category-item is-active" data-filter4="" data-sort="#">
                <a href="#"><i class="fas fa-book-open fa-4x" style="color: rgb(51, 49, 49);"></i><br>서재</a>
            </li>

            <li class="col-md-1 category-item is-active" data-filter4="" data-sort="#">
                <a href="#"><i class="fas fa-tv fa-4x" style="color: rgb(51, 49, 49);"></i><br>가전</a>
            </li>

            <li class="col-md-1 category-item is-active" data-filter4="" data-sort="#">
                <a href="#"><i class="fas fa-sink fa-4x" style="color: rgb(51, 49, 49);"></i><br>주방</a>
            </li>

            <li class="col-md-1 category-item is-active" data-filter4="" data-sort="#">
                <a href="#"><i class="fas fa-bath fa-4x" style="color: rgb(51, 49, 49);"></i><br>욕실</a>
            </li>

            <li class="col-md-1 category-item is-active" data-filter4="" data-sort="#">
                <a href="#"><i class="fas fa-laptop-house fa-4x" style="color: rgb(51, 49, 49);"></i><br>기타공간</a>
            </li>


        </ul>
    </div>




    <div class="container">
        <div class="row">

            <div class="col-md-4">
                <div class="card3" style="width: 100%;">
                    <a href="#"><img src="${pageContext.request.contextPath }/resources/img/interior10.png" class="card-img-top" alt="..."></a>
                    <div class="card-body">
                        <h5 class="card-title">이쁜조명</h5>
                        <p class="card-text">
                            <span class="badge bg-dark sptext">가구제품</span>
                            <span class="badge bg-dark sptext">조명</span>
                            <span class="badge bg-dark sptext">인테리어</span>
                        </p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group" role="group">
                                <button type="button" class="btn btn-sm btn-dark">장바구니 담기</button>
                                <button type="button" class="btn btn-sm btn-info">주문하기</button>
                            </div>
                            <small class="text-dark">000,000원</small>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card3" style="width: 100%;">
                    <a href="#"><img src="${pageContext.request.contextPath }/resources/img/interior10.png" class="card-img-top" alt="..."></a>
                    <div class="card-body">
                        <h5 class="card-title">이쁜조명</h5>
                        <p class="card-text">
                            <span class="badge bg-dark sptext">가구제품</span>
                            <span class="badge bg-dark sptext">조명</span>
                            <span class="badge bg-dark sptext">인테리어</span>
                        </p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group" role="group">
                                <button type="button" class="btn btn-sm btn-dark">장바구니 담기</button>
                                <button type="button" class="btn btn-sm btn-info">주문하기</button>
                            </div>
                            <small class="text-dark">000,000원</small>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card3" style="width: 100%;">
                    <a href="#"><img src="${pageContext.request.contextPath }/resources/img/interior10.png" class="card-img-top" alt="..."></a>
                    <div class="card-body">
                        <h5 class="card-title">이쁜조명</h5>
                        <p class="card-text">
                            <span class="badge bg-dark sptext">가구제품</span>
                            <span class="badge bg-dark sptext">조명</span>
                            <span class="badge bg-dark sptext">인테리어</span>
                        </p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group" role="group">
                                <button type="button" class="btn btn-sm btn-dark">장바구니 담기</button>
                                <button type="button" class="btn btn-sm btn-info">주문하기</button>
                            </div>
                            <small class="text-dark">000,000원</small>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card3" style="width: 100%;">
                    <a href="#"><img src="${pageContext.request.contextPath }/resources/img/interior10.png" class="card-img-top" alt="..."></a>
                    <div class="card-body">
                        <h5 class="card-title">이쁜조명</h5>
                        <p class="card-text">
                            <span class="badge bg-dark sptext">가구제품</span>
                            <span class="badge bg-dark sptext">조명</span>
                            <span class="badge bg-dark sptext">인테리어</span>
                        </p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group" role="group">
                                <button type="button" class="btn btn-sm btn-dark">장바구니 담기</button>
                                <button type="button" class="btn btn-sm btn-info">주문하기</button>
                            </div>
                            <small class="text-dark">000,000원</small>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card3" style="width: 100%;">
                    <a href="#"><img src="${pageContext.request.contextPath }/resources/img/interior10.png" class="card-img-top" alt="..."></a>
                    <div class="card-body">
                        <h5 class="card-title">이쁜조명</h5>
                        <p class="card-text">
                            <span class="badge bg-dark sptext">가구제품</span>
                            <span class="badge bg-dark sptext">조명</span>
                            <span class="badge bg-dark sptext">인테리어</span>
                        </p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group" role="group">
                                <button type="button" class="btn btn-sm btn-dark">장바구니 담기</button>
                                <button type="button" class="btn btn-sm btn-info">주문하기</button>
                            </div>
                            <small class="text-dark">000,000원</small>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card3" style="width: 100%;">
                    <a href="#"><img src="${pageContext.request.contextPath }/resources/img/interior10.png" class="card-img-top" alt="..."></a>
                    <div class="card-body">
                        <h5 class="card-title">이쁜조명</h5>
                        <p class="card-text">
                            <span class="badge bg-dark sptext">가구제품</span>
                            <span class="badge bg-dark sptext">조명</span>
                            <span class="badge bg-dark sptext">인테리어</span>
                        </p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group" role="group">
                                <button type="button" class="btn btn-sm btn-dark">장바구니 담기</button>
                                <button type="button" class="btn btn-sm btn-info">주문하기</button>
                            </div>
                            <small class="text-dark">000,000원</small>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="button-area text-center button-more" style="margin-top: 50px; margin-bottom: 50px;">
        <input type="hidden" value="1" class="" name="">
        <button class="btn btn-default more2" data-addmore="true" onclick="#">더보기</button>
    </div>


</body>

<%@include file = "include/footer.jsp" %> 

