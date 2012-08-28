<div class="navbar navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container">
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</a>
			<a href="#" class="brand">InitialKick</a>
			<div class="nav-collapse">
				<ul class="nav">
					<li><a href="#">Eventos</a></li>
				</ul>
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