<div class="navbar navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container">
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</a>
			<g:link controller="home" action="index" class="brand">InitialKick</g:link>
			<div class="nav-collapse">
				<g:if test="${session.user}">
					<ul class="nav">
						<li><g:link controller="events" action="list">Eventos</g:link></li>
					</ul>
				</g:if>
				<ul class="nav pull-right">
		            <li><a href="#">Acerca</a></li>
		            <g:if test="${!session.user}">
		            	<li><a href="#">Registrarse</a></li>
		            </g:if>
		            <g:else>
		            	<li><g:link controller="login" action="logout">Logout</g:link></li>
		            </g:else>
          		</ul>
			</div>
		</div>
	</div>
</div>