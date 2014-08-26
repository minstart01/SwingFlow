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
	private Reader reader;
	private SqlMapClient sqlMap;
	private String nameSpaceString;

	public MyBatis() {
		String sqlMapConfig = "SwingFlowSqlMapConfig.xml";
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

	public MyBatis(String nameSpaceString) {
		this();
		this.nameSpaceString = nameSpaceString;
	}

	public void close() {
		try {
			this.reader.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public boolean find(T parameter) {
		boolean ret = false;
		List<T> list = null;
		try {
			this.sqlMap.startTransaction();
			list = (List<T>) this.sqlMap.queryForList(
					nameSpaceString + ".find", parameter);
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

	public List<T> queryForList(T parameter) {
		List<T> list = null;
		try {
			this.sqlMap.startTransaction();
			list = (List<T>) this.sqlMap.queryForList(nameSpaceString+".find",
					parameter);
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
	public List nameSql(String name,String query) {
		List ret = null;
		try {
			this.sqlMap.startTransaction();
			ret = this.sqlMap.queryForList(nameSpaceString
					+ "."+name, query);
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
	public List<T> select(String query) {
		List<T> ret = null;
		try {
			this.sqlMap.startTransaction();
			ret = (List<T>) this.sqlMap.queryForList(nameSpaceString
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
	public List<T> select(T parameter) {
		return queryForList(parameter);
	}

	/* insert : 쿼리와 파라미터를 전달받아 insert를 실행 */
	public int insert(T parameter) {
		int ret = 1;
		try {
			ret = (int) this.sqlMap.insert(nameSpaceString + ".insert",
					parameter);
		} catch (NestedSQLException ne) {
			ret = -2;
			ne.printStackTrace();
		} catch (SQLException e) {
			ret = -1;
			e.printStackTrace();
		} finally {
			return ret;
		}
	}

	public int update(T parameter) {
		int ret = 1;
		try {
			ret = (int) this.sqlMap.update(nameSpaceString + ".update",
					parameter);
		} catch (NestedSQLException ne) {
			ret = -2;
			ne.printStackTrace();
		} catch (SQLException e) {
			ret = -1;
			e.printStackTrace();
		} finally {
			return ret;
		}
	}

	public int delete(T parameter) {
		int ret = 1;
		try {
			ret = (int) this.sqlMap.delete(nameSpaceString + ".delete",
					parameter);
		} catch (NestedSQLException ne) {
			ret = -2;
			ne.printStackTrace();
		} catch (SQLException e) {
			ret = -1;
			e.printStackTrace();
		} finally {
			return ret;
		}
	}

	public int create() {
		int ret = 1;
		try {
			ret = (int) this.sqlMap.update(nameSpaceString + ".create", null);
		} catch (NestedSQLException ne) {
			ret = -2;
			ne.printStackTrace();
		} catch (SQLException e) {
			ret = -1;
			e.printStackTrace();
		} finally {
			return ret;
		}
	}

	public int drop() {
		int ret = 1;
		try {
			ret = (int) this.sqlMap.update(nameSpaceString + ".drop", null);
		} catch (NestedSQLException ne) {
			ret = -2;
			ne.printStackTrace();
		} catch (SQLException e) {
			ret = -1;
			e.printStackTrace();
		} finally {
			return ret;
		}
	}

	public Reader getReader() {
		return reader;
	}

	public void setReader(Reader reader) {
		this.reader = reader;
	}

	public SqlMapClient getSqlMap() {
		return sqlMap;
	}

	public void setSqlMap(SqlMapClient sqlMap) {
		this.sqlMap = sqlMap;
	}

	public String getNameSpaceString() {
		return nameSpaceString;
	}

	public void setNameSpaceString(String nameSpaceString) {
		this.nameSpaceString = nameSpaceString;
	}

	public List<T> allListPrint(T parameter) {
		List<T> luser = select(parameter);
		System.out.println("-----------------------------------");
		int cnt=1;
		for (T x : luser) {
			
			System.out.println(""+cnt+" : " + x.toString());
			cnt++;
		}
		System.out.println("===================================");
		return luser;
	}
}
