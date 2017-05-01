<%@ page contentType="text/html; charset=euc-kr"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<title>회원 정보 수정</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript">
   
    function checkIt() {
        var userinput = eval("document.userinput");
        if(!userinput.member_id.value) {
            alert("ID를 입력하세요");
            return false;
        }
       
        if(!userinput.member_pw.value ) {
            alert("비밀번호를 입력하세요");
            return false;
        }
        if(userinput.member_pw.value != userinput.member_pwr.value)
        {
            alert("비밀번호를 동일하게 입력하세요");
            return false;
        }
      
        if(!userinput.member_nm.value) {
            alert("사용자 이름을 입력하세요");
            return false;
        }
        if(!member_birth.value)
        {
            alert("생년월일을 입력하시오");
            return false;
        }
    }
</script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function zipCheck() {
        new daum.Postcode({
            oncomplete: function(data) {
                var fullAddr = '';
                var extraAddr = '';


                if (data.userSelectedType === 'R') {
                    fullAddr = data.roadAddress;

                } else {
                    fullAddr = data.jibunAddress;
                }

                
                if(data.userSelectedType === 'R'){
                   
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                   
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

        
                document.getElementById('member_zipcode').value = data.zonecode; 
                document.getElementById('member_adr1').value = fullAddr;


                document.getElementById('member_adr2').focus();
            }
        }).open();
    }
</script>

<body>

<form method="post" action="joinSuccess.action" name="userinput" onSubmit="return checkIt()">
  <table width="650" border="1" cellspacing="0" cellpadding="3" align="center" >
    <tr>
    <td colspan="2" height="39" align="center">
       <font size="+1" ><b>회원가입</b></font></td>
    </tr>
    <tr>
      <td width="250" ><b>아이디 입력</b></td>
      <td width="400" > </td>
    </tr> 

    <tr>
      <td width="250"> 사용자 ID</td>
      <td width="400">
        <input type="text" name="member_id" size="10" maxlength="12"> 
        &nbsp;&nbsp;<s:property value="resultClass.member_id" />
      </td>
    </tr>
    <tr>
      <td width="250"> 비밀번호</td>
      <td width="400" >
        <input type="password" name="member_pw" size="15" maxlength="12">
        &nbsp;&nbsp;<s:property value="resultClass.member_pw" />
      </td>
    <tr> 
      <td width="250">비밀번호 확인</td>
      <td width="400">
        <input type="password" name="member_pwr" size="15" maxlength="12">
        &nbsp;&nbsp;<s:property value="resultClass.member_pwr" />
      </td>
    </tr>
    <tr>
      <td width="250" ><b>개인정보 입력</b></td>
      <td width="400" > </td>
    </tr> 
    <tr>
      <td width="250">사용자 이름</td>
      <td width="400">
        <input type="text" name="member_nm" size="15" maxlength="10">
        &nbsp;&nbsp;<s:property value="resultClass.member_nm" />
      </td>
    </tr>
     <tr>
      <td width="250"> 사용자 생년월일</td>
      <td width="400">
        <input type="text" name="member_birth" size="10" maxlength="12">
        &nbsp;&nbsp;<s:property value="resultClass.member_birth" />
      </td>
    </tr>
    <tr>
      <td width="250">E-Mail</td>
      <td width="400">
        <input type="text" name="member_email" size="40" maxlength="30">
        &nbsp;&nbsp;<s:property value="resultClass.member_email" />
      </td>
    </tr>
    <tr>
      <td width="250"> 이메일 수신동의</td>
      <td width="400">
        <input type="checkbox" name="member_dmy" value="member_dmy">동의
  		<input type="checkbox" name="member_dmn" value="member_dmn">거부<br>
      </td>
    </tr>
    <tr>
      <td width="250">휴대전화 번호</td>
      <td width="400">
        <input type="text" name="member_mobile" size="15" maxlength="10">
        &nbsp;&nbsp;<s:property value="resultClass.member_mobile" />
      </td>
    </tr>
    <tr>
<tr> 
       <td width="250">우편번호</td>
       <td> <input type="text" id="member_zipcode" name="member_zipcode" size="7">
               <input type="button" value="우편번호찾기" onClick="zipCheck()">
               &nbsp;&nbsp;<s:property value="resultClass.member_zipcode" /></td>
          </tr>
    <tr> 
       <td>주소</td>
       <td><input type="text" id="member_adr1" name="member_adr1" size="70">
       &nbsp;&nbsp;<s:property value="resultClass.member_adr1" /></td>
    </tr>
    <tr> 
       <td>상세주소</td>
       <td><input type="text" id="member_adr2" name="member_adr2" size="70">
       &nbsp;&nbsp;<s:property value="resultClass.member_adr2" /></td>
    </tr>
    <tr>
      <td colspan="2" align="center" >
          <input type="submit" name="confirm" value="수정 완료" >
          <input type="reset" name="reset" value="다시 입력">
          <input type="button" value="취소" onclick="javascript:location.href='main.action'">
      </td>
    </tr>
  </table>
</form>
</body>
</html>