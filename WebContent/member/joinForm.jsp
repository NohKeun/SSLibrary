<%@ page contentType="text/html; charset=euc-kr"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<title>회원가입</title>
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
    // 아이디 중복 여부를 판단
    function openConfirmid(userinput) {
        // 아이디를 입력했는지 검사
        if (userinput.member_id.value == "") {
            alert("아이디를 입력하세요");
            return;
        }
        // url과 사용자 입력 id를 조합합니다.
        url = "member/confirmId.jsp?member_id=" + userinput.member_id.value ;
       
        // 새로운 윈도우를 엽니다.
        open(url, "confirm",
        "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300, height=200");
    }
</script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('member_zipcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('member_adr1').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('member_adr2').focus();
            }
        }).open();
    }
</script>

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

    // 아이디 중복 여부를 판단
     function openConfirmid(userinput) {
        // 아이디를 입력했는지 검사
        if (userinput.member_id.value == "") {
            alert("아이디를 입력하세요");
            return false;
        }
        // url과 사용자 입력 id를 조합합니다.
        url = "confirmId.action?member_id=" + userinput.member_id.value ;
       
        // 새로운 윈도우를 엽니다.
        open(url, "confirm",
        "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=700, height=500");
    }
	
     function inputIdchk(){
    	 document.getElementById('member_zipcode').value = opener.document.confirmId.member_id.value;
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
        <input type="text" onkeydown="inputIdchk()" id="member_id" name="member_id" size="10" maxlength="12">
        <input type="button" name="confirm_id" value="중복확인" OnClick="openConfirmid(this.form)">
      </td>
    </tr>
    <tr>
      <td width="250"> 비밀번호</td>
      <td width="400" >
        <input type="password" name="member_pw" size="15" maxlength="12">
      </td>
    <tr> 
      <td width="250">비밀번호 확인</td>
      <td width="400">
        <input type="password" name="member_pwr" size="15" maxlength="12">
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
      </td>
    </tr>
     <tr>
      <td width="250"> 사용자 생년월일</td>
      <td width="400">
        <input type="text" name="member_birth" size="10" maxlength="12">
      </td>
    </tr>
    <tr>
      <td width="250">E-Mail</td>
      <td width="400">
        <input type="text" name="member_email" size="40" maxlength="30">
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
      </td>
    </tr>
  
<tr> 
       <td width="250">우편번호</td>
       <td>
       <input type="text" id="member_zipcode" name="member_zipcode" placeholder="우편번호">
		<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">  
       </td>
</tr>
         
    <tr> 
       <td>주소</td>
       <td><input type="text" id="member_adr1" name="member_adr1" placeholder="주소" size="70"></td>
    </tr>
    <tr> 
       <td>상세주소</td>
       <td><input type="text" id="member_adr2" name="member_adr2" placeholder="상세주소" size="70"></td>
    </tr>
    <tr>
      <td colspan="2" align="center" >
          <input type="submit" name="confirm" value="등   록">
          <input type="reset" name="reset" value="다시입력">
          <input type="button" value="가입안함" onclick="javascript:location.href='main.action'">
      </td>
    </tr>
  </table>
</form>
</body>
</html>