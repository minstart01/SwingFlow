package Common;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
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
			// this.reader = new
			// java.io.FileReader("D:\\_LYM\\springwork\\SpringTest\\WebContent\\WEB-INF\\classes\\"+sqlMapConfig);
			this.sqlMap = SqlMapClientBuilder.buildSqlMapClient(reader);
			reader.close();
			// System.out.println("SQLMAP : "+sqlMap.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public void close() {
		try {
			this.reader.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public boolean find(String selectNameSpace, T parameter) {
		boolean ret = false;
		List<T> list = null;
		try {
			this.sqlMap.startTransaction();
			list = (List<T>) this.sqlMap.queryForList(
					selectNameSpace + ".find", parameter);
			this.sqlMap.commitTransaction();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			this.sqlMap.endTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (0 != list.size()) {
			ret = true;
		}
		return ret;
	}

	public List<T> queryForList(String selectId, T parameter) {
		List<T> list = null;
		try {
			this.sqlMap.startTransaction();
			list = (List<T>) this.sqlMap.queryForList(selectId, parameter);
			this.sqlMap.commitTransaction();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			this.sqlMap.endTransaction();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	/* select : 사용자 정의 select , 쿼리를 전달받아 select 실행 */
	public List<T> select(String selectNameSpace, String query) {
		List<T> ret = null;
		try {
			this.sqlMap.startTransaction();
			ret = (List<T>) this.sqlMap.queryForList(selectNameSpace
					+ ".UserDefined", query);
			this.sqlMap.commitTransaction();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				this.sqlMap.endTransaction();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return ret;
		}
	}

	/* select : 사용자 정의 select , 쿼리를 전달받아 select 실행 */
	public List<T> select(String selectNameSpace, T parameter) {
		return queryForList(selectNameSpace + ".find", parameter);
	}

	/* insert : 쿼리와 파라미터를 전달받아 insert를 실행 */
	public int insert(String selectNameSpace, T parameter) {
		int ret = 1;
		try {
			ret = (int) this.sqlMap.insert(selectNameSpace + ".insert",
					parameter);
		} catch (NestedSQLException ne) {
			ret = -2; 
		} catch (SQLException e) {
			ret = -1;
			e.printStackTrace();
		} finally {
			return ret;
		}
	}

	public int update(String selectNameSpace, T parameter) {
		int ret = 1;
		try {
			ret = (int) this.sqlMap.update(selectNameSpace + ".update",
					parameter);
		} catch (NestedSQLException ne) {
			ret = -2; 
		} catch (SQLException e) {
			ret = -1;
			e.printStackTrace();
		} finally {
			return ret;
		}
	}

	public int delete(String selectNameSpace, T parameter) {
		int ret = 1;
		try {
			ret = (int) this.sqlMap.delete(selectNameSpace + ".delete",
					parameter);
		} catch (NestedSQLException ne) {
			ret = -2; 
		} catch (SQLException e) {
			ret = -1;
			e.printStackTrace();
		} finally {
			return ret;
		}
	}
	
	public int create(String selectNameSpace) {
		int ret = 1;
		try {
			ret = (int) this.sqlMap.update(selectNameSpace + ".create",null);
		} catch (NestedSQLException ne) {
			ret = -2; 
		} catch (SQLException e) {
			ret = -1;
			e.printStackTrace();
		} finally {
			return ret;
		}
	}
	
	public int drop(String selectNameSpace) {
		int ret = 1;
		try {
			ret = (int) this.sqlMap.update(selectNameSpace + ".drop",null);
		} catch (NestedSQLException ne) {
			ret = -2; 
		} catch (SQLException e) {
			ret = -1;
			e.printStackTrace();
		} finally {
			return ret;
		}
	}

}
