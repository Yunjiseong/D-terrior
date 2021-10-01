<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.net.URLEncoder" %>
<%@include file = "../include/header.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/Boast_view.css">


<style>   
	  #ngside {
	    position: fixed;
	    right: 100px;
	    bottom: 0;
	    top: 500px;
	    padding: 0;
	    width: 300px;
	    height: 100%;
	    background-color: rgb(251, 251, 251 ,0.1);
	    cursor: default;
	}
	
	@media (max-width: 1817px) {
	    #ngside {
	        display: none;
	    }
	}
	
	a {
	    color: black;
	}
	
	.fill-heart {
	    display: none;
	}
	.fill-scrap{
	    display: none;
	}
	#ngside > ul >li{
	    list-style: none;
	    margin:0 0px 30px 40px;
	}
	.icos{
	    text-align: center;
	}
	.fa-bookmark{
	    margin: 5px;
	}
	.expimg{
	    position: relative;
	    width: 60px;
	    height: 100px;
	    bottom: 30px;
	}
	.btso {
	    position: relative;
	    bottom: 25px;
	}
</style>
</head>

<div class="main">      
        <img id="main" src="${pageContext.request.contextPath}/myhome/display?userNum=720&fileName=${home.thumbImg}" alt="메인사진">
    </div>
    
    <div class="contain">    
        <div id="before-title">내집 뽐내기</div>
        <div id="title">${home.title}</div>
        <div class="title-profile">
        <a href="#" class="id-link"><img class="profile" src='${home.profile}' alt="사진">
            <small class="text-muted"> ${home.writer}</small> <small class="text-dete">${home.regDate}</small></a>
            <div class="btn-group-sm btso" role="group">
                  <button type="button" class="btn btn-default float-right">목록</button>
                  <button type="button" class="btn btn-default float-right">삭제</button>
                  <button type="button" class="btn btn-default float-right">수정</button>
            </div>
        </div>
        <div class="main-info">
    
    
            <hr class="my-2">
    
            <div class="info col-md-12">
                <!--주거형태-->
                <span class="index1"><i class="fas fa-home fa-2x"></i></span> <span class="index2">아파트</span>
                <!--작업분야-->
                &nbsp;&nbsp;&nbsp; <span class="index1"><i class="fas fa-paint-roller fa-2x"></i></span> <span
                    class="index2">${home.worker}</span>
                <!--공간 평수-->
                &nbsp;&nbsp;&nbsp; <span class="index1"><i class="fab fa-buromobelexperte fa-2x"></i></span> <span
                    class="index2">${home.homeSize}</span>
                <!--가족형태-->
                &nbsp;&nbsp;&nbsp; <span class="index1"><i class="fas fa-users fa-2x"></i></i></span> <span
                    class="index2">신혼부부</span>
                <hr>

                &nbsp;&nbsp;&nbsp; <span class="index3">견적</span> <span class="index2">${home.money}</span>
                &nbsp;&nbsp;&nbsp; <span class="index3">장소</span> <span class="index2">${home.place}</span>
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
          <p class="view-count">좋아요${home.likeCnt} 스크랩${home.scrapCnt} 댓글 <span id="totalReply"></span> 조회${home.viewCnt}</p>  
        </div>

         <!--댓글-->
    <div class="row" style="width: 100%;">
        <div class="col-xs-12 col-md-12 write-wrap">
            <div class="reply-wrap">
                <div class="reply-image" style="width: 50px; height: 50px;">                
                    <img class="userimg" src="${pageContext.request.contextPath}/resources/img/icon.png" alt="prof">
                </div>
                <div class="reply-content">
                    <div class="reply-group clearfix">
                       
                        <textarea class="form-control" rows="3" placeholder="댓글을 작성해주세요" id="reply-content"></textarea>
                        <button class="btn btn-info" id="cancelBtn">취소</button>
                        <button class="btn btn-info" id="regBtn">등록</button>
                     
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
        <ul class="pagination" id="replyBtn" style="position: relative; left: 42%;">
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
    
<div id="ngside">
        <ul class="sideul">
            <li>
                <i class="far fa-heart fa-3x icos no-heart"></i>
                    <i class="fas fa-heart fa-3x icos fill-heart"></i>
                    <br>
                    좋아요
            </li>
            <li>
                <i class="far fa-bookmark fa-3x icos no-scrap scraps"></i>
                    <i class="fas fa-bookmark fa-3x icos fill-scrap scraps" style="margin-top: 5px;"></i>
                    <br> 스크랩
               
            </li>
            <li>
                <a href="#reply-target">
                <i class="fas fa-comment fa-3x icos recontent"></i><br>&nbsp;댓글
            </a>
            </li>
        </ul>
    </div>      
</body>
<script>
	//사이드 버튼 기능
	$(document).ready(function () {
      $('.inimg').hover(function () {
          $('.ico').toggle();
      });
 
  
      $('.ico').mousemove(function () {
          $('.Exp').toggle();
      });
	  
	//하트 기능아이콘	   
	  $('.no-heart').click(function(){ 
	     $('.fill-heart').toggle(); 
	       $('.no-heart').hide();
	  });	
	  $('.fill-heart').click(function(){ 
	     $('.no-heart').show(); 
	       $('.fill-heart').hide();
	  });
	
	//스크랩 아이콘	
    $('.no-scrap').click(function(){ 
       $('.fill-scrap').toggle(); 
         $('.no-scrap').hide();
    });	
    $('.fill-scrap').click(function(){ 
       $('.no-scrap').show(); 
         $('.fill-scrap').hide();
    }); // 사이트 기능버튼 끝


    $('.inimg').hover(function(){ 
  	$('.ico').toggle(); 
    });

    $('.ico').hover(function(){ 
	  $('.Exp').toggle(); 
    });	
		
	//수정 확인 처리
	const msg = '${msg}';
	if(msg === 'updateSuccess')
		alert('수정이 완료되었습니다.');
		
		
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
					alert('댓글이 등록되었습니다.');
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
				
				//댓글 총 갯수 표시
				$('#totalReply').html(list.length);
				
				//목록 처리
				//이미지 경로 수정 후 다시 넣기:strAdd += '<img class="userimg" id="img-' + list[i].rno + '" src="' + ${list[i].profile == null ? '${pageContext.request.contextPath}/resources/img/icon.png}' : '${list[i].profile}'} + '" alt="prof">';

				for(let i=0;i<list.length;i++){
					console.log(list[i].profile)
					strAdd += '<div class="col-xs-12 col-md-12 reply-wrap" id="reply-' + list[i].rno +'" >';
					strAdd += '<div class="reply-image" style="width: 50px; height: 50px;">';
					strAdd += '<img class="userimg" id="img-' + list[i].rno + '" src="' + (list[i].profile == null ? '${pageContext.request.contextPath}/resources/img/icon.png' : '${pageContext.request.contextPath}/resources/img/home-icon.png') + '" alt="prof">';
					strAdd += '</div>';
					strAdd += '<div class="reply-content">';
					strAdd += '<div class="reply-group">';
					strAdd += '<strong class="left">' + list[i].writer + '</strong>'; 
					strAdd += '<small class="left">' + timeStamp(list[i].regDate) + '</small>';
					strAdd += '<div class="btn-group-sm" role="group">';
					strAdd += '<button type="button" class="btn btn-info delBtn" reply-page="' + pageNum + '" id="' + list[i].rno + '">삭제</button>';
					strAdd += '<button type="button" class="btn btn-info modBtn" reply-page="' + pageNum + '" reply-content="' + list[i].content + '" id="' + list[i].rno + '">수정</button>';
					strAdd += '</div>';
					strAdd += '</div>';
					strAdd += '<p id="pageHint-' + list[i].rno +'" class="' + pageNum + '">' + list[i].content + '</p>';
					strAdd += '</div>';
					strAdd += '</div>';
					console.log($('.userimg').attr('src'));
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
					strBtn += '다음';
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
	
	//댓글 삭제 처리
	$('#reply').on('click', '.delBtn', function() {
		const rno = $(this).attr('id');		 
		const delPage = $('#pageHint-' + rno).attr('class');
		
		console.log('rno: ' + rno);
		console.log('page: ' + delPage);
		
		if(confirm('삭제하시겠습니까?')){			
			$.ajax({
				type: "post",
				url: "${pageContext.request.contextPath}/homeReply/delete",
				headers: {
					"Content-Type" : "application/json"
				},
				dataType: "text",
				data: rno,
				success: function(result) {
					if(result === 'delSuccess'){
						console.log('댓글 삭제 완료!');
						getList(delPage);
					}					
				},
				error: function() {
					console.log('통신 실패!');
				}
			}); //end ajax	
		}
	
	});	
	
	//댓글 수정 처리
	$('#reply').on('click', '.modBtn', function() {	
		const rno = $(this).attr('id');
		const modPage = $('#pageHint-' + rno).attr('class');	
		
		console.log('rno: ' + rno);
		console.log('page: ' + modPage);

		let strMod = '';
		strMod += '<div class="reply-wrap" id="' + rno +'">';
		strMod += '<div class="reply-image">';               
		strMod += '<img class="userimg" src="' + $('img-' + rno).attr('scr') +'" alt="prof">';
		strMod += '</div>';
		strMod += '<div class="reply-content">';
		strMod += '<div class="reply-group clearfix">';
		strMod += '<textarea class="form-control" rows="3" placeholder="댓글을 작성해주세요" id="reply-content-' + rno +'">' + $(this).attr('reply-content') + '</textarea>';
		strMod += '<button class="btn btn-info" id="mod-cancelBtn">취소</button>';
		strMod += '<button class="btn btn-info" id="mod-regBtn">등록</button>';
		strMod += '<button class="btn btn-info"><svg width="24" height="20" viewBox="0 0 24 20"';
		strMod += 'preserveAspectRatio="xMidYMid meet">';
		strMod += '<path fill="#292929" fill-rule="nonzero"';
		strMod += 'd="M3.22 20C1.446 20 0 18.547 0 16.765V6.176c0-1.782 1.446-3.235 3.22-3.235h3.118L7.363.377A.586.586 0 0 1 7.903 0h8.195c.24.003.453.152.54.377l1.024 2.564h3.118c1.774 0 3.22 1.453 3.22 3.235v10.589C24 18.547 22.554 20 20.78 20H3.22zm0-1.176h17.56a2.037 2.037 0 0 0 2.05-2.06V6.177c0-1.15-.904-2.058-2.05-2.058h-3.512a.585.585 0 0 1-.54-.368l-1.024-2.574H8.296L7.27 3.75a.585.585 0 0 1-.54.368H3.22a2.037 2.037 0 0 0-2.05 2.058v10.589c0 1.15.904 2.059 2.05 2.059zM12 17.059c-3.064 0-5.561-2.51-5.561-5.588 0-3.08 2.497-5.589 5.561-5.589s5.561 2.51 5.561 5.589c0 3.079-2.497 5.588-5.561 5.588zm0-1.177a4.392 4.392 0 0 0 4.39-4.411A4.392 4.392 0 0 0 12 7.059a4.392 4.392 0 0 0-4.39 4.412A4.392 4.392 0 0 0 12 15.882z">';
		strMod += '</path>';
		strMod += '</svg></button>';
		strMod += '</div>';
		strMod += '</div>';
		strMod += '</div>';
		
		$('#reply-' + rno).replaceWith(strMod);		
		
		//수정 시
		$('#mod-regBtn').click(function() {
			const modContent = $('#reply-content-' + rno).val();
			console.log(modContent);
			
			$.ajax({
				type: "post",
				url: "<c:url value='/homeReply/update' />",
				headers: {
					"Content-Type" : "application/json"
				},
				dataType: "text",
				data: JSON.stringify({
					"rno" : rno,
					"content" : modContent
				}),
				success: function(result) {
					if(result === 'modSuccess'){
						console.log('댓글 수정 완료!');
						getList(modPage);
					}
				},
				error: function() {
					console.log('통신 실패!');
				}				
			}); //end ajax
		});
		
		//취소 시
		$('#mod-cancelBtn').click(function() {
			getList(modPage);
		});
	});
	
	
	
	//댓글 등록시간 처리
	function timeStamp(mil) {
		const date = new Date();
		const gap = date.getTime() - mil;
		
		let time;
		
		if(gap < 3600 * 1000)
			time = '방금 전';
		else if(gap < 3600 * 24 * 1000)
			time = parseInt(gap / (3600 * 1000)) + "시간 전";
		else{
			const regTime = new Date(mil);
			const year = regTime.getFullYear();
			const month = regTime.getMonth() + 1;
			const day = regTime.getDate();
			const hour = regTime.getHours();
			const minute = regTime.getMinutes();
			
			time = year + '년 ' + month + '월 ' + day + '일 ' + hour + '시 ' + minute + '분';
		}
		
		return time;		
	}
	
	
		
		
		
		
	}); //end jquery

</script>	
</html>
<%@include file = "../include/footer.jsp" %> 

