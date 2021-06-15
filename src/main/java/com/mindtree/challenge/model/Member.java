package com.mindtree.challenge.model;

public class Member {
private String email;
private String fname;
private String lname;
private String location;
private String dob;
private int experience;
private String mid;


public Member() {
	super();
}


public Member(String email, String fname, String lname, String location, String dob, int experience, String mid) {
	super();
	this.email = email;
	this.fname = fname;
	this.lname = lname;
	this.location = location;
	this.dob = dob;
	this.experience = experience;
	this.mid = mid;
}


public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
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
public String getLocation() {
	return location;
}
public void setLocation(String location) {
	this.location = location;
}
public String getDob() {
	return dob;
}
public void setDob(String dob) {
	this.dob = dob;
}
public int getExperience() {
	return experience;
}
public void setExperience(short experience) {
	this.experience = experience;
}
public String getMid() {
	return mid;
}
public void setMid(String mid) {
	this.mid = mid;
}


@Override
public String toString() {
	return "Member [email=" + email + ", fname=" + fname + ", lname=" + lname + ", location=" + location + ", dob="
			+ dob + ", experience=" + experience + ", mid=" + mid + "]";
}

}
