package admin;

import java.io.IOException;
import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class AdminBookModifyAction extends ActionSupport{

	public static Reader reader;	//파일 스트림을 위한 reader.
	public static SqlMapClient sqlMapper;	//SqlMapClient API를 사용하기 위한 sqlMapper 객체.

	private AdminBookVO paramClass = new AdminBookVO();
	private AdminBookVO resultClass = new AdminBookVO();
	
	private int book_no;
	private String book_nm;
	private String book_writer;
	private String book_publisher;
	private String book_publish_dt;
	private String book_category;
	private String book_comment;
	private String book_contents;
	private int book_loannum;
	private String book_image_small;
	private String book_image;
	
	//페이징 액션	
	private int currentPage;	//현재 페이지
	
	public AdminBookModifyAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);	// sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
		reader.close();
	}
	

	public String execute() throws Exception {
		paramClass = new AdminBookVO();
		resultClass = new AdminBookVO();
		
		paramClass.setBook_no(getBook_no());
		paramClass.setBook_nm(getBook_nm());
		paramClass.setBook_writer(getBook_writer());
		paramClass.setBook_publisher(getBook_publisher());
		paramClass.setBook_publish_dt(getBook_publish_dt());
		paramClass.setBook_category(getBook_category());
		paramClass.setBook_comment(getBook_comment());
		paramClass.setBook_contents(getBook_contents());
		paramClass.setBook_loannum(getBook_loannum());
		paramClass.setBook_image(getBook_image());
		paramClass.setBook_image_small(getBook_image_small());
		
		sqlMapper.update("admin.updateBook", paramClass);
		
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


	public String getBook_nm() {
		return book_nm;
	}


	public String getBook_writer() {
		return book_writer;
	}


	public String getBook_publisher() {
		return book_publisher;
	}


	public String getBook_publish_dt() {
		return book_publish_dt;
	}


	public String getBook_category() {
		return book_category;
	}


	public String getBook_comment() {
		return book_comment;
	}


	public String getBook_contents() {
		return book_contents;
	}


	public int getBook_loannum() {
		return book_loannum;
	}


	public String getBook_image_small() {
		return book_image_small;
	}


	public String getBook_image() {
		return book_image;
	}


	public int getCurrentPage() {
		return currentPage;
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


	public void setBook_nm(String book_nm) {
		this.book_nm = book_nm;
	}


	public void setBook_writer(String book_writer) {
		this.book_writer = book_writer;
	}


	public void setBook_publisher(String book_publisher) {
		this.book_publisher = book_publisher;
	}


	public void setBook_publish_dt(String book_publish_dt) {
		this.book_publish_dt = book_publish_dt;
	}


	public void setBook_category(String book_category) {
		this.book_category = book_category;
	}


	public void setBook_comment(String book_comment) {
		this.book_comment = book_comment;
	}


	public void setBook_contents(String book_contents) {
		this.book_contents = book_contents;
	}


	public void setBook_loannum(int book_loannum) {
		this.book_loannum = book_loannum;
	}


	public void setBook_image_small(String book_image_small) {
		this.book_image_small = book_image_small;
	}


	public void setBook_image(String book_image) {
		this.book_image = book_image;
	}


	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
}
