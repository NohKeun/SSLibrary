<%@ page contentType="text/html; charset=euc-kr"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>SS Library</title>
</head>
<body>
	<table bgcolor="lightgrey" width="100%" height="100%" cellpadding="0" cellspacing="0"
		border="0">
		<tr>
			<td align="left">
				<img src="./style/image/logo.jpg" alt="logo img" width="200"
					height="80">
			</td>
			<td align="right">
				<a href="mainAction.action">home</a>
				<s:if test="${ session_id == null }">
				<a href="joinForm.action">회원가입</a>
				<a href="loginForm.action">로그인</a>     
				</s:if>
				<s:else>
					<s:if test="${ session_admin_tp == 1 }">
					<a href="admin.action">관리자페이지</a>
					</s:if>
					<s:else>
					<a href="mypage.action">마이페이지</a>
					</s:else>
				<a href="logout.action">로그아웃 (${ session_id })</a> 
				</s:else>
			</td>			
		</tr>
		<tr>
			<td align="center" background="./style/image/.jpg">
			<h1 style="color:black; font-size:130%;">
			<a href="da"><img src="./style/image/header/1.jpg" alt="자료검색"/></a>
			<a href="admin.action"><img src="./style/image/header/2.jpg" alt="좌석예약"/></a>
			<a href="da"><img src="./style/image/header/3.jpg" alt="공지사항"/></a>
			<a href="boardList.action"><img src="./style/image/header/4.jpg" alt="자유게시판"/></a>
			<a href="introduce.action"><img src="./style/image/header/5.jpg" alt="도서관소개"/></a>
			<a href="da"><img src="./style/image/header/6.jpg" alt="마이페이지"/></a>
			</td>
		</tr>
	</table>
</body>
</html>