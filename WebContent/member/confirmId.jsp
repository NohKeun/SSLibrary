<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>���̵� �ߺ� Ȯ��</title>
<script language="javascript">
<<<<<<< HEAD
function windowclose(){
   opener.document.joinForm.member_id.value="${member_id}";
   window.close();
}
</script>
</head>
<body>

	<<<<<<< HEAD
	<!-- ���̵� ������ ��� -->
	<s:if test="chkId==1">
		<form name="idChkForm"">
			<table align="center" width="265" border="0" cellspacing="0"
				cellpadding="0">
				<tr height="25">
					<td bgcolor="red" align="left" colspan="1" width="10"></td>
					<td align="left" colspan="3"><font color="red"><strong>&nbsp;&nbsp;���̵�

								�ߺ�</strong></font></td>
				</tr>
			</table>
			<br>
			<table align="center" width="265" border="0" cellspacing="0"
				cellpadding="0">
				<tr bgcolor="red">
					<td height="1"></td>
				</tr>
				<tr height="10">
					<td></td>
				</tr>
				<tr>
					<td><font color="red">[ ${member_id } ]�� �̹� �������
							���̵��Դϴ�. �ٸ� ���� �� ������ �ּ���</font></td>
				</tr>
				<tr height="10">
					<td></td>
				</tr>
				<tr bgcolor="red">
					<td height="1"></td>
				</tr>
			</table>
			<br> <br>
			<table align="center" width="265" border="0" cellspacing="0"
				cellpadding="0">
				<tr height="25">
					<td bgcolor="1E90FF" align="left" colspan="1" width="10"></td>
					<td align="left" colspan="3"><font color="black"><strong>&nbsp;&nbsp;ID
								�ߺ� Ȯ ��</strong></font></td>
				</tr>
			</table>
			<br>
			<table align="center" width="265" border="0" cellspacing="0"
				cellpadding="0">
				<tr bgcolor="1E90FF">
					<td height="1"></td>
				</tr>
				<tr height="10">
					<td></td>
				</tr>
				<tr align="center">
					<td><input type=text maxlength=20 id="member_id"
						name="member_id" /> <input type=submit value="�ߺ� Ȯ��" class="topb" />
					</td>
				<tr>
				<tr height="10">
					<td></td>
				</tr>
				<tr bgcolor="1E90FF">
					<td height="1"></td>
				</tr>
				<tr height="20">
					<td></td>
				</tr>
				<tr>
					<td align="center"><input type="button" class="login1"
						value="�ݱ�" onclick="javascript:window.close();" /></td>
				</tr>
			</table>
		</form>
	</s:if>

	<!-- ���̵� �������� ���� ��� -->
	<s:else>
		<table align="center" width="265" border="0" cellspacing="0"
			cellpadding="0">
			<tr height="25">
				<td bgcolor="1E90FF" align="left" colspan="1" width="10"></td>
				<td align="left" colspan="3"><font color="black"><strong>&nbsp;&nbsp;���

							����</strong></font></td>
			</tr>
		</table>
		<br>
		<table align="center" width="265" border="0" cellspacing="0"
			cellpadding="0">
			<tr bgcolor="1E90FF">
				<td height="1"></td>
			</tr>
			<tr height="10">
				<td></td>
			</tr>
			<tr>
				<td>�Է��Ͻ� [ ${member_id } ]�� ����� �� �ִ� ���̵��Դϴ�.</td>
			</tr>
			<tr height="10">
				<td></td>
			</tr>
			<tr bgcolor="1E90FF">
				<td height="1"></td>
			</tr>
			<tr height="20">
				<td></td>
			</tr>
			<tr>
				<td align="center"><input type="button" class="login1"
					value="�ݱ�" onclick="windowclose();" /></td>
			</tr>
		</table>
	</s:else>
	<s:if test="chkId==1">
		<form name="idChkForm">
			<table align="center" width="265" border="0" cellspacing="0"
				cellpadding="0">
				<tr height="25">
					<td bgcolor="red" align="left" colspan="1" width="10"></td>
					<td align="left" colspan="3"><font color="red"><strong>&nbsp;&nbsp;���̵�
								�ߺ�</strong></font></td>
				</tr>
			</table>
			<br>
			<table align="center" width="265" border="0" cellspacing="0"
				cellpadding="0">
				<tr bgcolor="red">
					<td height="1"></td>
				</tr>
				<tr height="10">
					<td></td>
				</tr>
				<tr>
					<td><font color="red">[ ${member_id } ]�� �̹� �������
							���̵��Դϴ�. �ٸ� ���̵� ������ �ּ���</font></td>
				</tr>
				<tr height="10">
					<td></td>
				</tr>
				<tr bgcolor="red">
					<td height="1"></td>
				</tr>
			</table>
			<br> <br>
			<table align="center" width="265" border="0" cellspacing="0"
				cellpadding="0">
				<tr height="25">
					<td bgcolor="1E90FF" align="left" colspan="1" width="10"></td>
					<td align="left" colspan="3"><font color="black"><strong>&nbsp;&nbsp;ID
								�ߺ� Ȯ��</strong></font></td>
				</tr>
			</table>
			<br>
			<table align="center" width="265" border="0" cellspacing="0"
				cellpadding="0">
				<tr bgcolor="1E90FF">
					<td height="1"></td>
				</tr>
				<tr height="10">
					<td></td>
				</tr>
				<tr align="center">
					<td><input type=text maxlength=20 name="member_id" /> <input
						type=submit value="�ߺ� Ȯ��" onclick="inputIdchk()" class="topb" />
					</td>
				<tr>
				<tr height="10">
					<td></td>
				</tr>
				<tr bgcolor="1E90FF">
					<td height="1"></td>
				</tr>
				<tr height="20">
					<td></td>
				</tr>
				<tr>
					<td align="center"><input type="button" class="login1"
						value="�ݱ�" onclick="parent.close()" /></td>
				</tr>
			</table>
		</form>
	</s:if>

	<!-- ���̵� �������� ���� ��� -->
	<s:else>
		<table align="center" width="265" border="0" cellspacing="0"
			cellpadding="0">
			<tr height="25">
				<td bgcolor="1E90FF" align="left" colspan="1" width="10"></td>
				<td align="left" colspan="3"><font color="black"><strong>&nbsp;&nbsp;���
							����</strong></font></td>
			</tr>
		</table>
		<br>
		<table align="center" width="265" border="0" cellspacing="0"
			cellpadding="0">
			<tr bgcolor="1E90FF">
				<td height="1"></td>
			</tr>
			<tr height="10">
				<td></td>
			</tr>
			<tr>
				<td>�Է��Ͻ� [ ${member_id } ]�� ����� �� �ִ� ���̵��Դϴ�.</td>
			</tr>
			<tr height="10">
				<td></td>
			</tr>
			<tr bgcolor="1E90FF">
				<td height="1"></td>
			</tr>
			<tr height="20">
				<td></td>
			</tr>
			<tr>
				<td align="center"><input type="button" class="login1"
					value="�ݱ�" onclick="parent.close()" /></td>
			</tr>
		</table>
</s:else>
</body>
</html>