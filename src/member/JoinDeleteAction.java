package member;


	import com.opensymphony.xwork2.ActionSupport;
	import com.ibatis.common.resources.Resources;
	import com.ibatis.sqlmap.client.SqlMapClient;
	import com.ibatis.sqlmap.client.SqlMapClientBuilder;

	import java.io.File;
	import java.io.Reader;
	import java.io.IOException;

	public class JoinDeleteAction extends ActionSupport {
		public static Reader reader;
		public static SqlMapClient sqlMapper;

		private JoinVO paramClass; //�Ķ���͸� ������ ��ü
		private JoinVO resultClass; //���� ��� ���� ������ ��ü

			
		private String member_id;
		
		
		// ������
		public JoinDeleteAction() throws IOException {
			
			reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml ������ ���������� �����´�.
			sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml�� ������ ������ sqlMapper ��ü ����.
			reader.close();
		}

		// �Խñ� �� ����
		public String execute() throws Exception {
			
			//�Ķ���Ϳ� ����Ʈ ��ü ����.
			paramClass = new JoinVO();
			resultClass = new JoinVO();
			
			// �ش� ��ȣ�� ���� �����´�.
			resultClass = (JoinVO) sqlMapper.queryForObject("selectMemberOne", getMember_id());


			paramClass.setMember_id(getMember_id());
					
			// ���� ���� ����.
			sqlMapper.update("deleteJoin", paramClass);

			return SUCCESS;
		}

		public static Reader getReader() {
			return reader;
		}

		public static void setReader(Reader reader) {
			JoinDeleteAction.reader = reader;
		}

		public static SqlMapClient getSqlMapper() {
			return sqlMapper;
		}

		public static void setSqlMapper(SqlMapClient sqlMapper) {
			JoinDeleteAction.sqlMapper = sqlMapper;
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

		

		
	}


