package board;

import java.io.IOException;
import java.io.Reader;
import java.util.Date;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class ModifyAction extends ActionSupport{

	public static Reader reader;	//파일 스트림을 위한 reader.
	public static SqlMapClient sqlMapper;	//SqlMapClient API를 사용하기 위한 sqlMapper 객체.

	private BoardVO paramClass = new BoardVO(); //파라미터를 저장할 객체
	private BoardVO resultClass = new BoardVO(); //쿼리 결과 값을 저장할 객체
	
	private int currentPage;	//현재 페이지
	
	private int article_no;			//글번호
	private String title;			//글제목
	private String content;			//글내용
	private Date create_dt;			//작성일
	
	
	public ModifyAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);	// sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
		reader.close();
	}
	
	public String form() throws Exception {
		return SUCCESS;
	}
	
	public String execute() throws Exception {
		paramClass = new BoardVO();
		resultClass = new BoardVO();
		
		paramClass.setArticle_no(getArticle_no());
		paramClass.setTitle(getTitle());
		paramClass.setContent(getContent());
		
		sqlMapper.update("board.updateBoard", paramClass);
		
		
		// 수정이 끝나면 view 페이지로 이동.
		resultClass = (BoardVO) sqlMapper.queryForObject("board.selectOne", getArticle_no());
		
		return SUCCESS;
	}

	public BoardVO getParamClass() {
		return paramClass;
	}

	public BoardVO getResultClass() {
		return resultClass;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public int getArticle_no() {
		return article_no;
	}

	public String getTitle() {
		return title;
	}

	public String getContent() {
		return content;
	}

	public Date getCreate_dt() {
		return create_dt;
	}

	public void setParamClass(BoardVO paramClass) {
		this.paramClass = paramClass;
	}

	public void setResultClass(BoardVO resultClass) {
		this.resultClass = resultClass;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public void setArticle_no(int article_no) {
		this.article_no = article_no;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public void setCreate_dt(Date create_dt) {
		this.create_dt = create_dt;
	}
}
