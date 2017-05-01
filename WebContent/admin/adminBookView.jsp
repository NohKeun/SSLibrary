<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
</head>

<body>

   <table width="800" border="0" cellspacing="0" cellpadding="2">
      <tr>
         <td align="left"><h2>도서 상세보기</h2></td>
         <td align="right"><h3>
         <td align="right" colspan="2">
         
         <input name="list" type="button" value="수정" class="inputb"
         onClick="javascript:location.href='adminBookModifyForm.action?book_no='+
         '<s:property value="resultClass.book_no" />'">
         
         <input name="list" type="button" value="삭제" class="inputb"
         onClick="javascript:location.href='adminBookDelete.action?book_no='+
         '<s:property value="resultClass.book_no" />'">
         
         <input name="list" type="button" value="목록" class="inputb"
         onClick="javascript:location.href='adminBookList.action?currentPage='+
         '<s:property value="currentPage" />'">
      </tr>
   </table>

   <table width="800" bgcolor="#000000" border="0" cellspacing="1">
      <tr bgcolor="#ffffff">
         <td rowspan="4" width="160" align="center"><img src=""
            width="160" height="120" alt="이미지가 없습니다" /> <s:property
               value="book_image" /></td>
         <td>▶ 도서제목 : <s:property value="resultClass.book_nm" /></td>
      </tr>
      <tr bgcolor="#ffffff">
         <td>▶ 저자 : <s:property value="resultClass.book_writer" /></td>
      </tr>
      <tr bgcolor="#ffffff">
         <td>▶ 출판사 : <s:property value="resultClass.book_publisher" /></td>
      </tr>
      <tr bgcolor="#ffffff">
         <td>▶ 발행년 : <s:property value="resultClass.book_publish_dt" /></td>
      </tr>
   </table>

   <table width="800" border="0" cellspacing="0" cellpadding="2">
      <tr>
         <td align="left"><h3>대출/예약정보</h3></td>
      </tr>
   </table>

   <table width="800" bgcolor="#000000" border="0" cellspacing="1">
      <tr bgcolor="#ffffff">
         <td align="center">자료상태</td>
         <td align="center">반납예정일</td>
         <td align="center">예약</td>
         <tr bgcolor="#ffffff">
            <td align="center"> <input name="list" type="button" value="수정" class="inputb"
         onClick="javascript:location.href='adminBookModifyForm.action?book_no='+
         '<s:property value="resultClass.book_no" />'"></td>
            
            <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;년&nbsp;&nbsp;월&nbsp;&nbsp;일</td>
            <td align="center"><input type="button" value="예약 불가" disabled></input></td>
         </tr>
   </table>

<pre>
대출 기간은 대출시작일 기준 14일 입니다. 예약 신청은 대출자가 없을시에만 가능하며 
예약자가 없을시 1주 단위로 대출기간 연장 가능합니다.
</pre>

   <table width="800" bgcolor="#000000" border="0" cellspacing="0">
      <tr bgcolor="#ffffff">
         <td align="center"><input type="button" value="내서재 담기"></input></td>
         <td align="center"><input type="button" value="내서재 목록"></input></td>
      </tr>
   </table>

   <table width="800" border="0" cellspacing="0" cellpadding="2">
      <tr>
         <td align="left"><h3>도서정보</h3></td>
      </tr>
   </table>

   <table width="800" bgcolor="#000000" border="0" cellspacing="1">
      <tr bgcolor="#ffffff">
         <td width="100" height="50">▶ 도서 소개 : </td>
         <td height="50"><s:property value="resultClass.book_comment" /></td>
      </tr>
      <tr bgcolor="#ffffff">
         <td width="100" height="150">▶ 도서 목차 : </td>
         <td height="150"><s:property value="resultClass.book_contents" /></td>
      </tr>
   </table>
</body>
</html>