package admin;

import java.io.File;
import java.io.IOException;
import java.io.Reader;

import org.apache.commons.io.FileUtils;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import init.InitPath;

public class FileUploadAction extends ActionSupport {

   public static Reader reader; // 파일 스트림을 위한 reader.
   public static SqlMapClient sqlMapper; // SqlMapClient API를 사용하기 위한 sqlMapper
                                 // 객체.

   private AdminBookVO paramClass;
   private AdminBookVO resultClass;

   private int book_no;
   private String book_image;

   private File upload;
   private String uploadContentType;
   private String uploadFileName;
   private String fileUploadPath = InitPath.getPath();

   public FileUploadAction() throws IOException {
      reader = Resources.getResourceAsReader("sqlMapConfig.xml");
      sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
      reader.close();
   }

   public String upload() throws Exception {

      File destFile = new File(fileUploadPath + getUploadFileName());
      FileUtils.copyFile(getUpload(), destFile);

      paramClass = new AdminBookVO();
      resultClass = new AdminBookVO();

      paramClass.setBook_no(getBook_no());
      paramClass.setBook_image(getUploadFileName());

      sqlMapper.update("admin.updateImage", paramClass);

      resultClass = (AdminBookVO) sqlMapper.queryForObject("admin.selectOne", getBook_no());

      return SUCCESS;
   }

   public String execute() throws Exception {

      return SUCCESS;
   }

   public File getUpload() {
      return upload;
   }

   public void setUpload(File upload) {
      this.upload = upload;
   }

   public String getUploadContentType() {
      return uploadContentType;
   }

   public void setUploadContentType(String uploadContentType) {
      this.uploadContentType = uploadContentType;
   }

   public String getUploadFileName() {
      return uploadFileName;
   }

   public void setUploadFileName(String uploadFileName) {
      this.uploadFileName = uploadFileName;
   }

   public String getFileUploadPath() {
      return fileUploadPath;
   }

   public void setFileUploadPath(String fileUploadPath) {
      this.fileUploadPath = fileUploadPath;
   }

   public int getBook_no() {
      return book_no;
   }

   public void setBook_no(int book_no) {
      this.book_no = book_no;
   }

   public String getBook_image() {
      return book_image;
   }

   public void setBook_image(String book_image) {
      this.book_image = book_image;
   }

}