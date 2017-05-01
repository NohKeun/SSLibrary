package member;

import member.JoinVO;

import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import java.io.IOException;
import java.io.Reader;
import java.util.Date;
import java.io.File;

public class joinModifyAction extends ActionSupport {
	public static Reader reader;
	public static SqlMapClient sqlMapper;

	private JoinVO paramClass; //�Ķ���͸� ������ ��ü
	private JoinVO resultClass; //���� ��� ���� ������ ��ü

	private String member_id;
	private String member_pw;
	private String member_nm;
  	private int member_birth;
  	private String member_email;
  	private String member_mobile;
  	private String member_zipcode;
  	private String member_adr1;
  	private String member_adr2;


	// ������
	public joinModifyAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml ������ ���������� �����´�.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml�� ������ ������ sqlMapper ��ü ����.
		reader.close();
	}

	// �Խñ� ����
	public String execute() throws Exception {
		
		//�Ķ���Ϳ� ����Ʈ ��ü ����.
		paramClass = new JoinVO();
		resultClass = new JoinVO();

		// ������ �׸� ����.
		paramClass.setMember_id(getMember_id());
		paramClass.setMember_pw(getMember_pw());
		paramClass.setMember_nm(getMember_nm());
		paramClass.setMember_birth(getMember_birth());
		paramClass.setMember_email(getMember_email());
		paramClass.setMember_mobile(getMember_mobile());
		paramClass.setMember_zipcode(getMember_zipcode());
		paramClass.setMember_adr1(getMember_adr1());
		paramClass.setMember_adr2(getMember_adr2());

		// �ϴ� �׸� �����Ѵ�.
		sqlMapper.update("updateBoard", paramClass);

		

		// ������ ������ view �������� �̵�.
		resultClass = (JoinVO) sqlMapper.queryForObject("modifyselectOne", getMember_id());
		
		return SUCCESS;
	}


	public static Reader getReader() {
		return reader;
	}

	public static void setReader(Reader reader) {
		joinModifyAction.reader = reader;
	}

	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public static void setSqlMapper(SqlMapClient sqlMapper) {
		joinModifyAction.sqlMapper = sqlMapper;
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
}

