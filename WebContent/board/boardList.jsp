<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>게시판</title>
</head>

<body>
	<table width="600" border="0" cellspacing="0" cellpadding="2">
		<tr>
			<td align="center"><h2></h2></td>
		</tr>
		<tr>
			<td height="20"></td>
		</tr>
	</table>


	<table width="650" border="0" cellspacing="0" cellpadding="2">
		<tr align="center" bgcolor="#F3F3F3">
			<td width="70"><strong>글번호</strong></td>
			<td width="350"><strong>제목</strong></td>
			<td width="70"><strong>작성자</strong></td>
			<td width="80"><strong>작성일</strong></td>
			<td width="80"><strong>조회수</strong></td>
		</tr>
		<tr bgcolor="#777777">
			<td height="1" colspan="5"></td>
		</tr>

		<s:iterator value="list" status="stat">
			<s:url id="viewURL" action="boardView">
				<s:param name="article_no">
					<s:property value="article_no" />
				</s:param>
			<s:param name="currentPage">
					<s:property value="currentPage" />
				</s:param>
			</s:url>

		<tr bgcolor="white" align="center">
			<td><s:property value="article_no" /></td>
			<td align="left">&nbsp;<s:a href="%{viewURL}">
					<s:property value="title" /></s:a></td>
			<td align="center"><s:property value="member_id" /></td>
			<td align="center"><s:property value="create_dt" /></td>
			<td><s:property value="readcount" /></td>
		</tr>
		<tr bgcolor="black">
			<td height="0" colspan="5"></td>
		</tr>

		</s:iterator>

		<s:if test="list.size() <= 0">

			<tr bgcolor="#FFFFFF" align="center">
				<td colspan="5">등록된 게시물이 없습니다.</td>
			</tr>
			<tr bgcolor="#777777">
				<td height="1" colspan="5"></td>
			</tr>

		</s:if>

		<tr align="right">
			<td colspan="5"><input type="button" value="글쓰기" sclass="inputb"
				onClick="javascript:location.href='boardWriteForm.action?currentPage=<s:property value="currentPage" />';">
			</td>
		</tr>
		
		<tr align="center">
		<td colspan="5"><s:property value="pagingHtml"  escape="false"></s:property></td></tr>
		<tr>
		<td colspan="5">	
			<form>
				<select name="searchNum" >
					<option value="0">작성자</option>
					<option value="1">제목</option>
					<option value="2">내용</option>
				</select>
				<s:textfield name="searchKeyword" theme="simple" value="" cssStyle="width:120px" maxlength="20" />
				<input name="submit" type="submit" value="검색" class="inputb">
			</form>
		</td>
		</tr>
	</table>
</body>
</html>