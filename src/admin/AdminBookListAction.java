package admin;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class AdminBookListAction extends ActionSupport {
	
	public static Reader reader;	//���� ��Ʈ���� ���� reader.
	public static SqlMapClient sqlMapper;	//SqlMapClient API�� ����ϱ� ���� sqlMapper ��ü.
	
	private List<AdminBookVO> list = new ArrayList<AdminBookVO>();
	
	//����¡ �׼�	
/*		private int currentPage = 1;	//���� ������
		private int totalCount; 		// �� �Խù��� ��
		private int blockCount = 5;	// �� ��������  �Խù��� ��
		private int blockPage = 5; 	// �� ȭ�鿡 ������ ������ ��
		private String pagingHtml; 	//����¡�� ������ HTML
		private PagingAction page; 	// ����¡ Ŭ����
		private int num = 0;
*/		
	public AdminBookListAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml ������ ���������� �����´�.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);	// sqlMapConfig.xml�� ������ ������ sqlMapper ��ü ����.
		reader.close();
	}

	public String execute() throws Exception {
		
		list = sqlMapper.queryForList("admin.selectAll"); //��� ���� ������ ����Ʈ�� �ִ´�.
		
		return SUCCESS;
	}

	public List<AdminBookVO> getList() {
		return list;
	}

	public void setList(List<AdminBookVO> list) {
		this.list = list;
	}
}
