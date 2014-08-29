package Common.DAO;

import java.io.BufferedReader;
import java.io.FileReader;
import java.sql.Connection;
import java.sql.DriverManager;

import com.ibatis.common.jdbc.ScriptRunner;

public class DBInitMovie {
	static Connection conn = null;
	static String localurl = "jdbc:oracle:thin:@localhost:1521:XE";
	static String serverurl = "jdbc:oracle:thin:@192.168.18.241::1521:XE";
	static String user = "swingflow";
	static String password = "happyday";

	public static void main(String[] args) {
		String url=localurl;
		String script = "DBInitMovie.sql";
        try {
        	Class.forName("oracle.jdbc.driver.OracleDriver");
        	conn = DriverManager.getConnection(url, user, password);
            new ScriptRunner(conn,true,false).runScript(new BufferedReader(new FileReader(script)));
        } catch (Exception e) {
            System.err.println(e);
        }
	}

}
