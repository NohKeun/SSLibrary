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
	
	public static Reader reader;	//파일 스트림을 위한 reader.
	public static SqlMapClient sqlMapper;	//SqlMapClient API를 사용하기 위한 sqlMapper 객체.
	
	private List<AdminBookVO> list = new ArrayList<AdminBookVO>();
	
	//페이징 액션	
/*		private int currentPage = 1;	//현재 페이지
		private int totalCount; 		// 총 게시물의 수
		private int blockCount = 5;	// 한 페이지의  게시물의 수
		private int blockPage = 5; 	// 한 화면에 보여줄 페이지 수
		private String pagingHtml; 	//페이징을 구현한 HTML
		private PagingAction page; 	// 페이징 클래스
		private int num = 0;
*/		
	public AdminBookListAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);	// sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
		reader.close();
	}

	public String execute() throws Exception {
		
		list = sqlMapper.queryForList("admin.selectAll"); //모든 글을 가져와 리스트에 넣는다.
		
		return SUCCESS;
	}

	public List<AdminBookVO> getList() {
		return list;
	}

	public void setList(List<AdminBookVO> list) {
		this.list = list;
	}
}
