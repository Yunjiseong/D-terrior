<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<title>Insert title here</title>

<style>   

    #main{
        width: 100%;
        height: 300px;
    }

    .contain{
        width: 60%;
        margin: 0px auto;
    }

    #before-title{
        text-align: left;
        color: blue;
    }

    #title{
        font-size: 35px;
        text-align: center;
    }

    .img{
        height: 240px;
        width: 100%;
        border-radius: 5%;
      }

    .profile{
        width: 20px;
        height: 20px;
        border-radius: 50%;
    }

    .card{
        margin-bottom: 10px;
        border: none;
        background: none;
     }
     .index1{
         font-weight: bold;
     }
     .index2{
         color: blue;
     }
     .inimg{
         width: 100%;
         height: auto;
         text-align: center;
     }

     .boast_write{
        position: relative;
        left: 5%;
     }
     .view-count{
         text-align: center;

     }
     .userimg {
    position: absolute;
    width: 30px;
    height: 30px;
    top: 2px;
    margin-left: 10px;
    border-radius: 100%;
    background-color: #dbdbdb;
	}
	
	.reply-wrap {
	    background: #f5f5f5;
	    padding: 15px;
	    border: 1px solid #ddd;
	    position: relative;
	}
	
	.reply-wrap .reply-image {
	    position: absolute;
	    left: 15px;
	    top: 15px;
	
	}
	
	.reply-wrap .reply-content {
	    padding-left: 60px;
	}
	
	.reply-content textarea {
	    resize: none;
	    width: 100%;
	    margin-bottom: 10px;
	}
	
	.reply-input > .form-control {
	    width: 200px;
	    margin-bottom: 5px;
	}
	
	.reply-input {
	    float: left;
	}
	
	.reply-group button {
	    float: right;
	}
	
	.reply-group small {
	    margin-left: 10px;
	    height: 20px;
	    line-height: 20px;
	}
	
	.reply-group a {
	    text-decoration: none;
	    color: #777;
	    float: right;
	}
	.btcon{
	    float: right;
	    margin-bottom: 20px;
	}
	.info{
	     text-align: center;
	}
	.title{
	    text-align: center;
	}
	.text-muted{
	    text-align: center;
	}
	.text-dete{
	    text-align: center;
	}
	.title-profile{
	    text-align: center;
	}
	#before-title{
	    text-align: center;
	}
	.pagination{
	    margin-top: 20px;
	}
	ul {
	    width: 300px;
	    margin-left: auto;
	    margin-right: auto;
  	}
  .inwrite{
      width: 100%;
	  }
	  .info{
	    margin: 30px 0 30px 0;
	      background-color: lightskyblue;
	      width: 45%;
	      position: relative;
	      left: 25%;
	  }
	  .boast_write{  
	      position: relative;
	  }
	  .boast_write .ico{
	    position:absolute;
	    bottom: 300px;
	     left:450px;
	     display: none;
	  }
	  .clearfix::after {
	    display: block;
	    clear: both;
	    content: "";
	}
	.boast_write .Exp{
	    position:absolute;
	    bottom: 300px;
	     left:470px;
	     display: none;
	     border: black solid 1px;
	     width: 200px;
	     height: auto;
	     background-color: rgba(254, 253, 253, 0.2);;
	  }
.exptxt{
    font-size: 12px;
}

</style>
</head>

<body>
    <div class="main">
    <!-- ${pageContext.request.contextPath}/myhome/display?userNum=?&fileName=${home.thumbImg} -->
        <img id="main" src="#" alt="메인사진">
    </div>
    
    <div class="contain">    
        <div id="before-title">내집 뽐내기</div>
        <div id="title">${home.title}</div>
        <div class="title-profile">
        <a href="#" class="id-link"><img class="profile" src='${home.profile}' alt="사진">
            <small class="text-muted"> ${home.writer}</small> <small class="text-dete">${home.regDate}</small></a>
        </div>
        <div class="main-info">
    
    
            <hr class="my-2">
    
            <div class="info">       
                <span class="index1">공간</span> <span class="index2">${home.homeForm}</span> 
                &nbsp;&nbsp;&nbsp; <span class="index1">작업</span> <span class="index2">${home.worker}</span> 
                &nbsp;&nbsp;&nbsp; <span class="index1">장소</span> <span class="index2">${home.place}</span>
                &nbsp;&nbsp;&nbsp; <span class="index1">가족형태</span> <span class="index2">${home.family}</span>
                &nbsp;&nbsp;&nbsp; <span class="index1">평수</span> <span class="index2">${home.homeSize}</span>
                &nbsp;&nbsp;&nbsp; <span class="index1">견적</span> <span class="index2">${home.money}</span>
            </div>
        </div>

        <div class="main col-md-12 col-sm-12 boast_write">
            
                <div contentEditable="false" class="col-md-10 boast_inwrite" readonly="readonly">
                   <img src="${pageContext.request.contextPath}/resources/img/interior10.png" class="inimg" alt="인테리어">
                   <p>${home.content}</p>
                   <img src="${pageContext.request.contextPath}/resources/img/interior11.png" class="inimg" alt="인테리어">
                   <p>위에 집보다 우리집이 더 인테리어 잘했죠?</p>
                   <i class="fas fa-exclamation fa-1x ico"></i>
                   <div class="Exp"> <span class="exptxt">이침대는 말이죠</span> 
                    <hr> <span class="exptxt">000,000원이에요</span>
                </div>
                   
                  </div>

        </div>

        <div class="view">
          <p class="view-count">좋아요${home.likeCnt} 스크랩${home.scrapCnt} 댓글?? 조회${home.viewCnt}</p>  
        </div>

         <!--댓글-->
    <div class="row" style="width: 100%;">
        <div class="col-xs-12 col-md-12 write-wrap">
            <div class="reply-wrap">
                <div class="reply-image">
                    <img class="userimg" src="${pageContext.request.contextPath}/resources/img/icon.png" alt="prof">
                </div>
                <div class="reply-content">
                    <div class="reply-group clearfix">
                       
                        <textarea class="form-control" rows="3" placeholder="댓글을 작성해주세요" id="reply-content"></textarea>
                        <button class="btn btn-info" id="regBtn">등록</button>
                        <button class="btn btn-info"><svg width="24" height="20" viewBox="0 0 24 20"
                                preserveAspectRatio="xMidYMid meet">
                                <path fill="#292929" fill-rule="nonzero"
                                    d="M3.22 20C1.446 20 0 18.547 0 16.765V6.176c0-1.782 1.446-3.235 3.22-3.235h3.118L7.363.377A.586.586 0 0 1 7.903 0h8.195c.24.003.453.152.54.377l1.024 2.564h3.118c1.774 0 3.22 1.453 3.22 3.235v10.589C24 18.547 22.554 20 20.78 20H3.22zm0-1.176h17.56a2.037 2.037 0 0 0 2.05-2.06V6.177c0-1.15-.904-2.058-2.05-2.058h-3.512a.585.585 0 0 1-.54-.368l-1.024-2.574H8.296L7.27 3.75a.585.585 0 0 1-.54.368H3.22a2.037 2.037 0 0 0-2.05 2.058v10.589c0 1.15.904 2.059 2.05 2.059zM12 17.059c-3.064 0-5.561-2.51-5.561-5.588 0-3.08 2.497-5.589 5.561-5.589s5.561 2.51 5.561 5.589c0 3.079-2.497 5.588-5.561 5.588zm0-1.177a4.392 4.392 0 0 0 4.39-4.411A4.392 4.392 0 0 0 12 7.059a4.392 4.392 0 0 0-4.39 4.412A4.392 4.392 0 0 0 12 15.882z">
                                </path>
                            </svg></button>
                    </div>
                </div>

            </div>
			<div id="reply">
             <%-- 댓글 영역
            <div class="col-xs-12 col-md-12 reply-wrap">
                <div class="reply-image">
                    <img class="userimg" src="${pageContext.request.contextPath}/resources/img/icon.png" alt="prof">
                </div>
                <div class="reply-content">
                    <div class="reply-group">
                        <strong class="left">글쓴이</strong>
                        <small class="left">2021/12/12</small>
                        <div class="btn-group-sm" role="group">
                            <button type="button" class="btn btn-info">삭제</button>
                            <button type="button" class="btn btn-info">수정</button>
                        </div>

                    </div>
                    <p>여기는 댓글 영역</p>
                </div>
            </div>
              --%> 
        </div>
        </div>

        

    </div>
    <nav class="pagination-sm pag">
        <ul class="pagination justify-content: center" id="replyBtn">
            <%-- 페이지 버튼 영역
            <li class="page-item">
                <a class="page-link" href="#">
                    이전
                </a>
            </li>
            <li class="page-item">
                <a class="page-link" href="#">
                    1
                </a>
            </li>           
            <li class="page-item">
                <a class="page-link" href="#">
                    다음
                </a>
            </li>
          --%>
        </ul>
    </nav>
       
    </div>       
</body>
<script>
	$(document).ready(function(){ 
		$('.inimg').hover(function(){ 
			$('.ico').toggle(); 
		});
		
		$('.ico').hover(function(){ 
			$('.Exp').toggle(); 
		});		
		
		
	//댓글 등록 처리
	$('#regBtn').click(function() {
		const content = $('#reply-content').val();
		const bno = '${home.bno}';
		const writer = '${home.writer}';
		
		$.ajax({
			url: '<c:url value="/homeReply/regist" />', 
			type: "post",
			data: JSON.stringify({
				"bno": bno,	
				"writer" : writer,
				"content": content				
			}),
			dataType: "text",
			headers: {
				"Content-Type" : "application/json"
			},
			success: function(result) {
				console.log("통신 성공");
				if(result === 'success'){
					$('#reply-content').val('');
					getList(1);					
				}
			},
			error: function() {
				console.log('통신 실패. 관리자에게 문의하세요.');
			}		
			
		}); //end ajax
		
	});
	
	let strAdd = '';
	let strBtn = '';
	getList(1);
	
	//댓글 목록 처리
	function getList(pageNum) {		
		$.getJSON(
			'<c:url value="/homeReply/getList/' + ${home.bno} + '/' + pageNum + '" />',
			function(datas) {
				const list = datas.list;
				const pc = datas.pc;
				strAdd = '';
				
				console.log('리스트: ' + list);
				console.log('pc: ' + pc);
				
				//목록 처리
				for(let i=0;i<list.length;i++){
					strAdd += '<div class="col-xs-12 col-md-12 reply-wrap" id="reply">';
					strAdd += '<div class="reply-image">';
					strAdd += '<img class="userimg" src="${pageContext.request.contextPath}/resources/img/icon.png" alt="prof">';
					strAdd += '</div>';
					strAdd += '<div class="reply-content">';
					strAdd += '<div class="reply-group">';
					strAdd += '<strong class="left">글쓴이</strong>'; //세션 nickname 넣어주기
					strAdd += '<small class="left">2021/12/12</small>';
					strAdd += '<div class="btn-group-sm" role="group">';
					strAdd += '<button type="button" class="btn btn-info">삭제</button>';
					strAdd += '<button type="button" class="btn btn-info">수정</button>';
					strAdd += '</div>';
					strAdd += '</div>';
					strAdd += '<p>' + list[i].content + '</p>';
					strAdd += '</div>';
					strAdd += '</div>';
				}
				$('#reply').html(strAdd);
				
				//페이지버튼 처리
				strBtn = '';
				if(pc.prev){
					strBtn += '<li class="page-item">';
					strBtn += '<button class="page-link" id="' + (pc.beginPage-1) + '" >';
					strBtn += '이전';
					strBtn += '</button>';
					strBtn += '</li>';
				}
				for(let j=pc.beginPage;j<=pc.endPage;j++){
					strBtn += '<li class="page-item">';
					strBtn += '<button class="page-link" id="' + j + '" >';
					strBtn += j;
					strBtn += '</button>';
					strBtn += '</li>';
				}
				if(pc.next){
					strBtn += '<li class="page-item">';
					strBtn += '<button class="page-link" id="' + (pc.endPage+1) + '" >';
					strBtn += '이전';
					strBtn += '</button>';
					strBtn += '</li>';
				}
				$('#replyBtn').html(strBtn);
				
			}
			
		); //end getJSON
	}
	
	
		
	//댓글 페이지버튼 클릭 이벤트
	$('#replyBtn').on('click', 'button', function() {
		getList($(this).attr('id'));
	});
		
		
		
		
	}); //end jquery

</script>	
</html>

