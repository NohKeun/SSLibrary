package board;

import java.io.IOException;
import java.io.Reader;
import java.util.Date;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class WriteAction extends ActionSupport{

	public static Reader reader;	//���� ��Ʈ���� ���� reader.
	public static SqlMapClient sqlMapper;	//SqlMapClient API�� ����ϱ� ���� sqlMapper ��ü.

	private BoardVO paramClass = new BoardVO(); //�Ķ���͸� ������ ��ü
	
	private int article_no;			//�۹�ȣ
	private String member_id;		//�ۼ���
	private String title;			//������
	private int readcount;			//��ȸ��
	private String content;			//�۳���
	private Date create_dt;			//�ۼ���
	private int board_type;			//�Խñ�Ÿ��(0-����,1-Q&A,2-������û,3-��������(������)
	
	//����¡ �׼�	
	private int currentPage;	//���� ������
	
	public WriteAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml ������ ���������� �����´�.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);	// sqlMapConfig.xml�� ������ ������ sqlMapper ��ü ����.
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
