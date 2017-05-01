<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>	

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javaScript" language="javascript"> 

	function loginForm() {
		if (document.loginForm.member_id.value == "") {
			alert("아이디를 입력하세요");
			document.loginForm.member_id.focus();
			return false;
		} 
		else if (document.loginForm.member_pw.value == "") {
			alert("비밀번호를 입력하세요");
			document.loginForm.member_pw.focus();
			return false;
		}
		return true;
	}

</script>
<link rel="stylesheet" href="../assets/css/main.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>로그인 폼</title>



<!--
<style>
.loginbutton {
  font-family: NanumGothic, '나눔고딕', NanumGothicWeb, "Malgun Gothic",Gulim,sans-serif;
  background: #fff;
  font-size: 20px;
  outline: none;
  background: #d3d3d3;
  width: 326px;
  height:60;
  border: 0;
  border-radius: 5px;
  padding: 10px;
  color: #FFFFFF;
  }
.loginbutton:hover {
	color:#ffffff;  
	background: #E72064;
}

.miss {
	color:#d3d3d3;
	border-radius: 8px;
	padding: 2px 5px;
	background: #ffffff;
	HEIGTH:20PX;
	border:0;
}

.miss:HOVER{
	color:#E72064;
	background: #ffffff;
	
}
</style> 

 -->

</head>


<body>
<center>
<br><br><br><br><br><br><br><br>
<form method="post" action="checkId.action" name="loginForm" >
<div align="center" style="width:300px;">
         
           <div class="box">
            <input type="text" class="iText" name="member_id" value="" >
            <br>
            <input type="password" name="member_pw" class="iText">
            <br><br>
              <button type="submit" class="loginbutton">Login</button>
       
          </div>
          
            <div align="center" >
            <p>
          		<button type="button" class="miss" onclick="location.href='joinForm.action'"><B>회원가입 </B></button> &nbsp;&nbsp;
              	<button type="button" class="miss" onclick="location.href='findIdForm.action'"><b>아이디 찾기 </b></button> &nbsp;&nbsp;
              	<button type="button" class="miss" onclick="location.href='findPwForm.action'"><b>비밀번호 찾기 </b></button> &nbsp;&nbsp;
            </p>
           	</div>
      </div>
  </form>
      <br><br><br><br><br><br>
</center>
</body>
</html>