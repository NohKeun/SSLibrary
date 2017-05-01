<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>도서목록</title>
</head>
<body>

<form name="input" method="post" action="mylibadd.action">
	
	<table width="800" border="0" cellspacing="0" cellpadding="2">
		<tr>
			<td align="left"><input name="submit"
			type="submit" value="장바구니담기" class="inputb"/></td>
			<td align="right">
			<input name="list" type="button" value="삭제" class="inputb"
			onClick="javascript:location.href='adminBookDelete.action?book_no='+
			'<s:property value="resultClass.book_no" />'">
			</td>
		</tr>
	</table>

   <table width="800" border="0" bgcolor="FFFFFF" cellspacing="0" cellpadding="2">
      <tr>
         <td align="center"><h2></h2></td>
      </tr>
      <tr>
         <td height="10"></td>
      </tr>
   </table>
   <s:iterator value="list" status="stat">
         <s:url id="viewURL" action="adminBookView">
            <s:param name="book_no">
               <s:property value="book_no" />
            </s:param>
         <s:param name="currentPage">
               <s:property value="currentPage" />
            </s:param>
         </s:url>

   <table width="800" bgcolor="#000000" border="0" cellspacing="0">
      <tr bgcolor="#ffffff">
      	<td rowspan="5" align="left" valign="top"><s:property value="book_no" />
		<br><input type="checkbox" name="book_no" value="book_no"></br>      	
      	</td>
      </tr>
      <tr bgcolor="#ffffff">
         <td rowspan="5" width="160" align="center"><img src="/SSLibrary/style/image/bookImages/testImage2.jpg" alt="이미지가 없습니다" width="160" height="120" /> <s:property value="book_image_small" /></td>
         <td colspan="3" width="640">카테고리 <b><s:a href="%{viewURL}">s<s:property value="book_nm" /></s:a></b></td>
      </tr>
      <tr bgcolor="#ffffff">
         <td colspan="3">▶ 저자 : <s:property value="book_writer" /></td>
      </tr>
      <tr bgcolor="#ffffff">
         <td width="400">▶ 출판사 : <s:property value="book_publisher" /></td>
         <td colspan="2" width="350">발행년 : <s:property value="book_publish_dt" /></td>
      </tr>
	  <tr bgcolor="#ffffff">
         <td width="500">자료상태 : <input type="button" value="예약 불가"></input></td>
         <td colspan="2" width="300">반납예정일 : </td>
      </tr>
   </table>
<table>
      <tr>
         <td height="10" colspan="6"></td>
      </tr>
</table>
      </s:iterator>

      <s:if test="list.size() <= 0">

         <tr bgcolor="#FFFFFF" align="center">
            <td colspan="5">등록된 게시물이 없습니다.</td>
         </tr>
         <tr bgcolor="#777777">
            <td height="1" colspan="5"></td>
         </tr>

      </s:if>

</form>
</body>
</html>