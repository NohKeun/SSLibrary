package member;

import java.io.IOException;
import java.io.Reader;
import java.util.Date;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;


public class JoinAction extends ActionSupport {
	
	public static Reader reader; 
	public static SqlMapClient sqlMapper; 

	private JoinVO paramClass; 
	private JoinVO resultClass; 
	
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
  	
  	private int chkId;
		
	public JoinAction() throws IOException {

		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); 
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String form() throws Exception {
		//µî·Ï Æû.
		return SUCCESS;
	}
	
	

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		paramClass = new JoinVO();
		resultClass = new JoinVO();
		
		resultClass = (JoinVO) sqlMapper.queryForObject("join.selectMemberOne", getMember_id());
		
		if(resultClass != null) {	
			return ERROR;
		}
	
		
		paramClass.setMember_id(getMember_id());		
		paramClass.setMember_pw(getMember_pw());
		paramClass.setMember_nm(getMember_nm());
		paramClass.setMember_birth(getMember_birth());
		paramClass.setMember_email(getMember_email());
		paramClass.setMember_mobile(getMember_mobile());
		paramClass.setMember_zipcode(getMember_zipcode());
		paramClass.setMember_adr1(getMember_adr1());
		paramClass.setMember_adr2(getMember_adr2());
	
		sqlMapper.insert("join.insertjoin", paramClass);
		return SUCCESS;
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
	public JoinVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(JoinVO paramClass) {
		this.paramClass = paramClass;
	}

	public JoinVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(JoinVO resultClass) {
		this.resultClass = resultClass;
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
	public int getChkId() {
		return chkId;
	}

	public void setChkId(int chkId) {
		this.chkId = chkId;
	}


}
