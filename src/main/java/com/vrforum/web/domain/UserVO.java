package com.vrforum.web.domain;


public class UserVO {
	private String userId;
	private String nickname;
	private String password;
	private String email;
	private boolean userHasVr;
	private boolean admin;
	
	public boolean isAdmin() {
		return admin;
	}
	public void setAdmin(boolean admin) {
		this.admin = admin;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	@Override
	public String toString() {
		return "UserVO [userId=" + userId + ", nickname=" + nickname + ", password=" + password + ", userHasVr="
				+ userHasVr + "]";
	}
	public boolean isUserHasVr() {
		return userHasVr;
	}
	public void setUserHasVr(boolean userHasVr) {
		this.userHasVr = userHasVr;
	}

	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean loginChk() {
		if (userId != null && userId != "") {
			return true;
		}
		return false;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
