package login;

import java.io.Reader;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware {
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	private String member_id;
	private String member_pw;
	private Map session;
	private LoginVO paramClass;
	private LoginVO resultClass;

	public LoginAction() throws Exception {
		reader=Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper=SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}

	public String form() throws Exception {
		return SUCCESS;
	}
	
	public String loginRequest() throws Exception {
		return SUCCESS;
	}
	
	@Override
	public void setSession(Map session) {
		// TODO Auto-generated method stub
		this.session = session;
	}

	public static Reader getReader() {
		return reader;
	}

	public static void setReader(Reader reader) {
		LoginAction.reader = reader;
	}

	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public static void setSqlMapper(SqlMapClient sqlMapper) {
		LoginAction.sqlMapper = sqlMapper;
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

	public Map getSession() {
		return session;
	}
	
}
	