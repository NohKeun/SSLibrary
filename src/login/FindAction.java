package login;

import java.io.IOException;
import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class FindAction extends ActionSupport {
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	private String member_id;
	private String member_pw;
	private String member_email;
	private LoginVO paramClass;
	private LoginVO resultClass;
	private String result;
	public FindAction() throws IOException {
		reader=Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper=SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String form() throws Exception {
		return SUCCESS;
	}
	
	public String findId() throws Exception {
		result = (String) sqlMapper.queryForObject("login.findId", member_email);
		System.out.println("result : " + result);
		return SUCCESS;	
	}
	
	public String findPw() throws Exception {
		result = (String) sqlMapper.queryForObject("login.findPw", member_id);
		System.out.println("result : " + result);
		return SUCCESS;
	}
	

	public static Reader getReader() {
		return reader;
	}

	public static void setReader(Reader reader) {
		FindAction.reader = reader;
	}

	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public static void setSqlMapper(SqlMapClient sqlMapper) {
		FindAction.sqlMapper = sqlMapper;
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

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public LoginVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(LoginVO paramClass) {
		this.paramClass = paramClass;
	}

	public LoginVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(LoginVO resultClass) {
		this.resultClass = resultClass;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

}
