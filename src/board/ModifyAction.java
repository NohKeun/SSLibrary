package board;

import java.io.IOException;
import java.io.Reader;
import java.util.Date;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class ModifyAction extends ActionSupport{

	public static Reader reader;	//���� ��Ʈ���� ���� reader.
	public static SqlMapClient sqlMapper;	//SqlMapClient API�� ����ϱ� ���� sqlMapper ��ü.

	private BoardVO paramClass = new BoardVO(); //�Ķ���͸� ������ ��ü
	private BoardVO resultClass = new BoardVO(); //���� ��� ���� ������ ��ü
	
	private int currentPage;	//���� ������
	
	private int article_no;			//�۹�ȣ
	private String title;			//������
	private String content;			//�۳���
	private Date create_dt;			//�ۼ���
	
	
	public ModifyAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml ������ ���������� �����´�.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);	// sqlMapConfig.xml�� ������ ������ sqlMapper ��ü ����.
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
		
		
		// ������ ������ view �������� �̵�.
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
