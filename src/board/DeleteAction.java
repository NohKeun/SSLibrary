package board;

import java.io.Reader;
import java.io.IOException;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteAction extends ActionSupport{

	public static Reader reader;	//파일 스트림을 위한 reader.
	public static SqlMapClient sqlMapper;	//SqlMapClient API를 사용하기 위한 sqlMapper 객체.

	private BoardVO paramClass; //파라미터를 저장할 객체
	private BoardVO resultClass; //쿼리 결과 값을 저장할 객체
	
	//페이징 액션	
	private int currentPage;
	
	private int article_no;			//글번호
	
	public DeleteAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);	// sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
		reader.close();
	}
	
	public String execute() throws Exception {
		paramClass = new BoardVO();
		resultClass = new BoardVO();
		
		resultClass = (BoardVO) sqlMapper.queryForObject("board.selectOne", getArticle_no());

		paramClass.setArticle_no(getArticle_no());
		
		sqlMapper.delete("board.deleteBoard",paramClass);
		
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
	
}
