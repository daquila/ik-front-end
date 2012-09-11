package com.initialkick

import java.util.Date;
import java.util.Set;

class Event {

	Date date
	String hour
	String description
	String address
	Set invites
	User owner
	EventGroup group
	
	static hasMany = [invites: EventInvite]
	static belongsTo = [owner: User, group: EventGroup]

	static constraints = {
		invites(nullable:true)	
		address(nullable:true)
	}
	
}
