<!doctype html>
<html>
	<head>
		<title>Eventos</title>
		<g:applyLayout name="main"/>
	</head>
	<body>
		<div class="container" style="margin-top: 70px;">
			<g:if test="${flash.errorMessage}">
				<div class="alert alert-error"><strong>Ops!</strong> ${flash.errorMessage}</div>
			</g:if>
			<g:if test="${flash.message}">
				<div class="alert alert-success">${flash.message}</div>
			</g:if>
			<fieldset>
				<legend>Eventos</legend>
					<g:if test="${events}">
						<div class="accordion" id="accordion2">
							<g:each in="${events}" var="group" status="pos">
								<div class="accordion-group">
									<div class="accordion-heading">
										<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse${pos}">${group.key}</a>
									</div>
									<div id="collapse${pos}" class="accordion-body collapse">
										<div class="accordion-inner">
											<g:each var="event" in="${group.value}">
											    <ul>
											    	<li>${event.date.format("dd/MM/yyyy")}&nbsp;&nbsp;<span class="divider">|</span>&nbsp;&nbsp;<g:link action="edit" id="${event.id}">${event.description}</g:link></li>
											    </ul>
											</g:each>
										</div>
									</div>
								</div>
							</g:each>
						</div>
		      		</g:if>
		      		<g:else>
		      			<p><strong>No hay eventos</strong></p>
		      		</g:else>
		      		<p>
		      			<g:link class="btn btn-primary" action="edit">Agregar evento</g:link>
		      		</p>
		      </fieldset>
		</div>
	</body>
</html>



