<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>  QnA  </title> 
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/home-icon.png">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
    <style>
        #contentForm {
            width: 40%;
            margin: 0 auto;
            padding-top: 12%;
        }
        .table>thead>tr>th,
        .table>tbody>tr>th {
            background-color: #e6ecff;
            text-align: center;
        }
        .btns{
            text-align: right;
        }
    </style>


</head>

<body>
    <form action='<c:url value="/quiz/quizRegist" />' method="post" enctype="multipart/form-data">
        <div id="contentForm"> 
	        <input type="hidden" name="#" value="#"> 
            <div class="input-group input-group-sm" role="group" aria-label="...">
                <table class="table table-striped table-bordered">
                    <thead>
                       
                        <tr>
                            <th style="padding-bottom: 15px;">제목</th>
                            <td><input type="text" name="title" class="form-control" aria-describedby="basic-addon1"></td>
                        </tr>
                        <tr>
                            <th style="padding-bottom: 15px;">분류</th>
                            <td>     
                                <select class="form-control" name="type" id="#">
									<option>시공</option>
									<option>도배</option>
									<option>타일</option>
									<option>건축자재</option>
									<option>건축설비</option>
									<option>장판</option>
									<option>필름시트</option>
								</select>
                            </td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td colspan="2"> 
                            	<textarea class="form-control" rows="10" name="content" placeholder="글을 적어 주세요."></textarea>
                                <input multiple="multiple" type="file" name="file">
                            </td>
                        </tr>
                    </tbody>
                </table>
	        	<div class="btn-group btn-group-sm" role="group" aria-label="..."> 
	            	<input type="submit"class="btn btn-primary btns" value="글쓰기"> 
	            </div>
            </div>
        </div>
    </form>

</body>


</html>
