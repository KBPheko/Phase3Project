package com.bean;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class User {
private String fullname;
@Id
private String emailid;
private String password;
private String role;
public String getFullname() {
	return fullname;
}
public void setFullname(String fullname) {
	this.fullname = fullname;
}
public String getEmailid() {
	return emailid;
}
public void setEmailid(String emailid) {
	this.emailid = emailid;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getRole() {
	return role;
}
public void setRole(String role) {
	this.role = role;
}
@Override
public String toString() {
	return "User [fullname=" + fullname + ", emailid=" + emailid + ", password=" + password + ", role=" + role + "]";
}

}
