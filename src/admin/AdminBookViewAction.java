package admin;

import java.io.IOException;
import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class AdminBookViewAction extends ActionSupport{

	public static Reader reader;	//파일 스트림을 위한 reader.
	public static SqlMapClient sqlMapper;	//SqlMapClient API를 사용하기 위한 sqlMapper 객체.

	private AdminBookVO paramClass = new AdminBookVO(); //파라미터를 저장할 객체
	private AdminBookVO resultClass = new AdminBookVO(); //쿼리 결과 값을 저장할 객체
	
/*	private int currentPage;	//현재 페이지
*/	
	
	private int book_no;			//도서번호
	
	public AdminBookViewAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);	// sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
		reader.close();
	}
	
	public String execute() throws Exception {
	
	paramClass = new AdminBookVO();
	resultClass = new AdminBookVO();
	
	paramClass.setBook_no(getBook_no());
	
	resultClass = (AdminBookVO) sqlMapper.queryForObject("admin.selectOne", getBook_no());
	
	return SUCCESS;
	}

	public AdminBookVO getParamClass() {
		return paramClass;
	}

	public AdminBookVO getResultClass() {
		return resultClass;
	}

	public int getBook_no() {
		return book_no;
	}

	public void setParamClass(AdminBookVO paramClass) {
		this.paramClass = paramClass;
	}

	public void setResultClass(AdminBookVO resultClass) {
		this.resultClass = resultClass;
	}

	public void setBook_no(int book_no) {
		this.book_no = book_no;
	}
}