package board;

import java.io.Reader;
import java.io.IOException;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteAction extends ActionSupport{

	public static Reader reader;	//���� ��Ʈ���� ���� reader.
	public static SqlMapClient sqlMapper;	//SqlMapClient API�� ����ϱ� ���� sqlMapper ��ü.

	private BoardVO paramClass; //�Ķ���͸� ������ ��ü
	private BoardVO resultClass; //���� ��� ���� ������ ��ü
	
	//����¡ �׼�	
	private int currentPage;
	
	private int article_no;			//�۹�ȣ
	
	public DeleteAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml ������ ���������� �����´�.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);	// sqlMapConfig.xml�� ������ ������ sqlMapper ��ü ����.
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
