<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>인덱스를 만들어 보자</title>
    
    
	

</head>
<body>
        <!-- Start Top Nav -->
        <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
            <div class="container text-light">
                <div class="w-100 d-flex justify-content-between">
                    <div>
                        <i class="fa fa-envelope mx-2"></i>
                        <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:info@company.com">바롬@company.com</a>
                        <i class="fa fa-phone mx-2"></i>
                        <a class="navbar-sm-brand text-light text-decoration-none" href="tel:010-1234-1234">010-1234-1234</a>
                    </div>
                    <div>
                        <a class="text-light" id="topnav" href="index.html" target="_blank" rel="sponsored"><i class="fa-sm fa-fw me-2"></i>
                            HOME
                            </a>
                            <a class="text-light" id="topnav" href="<c:url value='/user/login' />" ><i class="fa-sm fa-fw me-2" ></i>
                            로그인
                            </a>
                            <a class="text-light" id="topnav" href="<c:url value='/user/joinSelect' />" ><i class="fa-sm fa-fw me-2" ></i>
                            회원가입
                        </a>
                        <a class="text-light" href="https://www.facebook.com/scourtkorea" target="_blank" rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                        <a class="text-light" href="https://www.instagram.com/scourtkorea/" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                        <a class="text-light" href="https://twitter.com/scourtkorea" target="_blank"><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                    </div>
                </div>
            </div>
        </nav>
        <!-- Close Top Nav -->
        <!-- 이거는 지워도 될 것 같기도 한데 -->
    
    
        <!-- Header -->
        <nav class="navbar navbar-expand-lg navbar-light shadow">
            <div class="container d-flex justify-content-between align-items-center">
    
                <a class="navbar-brand text-success logo h5 align-self-center" href="index.html">
                    <img src="${pageContext.request.contextPath }/resources/images/logoo.png" alt="온라인조력자등재시스템">
                </a>
                <!-- 메인화면으로 돌아가는 화면  -->
    
                <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span> 
                </button>
                <!-- 이게 화면을 줄였을 때 중분류를 볼 수 있는 토클 박스  -->
    
                <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                    <div class="flex-fill">
                        <ul class="header_text nav navbar-nav d-flex justify-content-between mx-lg-auto ">
                            <li class="nav-item">
                                <a class="nav-link" href="index.html">공고</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="about.html">공지사항</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="shop.html">조력자 신청 </a>
                            </li>
                            
                        </ul>
                    </div>
    
                </div>
    
            </div>
    
            <div class="dropdown" id ="dropdownbar">
                                
                    <button class="btn btn-secondary dropdown-toggle btn-group-lg" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false" style="background-color: white; border: 0px;">
                        <i class="bi bi-person-square" style="font-size: 30px; color: black;"></i>
                        <!-- 아이콘 넣음  -->
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                        <li><a class="dropdown-item b1" href="#">로그인</a></li>
                        <li><a class="dropdown-item b1" href="#" aria-current="true">회원가입</a></li>
                        <li><a class="dropdown-item b1" href="<c:url value='/mypage/mypagePerson' />" >마이페이지</a></li>
                        <li><a class="dropdown-item b1" href="#">로그아웃</a></li>
                    </ul>
            </div>
        </nav>
        

    
    </body>