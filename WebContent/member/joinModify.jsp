<%@ page contentType="text/html; charset=euc-kr"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<title>ȸ�� ���� ����</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript">
   
    function checkIt() {
        var userinput = eval("document.userinput");
        if(!userinput.member_id.value) {
            alert("ID�� �Է��ϼ���");
            return false;
        }
       
        if(!userinput.member_pw.value ) {
            alert("��й�ȣ�� �Է��ϼ���");
            return false;
        }
        if(userinput.member_pw.value != userinput.member_pwr.value)
        {
            alert("��й�ȣ�� �����ϰ� �Է��ϼ���");
            return false;
        }
      
        if(!userinput.member_nm.value) {
            alert("����� �̸��� �Է��ϼ���");
            return false;
        }
        if(!member_birth.value)
        {
            alert("��������� �Է��Ͻÿ�");
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
       <font size="+1" ><b>ȸ������</b></font></td>
    </tr>
    <tr>
      <td width="250" ><b>���̵� �Է�</b></td>
      <td width="400" > </td>
    </tr> 

    <tr>
      <td width="250"> ����� ID</td>
      <td width="400">
        <input type="text" name="member_id" size="10" maxlength="12"> 
        &nbsp;&nbsp;<s:property value="resultClass.member_id" />
      </td>
    </tr>
    <tr>
      <td width="250"> ��й�ȣ</td>
      <td width="400" >
        <input type="password" name="member_pw" size="15" maxlength="12">
        &nbsp;&nbsp;<s:property value="resultClass.member_pw" />
      </td>
    <tr> 
      <td width="250">��й�ȣ Ȯ��</td>
      <td width="400">
        <input type="password" name="member_pwr" size="15" maxlength="12">
        &nbsp;&nbsp;<s:property value="resultClass.member_pwr" />
      </td>
    </tr>
    <tr>
      <td width="250" ><b>�������� �Է�</b></td>
      <td width="400" > </td>
    </tr> 
    <tr>
      <td width="250">����� �̸�</td>
      <td width="400">
        <input type="text" name="member_nm" size="15" maxlength="10">
        &nbsp;&nbsp;<s:property value="resultClass.member_nm" />
      </td>
    </tr>
     <tr>
      <td width="250"> ����� �������</td>
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
      <td width="250"> �̸��� ���ŵ���</td>
      <td width="400">
        <input type="checkbox" name="member_dmy" value="member_dmy">����
  		<input type="checkbox" name="member_dmn" value="member_dmn">�ź�<br>
      </td>
    </tr>
    <tr>
      <td width="250">�޴���ȭ ��ȣ</td>
      <td width="400">
        <input type="text" name="member_mobile" size="15" maxlength="10">
        &nbsp;&nbsp;<s:property value="resultClass.member_mobile" />
      </td>
    </tr>
    <tr>
<tr> 
       <td width="250">�����ȣ</td>
       <td> <input type="text" id="member_zipcode" name="member_zipcode" size="7">
               <input type="button" value="�����ȣã��" onClick="zipCheck()">
               &nbsp;&nbsp;<s:property value="resultClass.member_zipcode" /></td>
          </tr>
    <tr> 
       <td>�ּ�</td>
       <td><input type="text" id="member_adr1" name="member_adr1" size="70">
       &nbsp;&nbsp;<s:property value="resultClass.member_adr1" /></td>
    </tr>
    <tr> 
       <td>���ּ�</td>
       <td><input type="text" id="member_adr2" name="member_adr2" size="70">
       &nbsp;&nbsp;<s:property value="resultClass.member_adr2" /></td>
    </tr>
    <tr>
      <td colspan="2" align="center" >
          <input type="submit" name="confirm" value="���� �Ϸ�" >
          <input type="reset" name="reset" value="�ٽ� �Է�">
          <input type="button" value="���" onclick="javascript:location.href='main.action'">
      </td>
    </tr>
  </table>
</form>
</body>
</html>