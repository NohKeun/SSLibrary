package admin;

import java.io.IOException;
import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class AdminBookViewAction extends ActionSupport{

	public static Reader reader;	//���� ��Ʈ���� ���� reader.
	public static SqlMapClient sqlMapper;	//SqlMapClient API�� ����ϱ� ���� sqlMapper ��ü.

	private AdminBookVO paramClass = new AdminBookVO(); //�Ķ���͸� ������ ��ü
	private AdminBookVO resultClass = new AdminBookVO(); //���� ��� ���� ������ ��ü
	
/*	private int currentPage;	//���� ������
*/	
	
	private int book_no;			//������ȣ
	
	public AdminBookViewAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml ������ ���������� �����´�.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);	// sqlMapConfig.xml�� ������ ������ sqlMapper ��ü ����.
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