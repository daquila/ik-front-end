package com.initialkick


class EventInvite {
	
	String comment
	User user
	Event event
	InviteStatus status = InviteStatus.UNKNOWN
	
	static belongsTo = [user: User, event: Event]

    static constraints = {
		comment(nullable:true)	
	}
	
}
