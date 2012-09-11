package com.initialkick

class LoginFilters {

    def filters = {
        events(controller:'events', action:'*') {
            before = {
				if (!session.user) {
					flash.noLogin = "Reservado para usuarios logueados"
					redirect(controller:'home', action: 'index')
					return false
				 }
            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}
