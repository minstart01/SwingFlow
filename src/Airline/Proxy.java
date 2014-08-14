package Airline;
import java.io.*;
import java.net.*;
public class Proxy {
/* url을 전달받아 api 리턴text/xml값을 반환 */
	public String getApiText(String pUrl) throws IOException{
		String strRtn = null;
	    /* 초기 */
	    StringBuffer sbf = new StringBuffer(); // xml 할당 String
	    BufferedReader in  = null; 
	     try {
	      // Url 객체
	      URL url = new URL(pUrl);
	      // BufferedReader객체 생성 : url의 response 객체를 읽어옮
	      in = new BufferedReader(new InputStreamReader(url.openStream()));
	      // 
	      String inputLine; // 한줄씩 임시저장
	      // 한줄씩 읽어옮
	      while((inputLine = in.readLine()) != null)
	       sbf.append(inputLine);
	     } catch(Exception e){
	    	 strRtn="<message>null</message>";
	     } finally {  in.close(); strRtn=sbf.toString(); }
		
		return strRtn;
				
	}
}
