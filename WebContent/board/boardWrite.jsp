<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>글작성</title>
	<SCRIPT type="text/javascript">
		function validation() {
		
			var frm = document.forms(0);
			
			if(frm.title.value == "") {
				alert("제목을 입력해주세요.");
				return false;
			} 
			
			else if(frm.member_id.value == "") {
				alert("이름을 입력해주세요.");
				return false;
			}
			
			else if(frm.board_type.value == "5") {
				alert("게시판 타입을 지정하세요.");
				return false;			
			} 
			
			else if(frm.content.value == "") {
				alert("내용을 입력해주세요.");
				return false;			
			} 
			

			return true;
		}
	</SCRIPT>
</head>
<body>
<table width="600" border="0" cellspacing="0" cellpadding="2">
  		<tr>
  		</tr>
  	</table>
  
		<form action="boardWriteAction.action" method="post" enctype="multipart/form-data" onsubmit="return validation();">

       <table width="600" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td align="right" colspan="2"><font color="#FF0000">*</font>는 필수 입력사항입니다.</td>
        </tr>
        
        <tr bgcolor="#777777">
          <td height="1" colspan="2"></td>
        </tr>
				
        <tr>
          <td width="100" bgcolor="#F4F4F4"><font color="#FF0000">*</font>제목</td>
          <td width="500" bgcolor="#FFFFFF">
            <s:textfield name="title" theme="simple" value="%{resultClass.title}" cssStyle="width:370px" maxlength="50"/>
          </td>
        </tr>
        
        <tr>
          <td bgcolor="#F4F4F4"><font color="#FF0000">*</font>작성자</td>
          <td bgcolor="#FFFFFF">
            <s:textfield name="member_id" theme="simple" value="%{resultClass.member_id}" cssStyle="width:100px" maxlength="20"/>
          </td>
        </tr>
        <tr bgcolor="#777777">
          <td height="1" colspan="2"></td>	
        </tr>
      
        							
        <tr bgcolor="#777777">
          <td height="1" colspan="2"></td>
        </tr>
        
        <tr bgcolor="#777777">
          <td height="1" colspan="2"></td>	
        </tr>
 
		<tr>
          <td bgcolor="#F4F4F4"><font color="#FF0000">*</font>  내용 </td>
          <td bgcolor="#FFFFFF">
            <s:textarea name="content" theme="simple" value="%{resultClass.content}" cols="50" rows="10" />
          </td>
        </tr>
        <tr>
          <td bgcolor="#F4F4F4"><font color="#FF0000">*</font> 카테고리 </td>
          <td bgcolor="#FFFFFF">
			<form>
				<select name="board_type" value="%{resultClass.board_type}">
					<option value="5"></option>
					<option value="0">자유게시판</option>
					<option value="1">Q&A</option>
					<option value="2">도서신청</option>
				</select>
			</form>
          </td>
        </tr>
        <tr bgcolor="#777777">
          <td height="1" colspan="2"></td>
        </tr>
        
        <tr bgcolor="#777777">
          <td height="1" colspan="2"></td>	
        </tr>
        
        <tr>
          <td height="10" colspan="2"></td>
        </tr>
        
        
        <tr>
          <td align="right" colspan="2">
          	<input name="submit" type="submit" value="작성완료" class="inputb">
            <input name="list" type="button" value="목록" class="inputb" onClick="javascript:location.href='boardList.action?currentPage=<s:property value="currentPage" />'">
          </td>
        </tr>


    </table>
    </form>

</body>
</html>