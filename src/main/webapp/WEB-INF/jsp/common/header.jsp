<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html data-theme="light">
<head>
<meta charset="UTF-8">
<title>${pageTitle }</title>
<!-- 테일윈드CSS -->
<script src="https://cdn.tailwindcss.com"></script>
<!-- daisy UI -->
<link href="https://cdn.jsdelivr.net/npm/daisyui@4.12.14/dist/full.min.css" rel="stylesheet" type="text/css" />
<!-- JQuery -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- 폰트어썸 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" />
<!-- common css -->
<link rel="stylesheet" href="/resource/common.css" />

</head>
<body class="header min-h-screen flex flex-col">
    <div class="bg-gradient-to-br from-[#4B4F54] to-[#707A8B] text-white py-4 shadow-md">
        <nav class="max-w-screen-xl mx-auto flex justify-between items-center">
            <ul class="flex space-x-8 items-center">
                <li><a href="/" class="text-white font-semibold px-4 py-2 rounded-lg transition-all hover:text-[#B8B8B8]">홈</a></li>
            </ul>
            <ul class="flex space-x-8 items-center">
                <c:if test="${rq.getLoginedMemberId() == -1 }">
                    <li class="flex items-center min-h-[40px]">
                        <div data-tip="LOGIN">
                            <a href="${pageContext.request.contextPath}/usr/member/login">
                                <button class="text-white hover:text-[#B8B8B8] px-4 py-2">로그인</button>
                            </a>
                        </div>
                    </li>
                    <li class="flex items-center min-h-[40px]">
                        <div data-tip="JOIN">
                            <a href="${pageContext.request.contextPath}/usr/member/accessIdChk">
                                <button class="btn bg-[#3A4A55] text-white hover:bg-[#2C3B42] hover:shadow-xl border-0 rounded-lg px-5 py-2 transition-all">
                                    회원가입
                                </button>
                            </a>
                        </div>
                    </li>
                </c:if>
                <c:if test="${rq.getLoginedMemberId() != -1 }">
                    <li class="flex items-center min-h-[40px]">
                        <div data-tip="LOGOUT">
                            <a href="${pageContext.request.contextPath}/usr/member/doLogout">
                                <button class="text-white hover:text-[#B8B8B8] px-4 py-2">로그아웃</button>
                            </a>
                        </div>
                    </li>
                    <li class="flex items-center min-h-[40px]">
                        <div data-tip="MYPAGE">
                            <a href="${pageContext.request.contextPath}/usr/member/myPage">
                                <button class="text-white hover:text-[#B8B8B8] px-4 py-2">내 정보</button>
                            </a>
                        </div>
                    </li>
                </c:if>
            </ul>
        </nav>
    </div>
