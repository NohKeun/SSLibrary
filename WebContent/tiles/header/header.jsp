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
				<a href="joinForm.action">ȸ������</a>
				<a href="loginForm.action">�α���</a>     
				</s:if>
				<s:else>
					<s:if test="${ session_admin_tp == 1 }">
					<a href="admin.action">������������</a>
					</s:if>
					<s:else>
					<a href="mypage.action">����������</a>
					</s:else>
				<a href="logout.action">�α׾ƿ� (${ session_id })</a> 
				</s:else>
			</td>			
		</tr>
		<tr>
			<td align="center" background="./style/image/.jpg">
			<h1 style="color:black; font-size:130%;">
			<a href="da"><img src="./style/image/header/1.jpg" alt="�ڷ�˻�"/></a>
			<a href="admin.action"><img src="./style/image/header/2.jpg" alt="�¼�����"/></a>
			<a href="da"><img src="./style/image/header/3.jpg" alt="��������"/></a>
			<a href="boardList.action"><img src="./style/image/header/4.jpg" alt="�����Խ���"/></a>
			<a href="introduce.action"><img src="./style/image/header/5.jpg" alt="�������Ұ�"/></a>
			<a href="da"><img src="./style/image/header/6.jpg" alt="����������"/></a>
			</td>
		</tr>
	</table>
</body>
</html>