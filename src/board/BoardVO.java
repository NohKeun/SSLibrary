package board;

import java.util.Date;

public class BoardVO {
	private int article_no; // �۹�ȣ
	private String member_id; // �ۼ���
	private String title; // ������
	private int readcount; // ��ȸ��
	private String content; // �۳���
	private Date create_dt; // �ۼ���
	private int board_type; // �Խñ�Ÿ��(0-����,1-Q&A,2-������û,3-��������(������)

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
