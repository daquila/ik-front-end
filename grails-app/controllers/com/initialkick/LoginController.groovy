package com.initialkick

class LoginController {

    def index() { }
	
	def login() {
		
		if (request.get){
			return
		}
		
		User user = User.findByEmail(params.email)
		if (user?.password == params.password){
			session.user = user
			render(view: "/home/home")
		}
		render(view: "/home/home", model: [message: "Verifique los datos."])
		
	}
	
	def logout(){
		session.user = null
		render(view: "/home/home")
	}
	
}
