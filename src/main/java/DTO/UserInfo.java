package DTO;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public class UserInfo {

String timeStamp = new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss").format(Calendar.getInstance().getTime());

private String date =timeStamp;
private String fname;
private String lname;
private String email;
private String phno;
private String address;
private String uid;
private String pass1;

public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public String getFname() {
	return fname;
}
public void setFname(String fname) {
	this.fname = fname;
}
public String getLname() {
	return lname;
}
public void setLname(String lname) {
	this.lname = lname;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPhno() {
	return phno;
}
public void setPhno(String phno) {
	this.phno = phno;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getUid() {
	return uid;
}
public void setUid(String uid) {
	this.uid = uid;
}
public String getPass1() {
	return pass1;
}
public void setPass1(String pass1) {
	this.pass1 = pass1;
}




}
