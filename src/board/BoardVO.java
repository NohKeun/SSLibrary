package board;

import java.util.Date;

public class BoardVO {
	private int article_no; // 글번호
	private String member_id; // 작성자
	private String title; // 글제목
	private int readcount; // 조회수
	private String content; // 글내용
	private Date create_dt; // 작성일
	private int board_type; // 게시글타입(0-자유,1-Q&A,2-도서신청,3-공지사항(관리자)

	public int getArticle_no() {
		return article_no;
	}

	public void setArticle_no(int article_no) {
		this.article_no = article_no;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getReadcount() {
		return readcount;
	}

	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreate_dt() {
		return create_dt;
	}

	public void setCreate_dt(Date create_dt) {
		this.create_dt = create_dt;
	}

	public int getBoard_type() {
		return board_type;
	}

	public void setBoard_type(int board_type) {
		this.board_type = board_type;
	}
}
