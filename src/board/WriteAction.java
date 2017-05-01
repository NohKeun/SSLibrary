package board;

import java.io.IOException;
import java.io.Reader;
import java.util.Date;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class WriteAction extends ActionSupport{

	public static Reader reader;	//파일 스트림을 위한 reader.
	public static SqlMapClient sqlMapper;	//SqlMapClient API를 사용하기 위한 sqlMapper 객체.

	private BoardVO paramClass = new BoardVO(); //파라미터를 저장할 객체
	
	private int article_no;			//글번호
	private String member_id;		//작성자
	private String title;			//글제목
	private int readcount;			//조회수
	private String content;			//글내용
	private Date create_dt;			//작성일
	private int board_type;			//게시글타입(0-자유,1-Q&A,2-도서신청,3-공지사항(관리자)
	
	//페이징 액션	
	private int currentPage;	//현재 페이지
	
	public WriteAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);	// sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
		reader.close();
	}
	
	public String form() throws Exception{
		return SUCCESS;
	}
	
	public String execute() throws Exception{
		paramClass = new BoardVO();
		
		paramClass.setTitle(getTitle());
		paramClass.setMember_id(getMember_id());
		paramClass.setContent(getContent());
		paramClass.setBoard_type(getBoard_type());
		
		sqlMapper.insert("board.insertBoard", paramClass);
		
		return SUCCESS;
	}

	public BoardVO getParamClass() {
		return paramClass;
	}

	public int getArticle_no() {
		return article_no;
	}

	public String getMember_id() {
		return member_id;
	}

	public String getTitle() {
		return title;
	}

	public int getReadcount() {
		return readcount;
	}

	public String getContent() {
		return content;
	}

	public Date getCreate_dt() {
		return create_dt;
	}

	public int getBoard_type() {
		return board_type;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setParamClass(BoardVO paramClass) {
		this.paramClass = paramClass;
	}

	public void setArticle_no(int article_no) {
		this.article_no = article_no;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public void setCreate_dt(Date create_dt) {
		this.create_dt = create_dt;
	}

	public void setBoard_type(int board_type) {
		this.board_type = board_type;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

}
