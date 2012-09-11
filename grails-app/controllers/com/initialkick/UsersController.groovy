package com.initialkick

class UsersController {

	def index() {
		render(view: "list", model: [users: User.list()])
	}

}