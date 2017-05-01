package member;


import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.io.IOException;
import java.io.Reader;

public class IdCheckAction extends ActionSupport{
	
	public static Reader reader; 
	public static SqlMapClient sqlMapper; 
	
	private JoinVO resultClass; 
	
	private String member_id;
	private int chkId;
	
	public IdCheckAction() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); 
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String execute() throws Exception{
		resultClass = new JoinVO();
		
		resultClass = (JoinVO) sqlMapper.queryForObject("join.IdCheckSelectOne", getMember_id());
		
		if(resultClass == null) {	//아이디 있는지
			chkId = 0; 
		}
		else {
			chkId = 1; 
		}		
		return SUCCESS;
		
	}

	public static Reader getReader() {
		return reader;
	}

	public static void setReader(Reader reader) {
		IdCheckAction.reader = reader;
	}

	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public static void setSqlMapper(SqlMapClient sqlMapper) {
		IdCheckAction.sqlMapper = sqlMapper;
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

	public int getChkId() {
		return chkId;
	}

	public void setChkId(int chkId) {
		this.chkId = chkId;
	}

	}


