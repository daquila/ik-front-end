package com.initialkick

class User {

    String name
	String lastName
	String alias
	String email
	String password

    static constraints = {
		email email:true, nullable: false, unique: true, blank: false
		name nullable: false, blank: false
		lastName nullable: false, blank: false
    }

}
