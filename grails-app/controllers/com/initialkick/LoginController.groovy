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
		}else{
			flash.loginMessage = "Verifique los datos."
		}
		redirect(controller: "home")
			
		
	}
	
	def logout(){
		session.user = null
		render(view: "/home/home")
	}
	
}
