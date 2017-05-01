package login;

import java.io.IOException;
import java.io.Reader;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

public class CheckIdAction extends ActionSupport implements SessionAware{
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	private String member_id;
	private String member_pw;
	private String member_admin_tp;
	private LoginVO paramClass;
	private LoginVO resultClass;
	private Map session;
	
	public CheckIdAction() throws IOException {
		reader=Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper=SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String checkId() throws Exception {
		paramClass=new LoginVO();
		paramClass.setMember_id(member_id);
		paramClass.setMember_pw(member_pw);
		
		LoginVO result = (LoginVO)sqlMapper.queryForObject("login.checkId", member_id);
		System.out.println("param.id >> " + paramClass.getMember_id());
		System.out.println("param.pw >> " + paramClass.getMember_pw());
		System.out.println("result >> " + result);
		System.out.println("member_pw >> " + member_pw);

		if(member_pw.equals(result.getMember_pw())){
			session.put("session_id", result.getMember_id());
			session.put("session_admin_tp", result.getMember_admin_tp());
			
			return SUCCESS;
		}
		return ERROR;
	}
	
	public String logout() throws Exception {
		if(session.get("session_id") != null) {
			session.remove("session_id");
		}
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
		CheckIdAction.reader = reader;
	}

	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public static void setSqlMapper(SqlMapClient sqlMapper) {
		CheckIdAction.sqlMapper = sqlMapper;
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

	public String getMember_admin_tp() {
		return member_admin_tp;
	}

	public void setMember_admin_tp(String member_admin_tp) {
		this.member_admin_tp = member_admin_tp;
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
