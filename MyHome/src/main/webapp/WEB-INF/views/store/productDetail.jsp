<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../include/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <title>  스토어  </title> 
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/home-icon.png">
<style>
  
</style>
      <!-- Bootstrap core CSS -->
  <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/css/shopinpage.css" rel="stylesheet">
</head>
<body>
  <side>
    <div id="page-wrapper">
        <!-- 사이드바 -->
        <div id="sidebar-wrapper">
          <ul class="sidebar-nav">
            <li class="sidebar-brand">
              <a href="#">D'terrior</a>
            </li>
            <li><a href="#">메뉴 1</a></li>
            <li><a href="#">메뉴 2</a></li>
            <li><a href="#">메뉴 3</a></li>
            <li><a href="#">메뉴 4</a></li>
            <li><a href="#">메뉴 5</a></li>
            <li><a href="#">메뉴 6</a></li>
            <li><a href="#">메뉴 7</a></li>
            <li><a href="#">메뉴 8</a></li>
            <li><a href="#">메뉴 9</a></li>
          </ul>
        </div>
	</div>
</side>  
  <main class="mt-3">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div id="carouselExampleIndicators" class="carousel carousel-dark slide" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                      <div class="carousel-item active">
                        <img src='<c:url value="/store/display?fileLoca=${product.thumbnail }" />' class="d-block w-100" alt="...">
                      </div>
                    </div>
                  </div>
            </div>
            <div class="col-md-8">
                <div class="card" style="width: 18rem;">
    
                    <div class="card-body">
                        <h5 class="card-title">${product.name }</h5>
                        <h5 class="card-title pt-3 pb-3 border-top">${product.price }</h5>
                        <p class ="card-text pt-3 border-top">
                        <span class="badge bg-dark">${priduct.category1 }</span>
                        <span class="badge bg-dark">${priduct.category2 }</span>
                        </p>
                        <p class ="card-text pb-3">
                          	배송비 ${product.deliPrice }원 | 도서산관(제주도) 배송비 추가 ${product.deliPlus }원 | 택배 배송 |<br>
                        	${product.releaseDate }일 이내 출고(주말,공휴일 제외)
                        </p>
                            <p class ="card-text  pb-3 border-top">
                              <div class="row">
                                  <div class="col-auto">
                                      <label class="col-form-label">구매수량</label>
                                  </div>
                                  <div class="col-auto"></div>
                                  <div class="input-group ">
                                    <span class="input-group-text">-</span>
                                    <input type="text" class="form-control" style="width: 40px;" value="1">
                                    <span class="input-group-text">+</span>
                                  </div>
                              </div>
                             </p>
                                <div class="row pt-3 pb-3 border-top"  >
                                    <div class="col-auto">
                                        <h3>총 상품 금액</h3>
                                    </div>
                                </div>
                                <div class="col-auto" style="text-align: right;">
                                    <h3>${product.price }</h3>
                                </div>
                            </div>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group" role="group">
                                <button type="button" class="btn btn-sm btn-dark">장바구니 담기</button>
                                <button type="button" class="btn btn-sm btn-info">주문하기</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
          <div class="col-12 border-top ex">
          	<c:forEach var="i" items="${imgs }">
	            <img src='<c:url value="/store/display?fileLoca=${i}" />' style="margin-top: 100px;">  		
          	</c:forEach>
          </div>
    </div>
  </main>  
 
  </div>
</body>
</html>

<%@ include file="../include/footer.jsp"%>