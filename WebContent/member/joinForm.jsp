<%@ page contentType="text/html; charset=euc-kr"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<title>ȸ������</title>
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
    // ���̵� �ߺ� ���θ� �Ǵ�
    function openConfirmid(userinput) {
        // ���̵� �Է��ߴ��� �˻�
        if (userinput.member_id.value == "") {
            alert("���̵� �Է��ϼ���");
            return;
        }
        // url�� ����� �Է� id�� �����մϴ�.
        url = "member/confirmId.jsp?member_id=" + userinput.member_id.value ;
       
        // ���ο� �����츦 ���ϴ�.
        open(url, "confirm",
        "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300, height=200");
    }
</script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.

                // �� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
                // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
                var fullAddr = ''; // ���� �ּ� ����
                var extraAddr = ''; // ������ �ּ� ����

                // ����ڰ� ������ �ּ� Ÿ�Կ� ���� �ش� �ּ� ���� �����´�.
                if (data.userSelectedType === 'R') { // ����ڰ� ���θ� �ּҸ� �������� ���
                    fullAddr = data.roadAddress;

                } else { // ����ڰ� ���� �ּҸ� �������� ���(J)
                    fullAddr = data.jibunAddress;
                }

                // ����ڰ� ������ �ּҰ� ���θ� Ÿ���϶� �����Ѵ�.
                if(data.userSelectedType === 'R'){
                    //���������� ���� ��� �߰��Ѵ�.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // �ǹ����� ���� ��� �߰��Ѵ�.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // �������ּ��� ������ ���� ���ʿ� ��ȣ�� �߰��Ͽ� ���� �ּҸ� �����.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
                document.getElementById('member_zipcode').value = data.zonecode; //5�ڸ� �������ȣ ���
                document.getElementById('member_adr1').value = fullAddr;

                // Ŀ���� ���ּ� �ʵ�� �̵��Ѵ�.
                document.getElementById('member_adr2').focus();
            }
        }).open();
    }
</script>

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

    // ���̵� �ߺ� ���θ� �Ǵ�
     function openConfirmid(userinput) {
        // ���̵� �Է��ߴ��� �˻�
        if (userinput.member_id.value == "") {
            alert("���̵� �Է��ϼ���");
            return false;
        }
        // url�� ����� �Է� id�� �����մϴ�.
        url = "confirmId.action?member_id=" + userinput.member_id.value ;
       
        // ���ο� �����츦 ���ϴ�.
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
       <font size="+1" ><b>ȸ������</b></font></td>
    </tr>
    <tr>
      <td width="250" ><b>���̵� �Է�</b></td>
      <td width="400" > </td>
    </tr> 

    <tr>
      <td width="250"> ����� ID</td>
      <td width="400">
        <input type="text" onkeydown="inputIdchk()" id="member_id" name="member_id" size="10" maxlength="12">
        <input type="button" name="confirm_id" value="�ߺ�Ȯ��" OnClick="openConfirmid(this.form)">
      </td>
    </tr>
    <tr>
      <td width="250"> ��й�ȣ</td>
      <td width="400" >
        <input type="password" name="member_pw" size="15" maxlength="12">
      </td>
    <tr> 
      <td width="250">��й�ȣ Ȯ��</td>
      <td width="400">
        <input type="password" name="member_pwr" size="15" maxlength="12">
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
      </td>
    </tr>
     <tr>
      <td width="250"> ����� �������</td>
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
      </td>
    </tr>
  
<tr> 
       <td width="250">�����ȣ</td>
       <td>
       <input type="text" id="member_zipcode" name="member_zipcode" placeholder="�����ȣ">
		<input type="button" onclick="sample6_execDaumPostcode()" value="�����ȣ ã��">  
       </td>
</tr>
         
    <tr> 
       <td>�ּ�</td>
       <td><input type="text" id="member_adr1" name="member_adr1" placeholder="�ּ�" size="70"></td>
    </tr>
    <tr> 
       <td>���ּ�</td>
       <td><input type="text" id="member_adr2" name="member_adr2" placeholder="���ּ�" size="70"></td>
    </tr>
    <tr>
      <td colspan="2" align="center" >
          <input type="submit" name="confirm" value="��   ��">
          <input type="reset" name="reset" value="�ٽ��Է�">
          <input type="button" value="���Ծ���" onclick="javascript:location.href='main.action'">
      </td>
    </tr>
  </table>
</form>
</body>
</html>