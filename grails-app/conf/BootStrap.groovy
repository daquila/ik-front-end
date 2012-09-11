import com.initialkick.Event
import com.initialkick.EventGroup
import com.initialkick.EventInvite
import com.initialkick.User

class BootStrap {

    def init = { servletContext ->

		// Users		
		User agus = new User(name:"Agustin", lastName:"Cesio", email:"agustincesio@gmail.com", alias:"Agus", password:"1234").save()
		User mago = new User(name:"Francisco", lastName:"Torino", email:"torinofrancisco@hotmail.com", alias:"Mago", password:"1234").save()
		User machi = new User(name:"Eduardo", lastName:"Malbran", email:"eduardom@gamacom.com.ar", alias:"Machi", password:"1234").save()
		User andi = new User(name:"Andres", lastName:"Boselli", email:"andres_boselli@hotmail.com", alias:"Sanchez Chino", password:"1234").save()
		User alvarito = new User(name:"Alvaro", lastName:"Gaona", email:"agaona23@yahoo.com.ar", alias:"Alvarito", password:"1234").save()
		User fer = new User(name:"Fernando", lastName:"Almeyda", email:"fernandoal31@hotmail.com", alias:"Fer", password:"1234").save()
		User nacho = new User(name:"Ignacio", lastName:"Caputo", email:"nachocap@hotmail.com", alias:"Nacho", password:"1234").save()
		User peska = new User(name:"Jose", lastName:"DAquila", email:"jose.daquila@gmail.com", alias:"Peska", password:"1234").save()
		User nico = new User(name:"Nicolas", lastName:"Torino", email:"nictorino@hotmail.com", alias:"Nico", password:"1234").save()
		User guille = new User(name:"Guille", lastName:"Bolo Bolaño", email:"guillebolo@hotmail.com", alias:"Guille", password:"1234").save()
		User firulay = new User(name:"Diego", lastName:"Bolo Bolaño", email:"lacuencadelpetardo@hotmail.com", alias:"Majestuoso", password:"1234").save()
		
		// Group
		EventGroup group = new EventGroup(name: "Estrella del norte - Copa Mano Chao").save()
		EventGroup groupAmistosos = new EventGroup(name: "Amistosos").save()
		
		// Event
		Event fecha01 = new Event(date:new Date(), hour:"16:30", description:"Fecha 01 - Barriletes", owner: peska, group: group).save()
		Event fecha02 = new Event(date:new Date(), hour:"12:30", description:"Fecha 02 - Gloriosos", owner: peska, group: group).save()
		Event fecha03 = new Event(date:new Date(), hour:"12:30", description:"Fecha 03 - Congo", owner: peska, group: group).save()
		Event amistoso01 = new Event(date:new Date(), hour:"12:30", description:"Amistoso en lo del mago", owner: peska, group: groupAmistosos).save()
		
		// Invites
		EventInvite inv1 = new EventInvite(user:peska, event:fecha01).save()
		EventInvite inv2 = new EventInvite(user:andi, event:fecha01, comment:"Llevo las piernas").save()
		EventInvite inv3 = new EventInvite(user:guille, event:fecha01, comment:"Prometo dos pepas").save()

		
		Set invites = []
		invites.add(inv1)
		invites.add(inv2)
		invites.add(inv3)
		
		fecha01.invites = invites
		fecha01.save()
		
		
    }
	
    def destroy = {
    }
	
}
