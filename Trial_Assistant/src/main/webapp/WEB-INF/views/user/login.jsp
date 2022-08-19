<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title> 로그인 페이지  </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="${pageContext.request.contextPath }/resources/images/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/resources/images/favicon.ico">

    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/templatemo.css">


    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/fontawesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->

<style>


/* Start joinSelect.css */

/* login.html의 css*/
.title-box{
    text-align: center;
    justify-content: center;
    margin: 0 auto 100px;
    font-size: 30px !important;
    border:1px solid lightgray;
    border-radius: 40px;
    width: 200px;
    background-color: rgb(228, 227, 227);
    color: rgb(132, 127, 127);
    font-weight: 500 !important;
}

.form-box{
    max-width: 400px;

}

label {
    font-weight: 700 !important;
}

button:hover{
    cursor: pointer;
}
.btn-box{
    margin-top: 70px;
    margin-left: 33px;
    width: 100%;
}

.id-btn{
    float: left;
    margin: 0 5px;
    box-sizing: border-box;
}
.pw-btn{
    float: left;
    margin: 0 5px;
    box-sizing: border-box;
}
.login-btn{
    float: left;
    margin: 0 5px;
    box-sizing: border-box;
    
}


</style>
</head>
<body>
	<jsp:include page="../include/header.jsp" /> 


<!-- Start 로그인 -->
<div class="container py-5">
    <div class="row">
        <form class="form-box m-auto" method="post" role="form">

            <div class="title-box">로그인</div>

         
            <div class="mb-3">
                <label for="inputJoinId">아이디</label>
                <input type="text" class="form-control mt-1" id="joinId" name="joinId" placeholder="아이디를 입력하세요.">
            </div>
            <div class="mb-3 ">
                <label for="inputJoinPw">비밀번호</label>
                <input type="text" class="form-control mt-1" id="joinPw" name="joinPw" placeholder="비밀번호를 입력하세요.">
            </div>
           
            <div class="btn-box">
                <div class="id-btn">
                    <button type="button" onclick="location.href='idSearch.html'" class="btn btn-outline-secondary">아이디 찾기</button>
                </div>
                <div class="pw-btn">
                    <button type="button" onclick="location.href='pwSearch.html'" class="btn btn-outline-secondary">비밀번호 찾기</button>
                </div>
                <div class="login-btn">
                    <button type="submit" class="btn btn-outline-secondary">로그인</button>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- End 로그인 -->


<%@ include file="../include/footer1.jsp"%>



</body>
</html>