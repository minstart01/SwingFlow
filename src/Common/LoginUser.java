package Common;

import java.io.Serializable;

public class LoginUser implements Serializable {
	/**
	 * 
	 */
//	private static final long serialVersionUID = 2408179364696773313L;
	/**
	 * 
	 */
	private String id;
	private String password;
	private String name;

	public LoginUser() {
		this.id = "";
		this.password = "";
	}
	
	public LoginUser(String id, String password) {
		super();
		this.id = id;
		this.password = password;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String toString(){
		return id +":"+ password +":"+ name;
	}
}
