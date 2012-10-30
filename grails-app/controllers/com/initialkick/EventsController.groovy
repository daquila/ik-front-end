package com.initialkick

import java.text.SimpleDateFormat
import com.initialkick.Event
import com.initialkick.EventInvite


class EventsController {
	
	def list() {
		[events: Event.findAllByOwner(session.user).groupBy{it.group.name}]
	}
	
	def edit() {
		Event event = null
		if (params.id){
			event = Event.get(params.id)
			if (event.owner.id != session.user.id){
				flash.errorMessage = "Operacion incorrecta."
				redirect (action: "list")
				return
			}
		}
		[event: event]
	}

	// Comment made in test branch
	
	def save(){
		Event event = null
		if (params.id){
			event = Event.get(params.id)
		}else{
			event = new Event(owner: session.user)
		}
		
		if (event){

			bindData(event, params, [exclude: ['date']], "event")
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy")
			event.date = sdf.parse(params.event.date)
			
			event.validate()
			println event.errors
			
			if (event.save()){
				flash.message = "El evento se guardó exitosamente!"
				redirect (action: "edit", id: event.id)
				return
			}else{
				flash.errorMessage = "No se pudo guardar el evento."
				render(view: "/events/edit", model: [event:event])
				return
			}
		}
		list()
	}
	
	def comment(){
		EventInvite invite = EventInvite.get(params.id)
		if (invite && session.user?.id == invite.user?.id && params.comment){
			invite.comment = params.comment
			invite.save()
		}
		redirect (action: "edit", id: params.eventId)
		return
		
	}
	
	private validateOwner() {
		if (!session.user) {
			redirect(action: 'login')
			return false
		}
	}
	
}
