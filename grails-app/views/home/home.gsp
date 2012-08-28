<script type="text/javascript">

	var _gaq = _gaq || [];
	_gaq.push(['_setAccount', 'UA-33939149-1']);
	_gaq.push(['_trackPageview', '/homePage']);
	
	(function() {
		var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	})();

</script>

<head>
	<title>Initialkick</title>
	<g:applyLayout name="main"/>
</head>

<html>
	<body>
		
		<div id="fb-root"></div>
		<script>(function(d, s, id) {
		  var js, fjs = d.getElementsByTagName(s)[0];
		  if (d.getElementById(id)) return;
		  js = d.createElement(s); js.id = id;
		  js.src = "//connect.facebook.net/es_LA/all.js#xfbml=1&appId=161015960667619";
		  fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
		</script>
		
		<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
	
		<div class="container" style="margin-top: 70px;">
			<div class="row">
				<div class="span8">
					<div class="well">
						<h3>Muy pronto</h3><br>
						<p>Initialkick entiende tu necesidad a la hora de organizar un evento. No frustres tus iniciativas porque la administración puede ser estresante.</p>
						<p>Nuestra idea es clara y simple: queremos ayudarte a la hora de armar un evento, que puede ser desde una reunión con amigos hasta un desafío deportivo. Sabemos que muchas veces no resulta tan simple organizar algo y el seguimiento se puede volver muy cansador. Cuantas veces te habrá pasado no saber quien va, si falta gente, no recordar la hora pactada o replanificar teniendo que avisarles a todos del cambio. Creemos poder ayudarte y esperamos que te guste nuestra iniciativa!</p>
						<p>Sumate...</p>
						<br>
						<div class="fb-like" data-href="http://www.facebook.com/Initialkick" data-send="true" data-layout="button_count" data-width="450" data-show-faces="false"></div>
					</div>
					<div>
						<a href="https://twitter.com/InitialKick" class="twitter-follow-button" data-show-count="false" data-lang="es" style="position: absolute;">Seguir a @InitialKick</a>
					</div>
				</div>
				<div class="span4">
					<g:if test="${!session.user}">
						<div class="well">
							<g:form controller="login" action="login" method="post">
								<g:textField name="email" class="span3" placeholder="Email" style="height:30px;"/>
								<g:passwordField name="password" class="span3" placeholder="Password" style="height:30px;"/>
								<g:if test="${message}">
									<div>${message}</div>
								</g:if>
								<input type="submit" name="confirm" value="Entrar" class="btn"/>
							</g:form>
						</div>
					</g:if>
					<div class="well">
						<script charset="utf-8" src="http://widgets.twimg.com/j/2/widget.js"></script>
						<script>
						new TWTR.Widget({
						  version: 2,
						  type: 'profile',
						  rpp: 4,
						  interval: 30000,
						  width: 'auto',
						  height: 300,
						  theme: {
						    shell: {
						      background: '#F5F5F5',
						      color: '#40289c'
						    },
						    tweets: {
						      background: '#ffffff',
						      color: '#000000',
						      links: '#867ca3'
						    }
						  },
						  features: {
						    scrollbar: false,
						    loop: false,
						    live: false,
						    behavior: 'all'
						  }
						}).render().setUser('@initialKick').start();
						</script>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>