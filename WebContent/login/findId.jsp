<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javaScript" language="javascript"> 

function findIdForm() 
{
document.findIdForm.member_email.value == ""
alert("이메일을 입력하세요");
document.findIdForm.member_email.focus();
return false;
}

</script>
<link rel="stylesheet" href="../assets/css/main.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>아이디찾기 </title>



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
<form method="post" action="findId.action" name="findIdForm" >
<div align="center" style="width:300px;">
<div class="box">
email : <input type="text" class="iText" name="member_email" value="" >
<br><br>
<button type="submit" class="findIdbutton">아이디찾기 </button>
</div>
<div align="center" >
<p>
<button type="button" class="miss" onclick="location.href='joinForm.action'"><B>회원가입</B></button> &nbsp;&nbsp;
<button type="button" class="miss" onclick="location.href='findPwForm.action'"><b>비밀번호찾기</b></button>
</p>
</div>
</div>
</form>
<br><br><br><br><br><br>
</center>
</body>
</html>