package Common;

public class LoginUser {
	String id;
	String password;
	

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
	
	
}
