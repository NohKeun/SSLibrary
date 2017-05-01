<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>아이디 중복 확인</title>
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
	<!-- 아이디가 존재할 경우 -->
	<s:if test="chkId==1">
		<form name="idChkForm"">
			<table align="center" width="265" border="0" cellspacing="0"
				cellpadding="0">
				<tr height="25">
					<td bgcolor="red" align="left" colspan="1" width="10"></td>
					<td align="left" colspan="3"><font color="red"><strong>&nbsp;&nbsp;아이디

								중복</strong></font></td>
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
					<td><font color="red">[ ${member_id } ]는 이미 사용중인
							아이디입니다. 다른 아이 디를 선택해 주세요</font></td>
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
								중복 확 인</strong></font></td>
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
						name="member_id" /> <input type=submit value="중복 확인" class="topb" />
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
						value="닫기" onclick="javascript:window.close();" /></td>
				</tr>
			</table>
		</form>
	</s:if>

	<!-- 아이디가 존재하지 않을 경우 -->
	<s:else>
		<table align="center" width="265" border="0" cellspacing="0"
			cellpadding="0">
			<tr height="25">
				<td bgcolor="1E90FF" align="left" colspan="1" width="10"></td>
				<td align="left" colspan="3"><font color="black"><strong>&nbsp;&nbsp;사용

							가능</strong></font></td>
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
				<td>입력하신 [ ${member_id } ]는 사용할 수 있는 아이디입니다.</td>
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
					value="닫기" onclick="windowclose();" /></td>
			</tr>
		</table>
	</s:else>
	<s:if test="chkId==1">
		<form name="idChkForm">
			<table align="center" width="265" border="0" cellspacing="0"
				cellpadding="0">
				<tr height="25">
					<td bgcolor="red" align="left" colspan="1" width="10"></td>
					<td align="left" colspan="3"><font color="red"><strong>&nbsp;&nbsp;아이디
								중복</strong></font></td>
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
					<td><font color="red">[ ${member_id } ]는 이미 사용중인
							아이디입니다. 다른 아이디를 선택해 주세요</font></td>
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
								중복 확인</strong></font></td>
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
						type=submit value="중복 확인" onclick="inputIdchk()" class="topb" />
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
						value="닫기" onclick="parent.close()" /></td>
				</tr>
			</table>
		</form>
	</s:if>

	<!-- 아이디가 존재하지 않을 경우 -->
	<s:else>
		<table align="center" width="265" border="0" cellspacing="0"
			cellpadding="0">
			<tr height="25">
				<td bgcolor="1E90FF" align="left" colspan="1" width="10"></td>
				<td align="left" colspan="3"><font color="black"><strong>&nbsp;&nbsp;사용
							가능</strong></font></td>
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
				<td>입력하신 [ ${member_id } ]는 사용할 수 있는 아이디입니다.</td>
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
					value="닫기" onclick="parent.close()" /></td>
			</tr>
		</table>
</s:else>
</body>
</html>