package com.beans;

public class InfoBeans {
	private String username;
	private String useremail;
	private String userphone;
	private String userpass;
	
	public InfoBeans(String username,String useremail,String userphone,String userpass) {
		this.username = username;
		this.useremail = useremail;
		this.userphone = userphone;
		this.userpass = userpass;
	}
	
	public InfoBeans() {
		
	}
	public InfoBeans(String useremail) {
		this.useremail = useremail;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUseremail() {
		return useremail;
	}

	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}

	public String getUserphone() {
		return userphone;
	}

	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}

	public String getUserpass() {
		return userpass;
	}

	public void setUserpass(String userpass) {
		this.userpass = userpass;
	}

}
