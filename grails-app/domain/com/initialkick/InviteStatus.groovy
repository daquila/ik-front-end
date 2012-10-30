package com.initialkick

public enum InviteStatus {

    ACCEPTED("Accepted"),
	REFUSED("Refused"),
	UNKNOWN("Unknown")
	
	final String id
	
	static list() {
		[ACCEPTED, REFUSED, UNKNOWN]
	}
	
	InviteStatus(String id){
		this.id = id
	}
	
	public String toString(){
		return name
	}
	
}