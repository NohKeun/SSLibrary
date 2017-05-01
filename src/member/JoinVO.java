package member;

import java.util.Date;

public class JoinVO {
	private String member_id;
	private String member_pw;
	private String member_nm;
	private int member_birth;
	private String member_email;
	private String member_mobile;
	private String member_zipcode;
	private String member_adr1;
	private String member_adr2;
	private Date create_dt;
	private int use_yn;
	private String member_eamil_dm;
	private int member_admin_tp;

	public String getMember_eamil_dm() {
		return member_eamil_dm;
	}

	public void setMember_eamil_dm(String member_eamil_dm) {
		this.member_eamil_dm = member_eamil_dm;
	}

	public int getMember_admin_tp() {
		return member_admin_tp;
	}

	public void setMember_admin_tp(int member_admin_tp) {
		this.member_admin_tp = member_admin_tp;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_pw() {
		return member_pw;
	}

	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}

	public String getMember_nm() {
		return member_nm;
	}

	public void setMember_nm(String member_nm) {
		this.member_nm = member_nm;
	}

	public int getMember_birth() {
		return member_birth;
	}

	public void setMember_birth(int member_birth) {
		this.member_birth = member_birth;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public String getMember_mobile() {
		return member_mobile;
	}

	public void setMember_mobile(String member_mobile) {
		this.member_mobile = member_mobile;
	}

	public String getMember_zipcode() {
		return member_zipcode;
	}

	public void setMember_zipcode(String member_zipcode) {
		this.member_zipcode = member_zipcode;
	}

	public String getMember_adr1() {
		return member_adr1;
	}

	public void setMember_adr1(String member_adr1) {
		this.member_adr1 = member_adr1;
	}

	public String getMember_adr2() {
		return member_adr2;
	}

	public void setMember_adr2(String member_adr2) {
		this.member_adr2 = member_adr2;
	}

	public Date getCreate_dt() {
		return create_dt;
	}

	public void setCreate_dt(Date create_dt) {
		this.create_dt = create_dt;
	}

	public int getUse_yn() {
		return use_yn;
	}

	public void setUse_yn(int use_yn) {
		this.use_yn = use_yn;
	}

}
