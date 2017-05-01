package board;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class ListAction extends ActionSupport{

	public static Reader reader;	//파일 스트림을 위한 reader.
	public static SqlMapClient sqlMapper;	//SqlMapClient API를 사용하기 위한 sqlMapper 객체.
	
	private List<BoardVO> list = new ArrayList<BoardVO>();
	
	private String searchKeyword;
	private int searchNum;	
	
	//페이징 액션	
	private int currentPage = 1;	//현재 페이지
	private int totalCount; 		// 총 게시물의 수
	private int blockCount = 5;	// 한 페이지의  게시물의 수
	private int blockPage = 5; 	// 한 화면에 보여줄 페이지 수
	private String pagingHtml; 	//페이징을 구현한 HTML
	private PagingAction page; 	// 페이징 클래스
	private int num = 0; //???
	
	
	public ListAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);	// sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
		reader.close();
	}
	
	//통합게시판
	public String execute() throws Exception {
		
		if(getSearchKeyword() != null)
		{
			return search();
		}
		
		list = sqlMapper.queryForList("board.selectAll"); //모든 글을 가져와 리스트에 넣는다.
		
		totalCount = list.size(); // 전체 글 갯수를 구한다.
		// pagingAction 객체 생성.
		page = new PagingAction(currentPage, totalCount, blockCount, blockPage, num, ""); 
		pagingHtml = page.getPagingHtml().toString(); // 페이지 HTML 생성.

		// 현재 페이지에서 보여줄 마지막 글의 번호 설정.
		int lastCount = totalCount;

		// 현재 페이지의 마지막 글의 번호가 전체의 마지막 글 번호보다 작으면 
		//lastCount를 +1 번호로 설정.
		if (page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;

		// 전체 리스트에서 현재 페이지만큼의 리스트만 가져온다.
		list = list.subList(page.getStartCount(), lastCount);
		
		return SUCCESS;
	}
	
	public String free() throws Exception {
		
		if(getSearchKeyword() != null)
		{
			return search();
		}
		
		list = sqlMapper.queryForList("board.selectboardTypeFree"); //모든 글을 가져와 리스트에 넣는다.
		
		totalCount = list.size(); // 전체 글 갯수를 구한다.
		// pagingAction 객체 생성.
		page = new PagingAction(currentPage, totalCount, blockCount, blockPage, num, ""); 
		pagingHtml = page.getPagingHtml().toString(); // 페이지 HTML 생성.

		// 현재 페이지에서 보여줄 마지막 글의 번호 설정.
		int lastCount = totalCount;

		// 현재 페이지의 마지막 글의 번호가 전체의 마지막 글 번호보다 작으면 
		//lastCount를 +1 번호로 설정.
		if (page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;

		// 전체 리스트에서 현재 페이지만큼의 리스트만 가져온다.
		list = list.subList(page.getStartCount(), lastCount);
		
		return SUCCESS;
	}
	
	public String qna() throws Exception {
		
		if(getSearchKeyword() != null)
		{
			return search();
		}
		
		list = sqlMapper.queryForList("board.selectboardTypeQna"); //모든 글을 가져와 리스트에 넣는다.
		
		totalCount = list.size(); // 전체 글 갯수를 구한다.
		// pagingAction 객체 생성.
		page = new PagingAction(currentPage, totalCount, blockCount, blockPage, num, ""); 
		pagingHtml = page.getPagingHtml().toString(); // 페이지 HTML 생성.

		// 현재 페이지에서 보여줄 마지막 글의 번호 설정.
		int lastCount = totalCount;

		// 현재 페이지의 마지막 글의 번호가 전체의 마지막 글 번호보다 작으면 
		//lastCount를 +1 번호로 설정.
		if (page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;

		// 전체 리스트에서 현재 페이지만큼의 리스트만 가져온다.
		list = list.subList(page.getStartCount(), lastCount);
		
		return SUCCESS;
	}
	
	public String bookorder() throws Exception {
		
		if(getSearchKeyword() != null)
		{
			return search();
		}
		
		list = sqlMapper.queryForList("board.selectboardTypeBookOrder"); //모든 글을 가져와 리스트에 넣는다.
		
		totalCount = list.size(); // 전체 글 갯수를 구한다.
		// pagingAction 객체 생성.
		page = new PagingAction(currentPage, totalCount, blockCount, blockPage, num, ""); 
		pagingHtml = page.getPagingHtml().toString(); // 페이지 HTML 생성.

		// 현재 페이지에서 보여줄 마지막 글의 번호 설정.
		int lastCount = totalCount;

		// 현재 페이지의 마지막 글의 번호가 전체의 마지막 글 번호보다 작으면 
		//lastCount를 +1 번호로 설정.
		if (page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;

		// 전체 리스트에서 현재 페이지만큼의 리스트만 가져온다.
		list = list.subList(page.getStartCount(), lastCount);
		
		return SUCCESS;
	}
	
	
	
	//검색
	public String search() throws Exception {
		
		if(searchNum == 0){
			list = sqlMapper.queryForList("board.selectSearchM", "%"+getSearchKeyword()+"%");
		}
		if(searchNum == 1){
			list = sqlMapper.queryForList("board.selectSearchT", "%"+getSearchKeyword()+"%");
		}
		if(searchNum == 2){
			list = sqlMapper.queryForList("board.selectSearchC", "%"+getSearchKeyword()+"%");	
		}
		
		totalCount = list.size();
		page = new PagingAction(currentPage, totalCount, blockCount, blockPage, searchNum, getSearchKeyword());
		pagingHtml = page.getPagingHtml().toString();
		
		int lastCount = totalCount;
		
		if(page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;
		
		list = list.subList(page.getStartCount(), lastCount);
		return SUCCESS;
		
	}

	public String notice() throws Exception {
		
		return SUCCESS;
	}
	
	public List<BoardVO> getList() {
		return list;
	}

	public String getSearchKeyword() {
		return searchKeyword;
	}

	public int getSearchNum() {
		return searchNum;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public int getBlockCount() {
		return blockCount;
	}

	public int getBlockPage() {
		return blockPage;
	}

	public String getPagingHtml() {
		return pagingHtml;
	}

	public PagingAction getPage() {
		return page;
	}

	public int getNum() {
		return num;
	}

	public void setList(List<BoardVO> list) {
		this.list = list;
	}

	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}

	public void setSearchNum(int searchNum) {
		this.searchNum = searchNum;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public void setBlockCount(int blockCount) {
		this.blockCount = blockCount;
	}

	public void setBlockPage(int blockPage) {
		this.blockPage = blockPage;
	}

	public void setPagingHtml(String pagingHtml) {
		this.pagingHtml = pagingHtml;
	}

	public void setPage(PagingAction page) {
		this.page = page;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
}
