<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../include/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  
  <link href="${pageContext.request.contextPath}/resources/css/shoppage.css" rel="stylesheet">
  <style>
  
 	.st-write{
  	position: relative; 
  	left: 82%;
  	}
  	
  
  </style>
</head>
<body id="homepage-margin" style="margin-top: 90px;">
    <side >
        <div id="page-wrapper">
    
            <!-- 사이드바 -->
            <div id="sidebar-wrapper" style="height: 500px;">
              <ul class="sidebar-nav">
                <li class="sidebar-brand">
                  <a href="#">D'terrior</a>
                </li>
                <li class="side-mu">
                  <a href="#">거실</a>
                </li>
                <li class="side-mu">
                  <a href="#">침실</a>
                </li>
                <li class="side-mu">
                  <a href="#">서재</a>
                </li>
                <li class="side-mu">
                  <a href="#">가전</a>
                </li>
                <li class="side-mu"> 
                  <a href="#">주방</a>
                </li>
                <li class="side-mu">
                  <a href="#">욕실</a>
                </li>
              </ul>
            </div>
       </div>
    </side>  
  <main class="mt-3" id="homepage-margin">
    <div class="container" style="max-width: 1400px; position: relative; left: 150px;">
      <h3 class="title">카테고리이름</h3>
      <c:if test="${user.grade == 'pro' }">
	      <button type="button" class="btn btn-info st-write" onclick="location.href='<c:url value="/store/productIn" />'">상품등록</button>
      </c:if>
      <div class="row">
        
        <c:choose>
           <c:when test="${products != null }">
              <c:forEach var='product' items="${products }">
                 <div class="col-xl-3 col-lg-4 col-md-6">
                   <div class="card" style="width: 18rem;">
                     <a href='<c:url value="/store/productDetail/${product.pno }" />'>
                     	<c:choose>
                     		<c:when test="${product.thumbnail != null }">
                     			<img src='<c:url value="/store/display?fileLoca=${product.thumbnail }" />' class="card-img-top" alt="...">
                     		</c:when>
                     		<c:otherwise>
		                     	<img src="${pageContext.request.contextPath}/resources/img/interior10.png" class="card-img-top" alt="...">                     		
                     		</c:otherwise>
                     	</c:choose>
                     </a>
                     <div class="card-body">
                       <h5 class="card-title">${product.name }</h5>
                       <p class="card-text">
                         <span class="badge bg-dark" style="color: white;">${product.category1 }</span>
                         <span class="badge bg-dark" style="color: white;">${product.category2 }</span>
                       </p>
                       <div class="d-flex justify-content-between align-items-center">
                         <div class="btn-group" role="group">
                           <button type="button" class="btn btn-sm btn-dark">장바구니 담기</button>
                           <button type="button" class="btn btn-sm btn-info">주문하기</button>
                         </div>
                         <small class="text-dark">${product.price }</small>
                       </div>
                     </div>
                   </div>
                 </div>
              </c:forEach>
           </c:when>
           <c:otherwise>
              상품이 존재하지 않습니다.
           </c:otherwise>
        </c:choose>
    
      </div>
    </div>
    
    <nav class="pagination-sm pag">
        <ul class="pagination">
           <c:if test="${paging.prev }">
               <li class="page-item">
                   <a class="page-link" href='<c:url value="/store/storeList?pageNum=${paging.beginPage-1}"/>'>◁</a>
               </li>           
           </c:if>
           <c:forEach var="i" begin="${paging.beginPage }" end="${paging.endPage }">
               <li class="page-item">
                   <a class="page-link" href='<c:url value="/store/storeList?pageNum=${i}"/>'>${i}</a>
               </li>           
           </c:forEach>
           <c:if test="${paging.next }">
               <li class="page-item">
                   <a class="page-link" href='<c:url value="/store/storeList?pageNum=${paging.endPage+1}"/>'>▷</a>
               </li>           
           </c:if>
        </ul>
    </nav>
</div>
</div>
  </main>
    
</body>


	<script>
	
		var msg = '${msg}';
		if(msg === 'inSuccess') {
			alert('상품등록이 완료되었습니다.');
		}

	
	</script>

</html>

<%@ include file="../include/footer.jsp"%>