import com.initialkick.User

class BootStrap {

    def init = { servletContext ->
		
		User agus = new User(name:"Agustin", lastName:"Cesio", email:"agustincesio@gmail.com", alias:"Agus", password:"1234").save()

		User mago = new User(name:"Francisco", lastName:"Torino", email:"torinofrancisco@hotmail.com", alias:"Mago", password:"1234").save()
		User machi = new User(name:"Eduardo", lastName:"Malbran", email:"eduardom@gamacom.com.ar", alias:"Machi", password:"1234").save()
		User andi = new User(name:"Andres", lastName:"Boselli", email:"andres_boselli@hotmail.com", alias:"Sanchez Chino", password:"1234").save()
		User alvarito = new User(name:"Alvaro", lastName:"Gaona", email:"agaona23@yahoo.com.ar", alias:"Alvarito", password:"1234").save()

		User fer = new User(name:"Fernando", lastName:"Almeyda", email:"fernandoal31@hotmail.com", alias:"Fer", password:"1234").save()
		User nacho = new User(name:"Ignacio", lastName:"Caputo", email:"nachocap@hotmail.com", alias:"Nacho", password:"1234").save()
		User peska = new User(name:"Jose", lastName:"DAquila", email:"jose.daquila@gmail.com", alias:"Peska", password:"1234").save()
		User nico = new User(name:"Nicolas", lastName:"Torino", email:"nictorino@hotmail.com", alias:"Nico", password:"1234").save()
		
		User guille = new User(name:"Guille", lastName:"Bolo Bola–o", email:"guillebolo@hotmail.com", alias:"Guille", password:"1234").save()
		User firulay = new User(name:"Diego", lastName:"Bolo Bola–o", email:"lacuencadelpetardo@hotmail.com", alias:"Majestuoso", password:"1234").save()
		
    }
	
    def destroy = {
    }
	
}
