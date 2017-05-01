<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>글작성</title>
</head>
<body>
   <table width="600" border="0" cellspacing="0" cellpadding="2">
      <tr>
      </tr>
   </table>


   <s:if test="resultClass == NULL">
      <form action="adminBookWriteAction.action" method="post"
         enctype="multipart/form-data">
   </s:if>

   <s:else>
      <form action="adminBookModifyAction.action" method="post"
         enctype="multipart/form-data">
         <s:hidden name="book_no" value="%{resultClass.book_no}" />
   </s:else>
   
      <table width="800" border="0" cellspacing="1" cellpadding="1">
         <tr>
            <td align="right" colspan="2"><font color="#FF0000">*</font>는
               필수 입력사항입니다.</td>
         </tr>


         <tr bgcolor="#777777">
            <td height="1" colspan="2"></td>
         </tr>

         <tr>
            <td width="100" bgcolor="#F4F4F4"><font color="#FF0000">*</font> 도서   제목</td>
            <td width="500" bgcolor="#FFFFFF">
            <s:textfield name="book_nm" id="book_nm" theme="simple" value="%{resultClass.book_nm}" cssStyle="width:370px" maxlength="30"/>
            <!-- <td width="500" bgcolor="#FFFFFF"><input type="text" name="book_nm" size="15" maxlength="10"/></td> -->
         </tr>

         <tr>
            <td bgcolor="#F4F4F4"><font color="#FF0000">*</font> 저자</td>
            <td width="500" bgcolor="#FFFFFF">
            <s:textfield name="book_writer"id="book_writer" theme="simple" value="%{resultClass.book_writer}" cssStyle="width:370px" maxlength="20"/>
<!--             <td bgcolor="#FFFFFF"><input type="text" name="book_writer" size="15" maxlength="10"/></td> -->
         </tr>
         <tr>
            <td bgcolor="#F4F4F4"><font color="#FF0000">*</font> 출판사</td>
            <td width="500" bgcolor="#FFFFFF">
            <s:textfield name="book_publisher" id="book_publisher" theme="simple" value="%{resultClass.book_publisher}" cssStyle="width:370px" maxlength="50"/>
          <!-- <td><input type="text" name="book_publisher" size="15" maxlength="10"/></td> -->
         </tr>

         <tr>
            <td bgcolor="#F4F4F4"><font color="#FF0000">*</font> 출판연도</td>
            <td width="500" bgcolor="#FFFFFF">
            <s:textfield name="book_publish_dt" theme="simple" value="%{resultClass.book_publish_dt}" cssStyle="width:370px" maxlength="15"/>
            <!-- <td bgcolor="#FFFFFF"><input type="text" name="book_publish_dt" size="15" maxlength="10"/></td> -->
         </tr>

         <tr>
            <td bgcolor="#F4F4F4"><font color="#FF0000"></font> 장르</td>
            <td width="500" bgcolor="#FFFFFF">
            <s:textfield name="book_category" theme="simple" value="%{resultClass.book_category}" cssStyle="width:370px" maxlength="20"/>
            <!-- <td bgcolor="#FFFFFF"><input type="text" name="book_image" size="15" maxlength="10"/></td> -->
         </tr>
         
         <tr>
            <td bgcolor="#F4F4F4"><font color="#FF0000"></font> 도서 소개</td>
            <td width="500" bgcolor="#FFFFFF">
            <s:textarea name="book_comment" theme="simple" value="%{resultClass.book_comment}" cssStyle="width:370px" cols="15" rows="10"/>
            <!-- <td bgcolor="#FFFFFF"><input type="text" name="book_image" size="15" maxlength="10"/></td> -->
         </tr>
         
         <tr>
            <td bgcolor="#F4F4F4"><font color="#FF0000"></font> 목차</td>
            <td width="500" bgcolor="#FFFFFF">
            <s:textarea name="book_contents" theme="simple" value="%{resultClass.book_contents}" cssStyle="width:370px" cols="15" rows="10"/>
            <!-- <td bgcolor="#FFFFFF"><input type="text" name="book_image" size="15" maxlength="10"/></td> -->
         </tr>
                  
         <tr>
            <td bgcolor="#F4F4F4"><font color="#FF0000">*</font> 도서 이미지</td>
            <td width="500" bgcolor="#FFFFFF">
            <s:file name="book_image" theme="simple" value="%{resultClass.book_image}" cssStyle="width:370px" label="File"/>
            <!-- <td bgcolor="#FFFFFF"><input type="text" name="book_image" size="15" maxlength="10"/></td> -->
         </tr>
      
         <tr>
         <td align="right" colspan="2"><input name="submit"
               type="submit" value="작성완료" class="inputb"/></td>
         </tr>
      </table>
   </form>

</body>
</html>