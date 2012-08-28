package com.initialkick

class UsersController {

	def index() {
		redirect(action: "list")
	}

	def list() {
		[users: User.list()]
	}
	
}