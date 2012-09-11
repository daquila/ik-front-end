<!doctype html>
<html>
	<head>
		<title>Evento</title>
		<g:applyLayout name="main"/>
	</head>
	<body>
		<div class="container" style="margin-top: 70px;">
			<g:if test="${flash.errorMessage}">
				<div class="alert alert-error"><strong>Ops!</strong> ${flash.errorMessage}
					<a class="close" data-dismiss="alert" href="#">&times;</a>
				</div>
			</g:if>
			<g:if test="${flash.message}">
				<div class="alert alert-success">${flash.message }
					<a class="close" data-dismiss="alert" href="#">&times;</a>
				</div>
			</g:if>
			
			<fieldset>
				<legend>Evento</legend>
				<g:form action="save" id="${event?.id}" class="form-horizontal">
				
					<div class="control-group">
						<label class="control-label" for="date">Fecha</label>
						<div class="controls">
						    <div class="input-append date" id="dp2" data-date-format="dd-mm-yyyy">
							    <input class="span2" size="16" type="text" data-date-format="dd/mm/yyyy" value="${event?.date?.format("dd/MM/yyyy")}" name="event.date" id="date">
							    <script>$('#date').datepicker();</script>
							</div>
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label" for="hour">Hora</label>
						<div class="controls">
							<input type="text" id="hour" value="${event?.hour}" name="event.hour" class="span2">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="description">Descripción</label>
						<div class="controls">
							<input type="text" id="description" value="${event?.description}" name="event.description" class="span8">
						</div>
					</div>

					<g:if test="${event}">
					<div class="control-group">
						<label class="control-label" for="owner">Creador</label>
						<div class="controls">
							<input type="text" id="owner" value="${event?.owner?.alias}" class="span2" readonly="readonly">
						</div>
					</div>
					</g:if>
					
					<g:if test="${!event || session.user?.id == event?.owner?.id}" >
						<div class="control-group">
							<div class="controls">
								<button type="submit" class="btn btn-success">Guardar</button>
							</div>
						</div>
					</g:if>
					
				</g:form>
		     </fieldset>
		     <fieldset>
				<legend>Usuarios</legend>
				<div class="control-group">
					<g:if test="${event?.invites}">
						<table class="table table-bordered table-striped">
			        		<thead>
			          			<tr>
			            			<th>Usuario</th>
			            			<th>Commentario</th>
			            			<th>Asistencia</th>
			          			</tr>
			        		</thead>
			        		<tbody>
			        			<g:each in="${event.invites}" var="invite">
			          			<tr>
			            			<td><g:link controller="users" action="show" id="${invite.user.id}">${invite.user.alias} | ${invite.user.name}, ${invite.user.lastName}</g:link></td>
			            			<td class="span6">
			            				<div class="input-append">
			            					<g:if test="${session.user.id == invite.user.id}">
			            						<g:form action="comment" id="${invite.id}" style="margin:0px;">
			            							<input type="hidden" name="eventId" value="${event.id}"/>
													<input class="span5" name="comment" type="text" value="${invite.comment}">
													<button class="btn" type="submit"><i class="icon-ok"></i></button>
												</g:form>
			            					</g:if>
			            					<g:else>
			            						${invite.comment}
			            					</g:else>
										</div>
			            			
			            			</td>
			            			<td>
				            			<g:form action="comment" id="${invite.id}" style="margin:0px;">
	            							<input type="hidden" name="eventId" value="${event.id}"/>
											<button class="btn btn-primary" type="submit"><i class="icon-thumbs-up"></i></button>
											<button class="btn" type="submit"><i class="icon-thumbs-down"></i></button>
										</g:form>
			            			</td>
						    	</tr>
						    	</g:each>
			        		</tbody>
			      		</table>
		      		</g:if>
		      		<g:else>
		      			<p><strong>No hay usuarios</strong></p>
		      		</g:else>
	      		</div>
	      		<p>
	      			<g:link class="btn" action="list">Volver a eventos</g:link>
	      		</p>
	      	</fieldset>
		</div>
	</body>
</html>