package Common;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.common.jdbc.exception.NestedSQLException;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;



public class MyBatis<T> {
	Reader reader;
	SqlMapClient sqlMap; 
	public MyBatis(String sqlMapConfig) {
		try {
			this.reader = Resources.getResourceAsReader(sqlMapConfig);
//			this.reader = new java.io.FileReader("D:\\_LYM\\springwork\\SpringTest\\WebContent\\WEB-INF\\classes\\"+sqlMapConfig);   
			this.sqlMap = SqlMapClientBuilder.buildSqlMapClient(reader);
			reader.close(); 
//			System.out.println("SQLMAP : "+sqlMap.toString());
		} catch (IOException e) {
			e.printStackTrace();
		} 
	}
	
	public void close(){
		try {
			this.reader.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<T> queryForList(String selectId, T parameter){
		List<T> list=null;
		try {
			list = (List<T>) this.sqlMap.queryForList(selectId, parameter);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	/* select : 사용자 정의 select , 쿼리를 전달받아 select 실행 */
	public ArrayList<T> select(String query) {
		ArrayList<T> ret = null;
		try {
			ret=(ArrayList<T>)this.sqlMap.queryForList("UserDefinedSQL",query);
		} catch(SQLException e){
			e.printStackTrace();
		} finally{
			return ret;
		}
	} 
	/* insert : 쿼리와 파라미터를 전달받아 insert를 실행 */
	public int insert(String selectId, T parameter){
		int ret=-1;
		try {
			ret = (int)this.sqlMap.insert(selectId,parameter);
		} catch (NestedSQLException ne){
			System.out.println("이미 입력된자료");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			return ret;
		}
	}
}
