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

		private JoinVO paramClass; //파라미터를 저장할 객체
		private JoinVO resultClass; //쿼리 결과 값을 저장할 객체

			
		private String member_id;
		
		
		// 생성자
		public JoinDeleteAction() throws IOException {
			
			reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다.
			sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
			reader.close();
		}

		// 게시글 글 삭제
		public String execute() throws Exception {
			
			//파라미터와 리절트 객체 생성.
			paramClass = new JoinVO();
			resultClass = new JoinVO();
			
			// 해당 번호의 글을 가져온다.
			resultClass = (JoinVO) sqlMapper.queryForObject("selectMemberOne", getMember_id());


			paramClass.setMember_id(getMember_id());
					
			// 삭제 쿼리 수행.
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


