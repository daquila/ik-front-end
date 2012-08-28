<!doctype html>
<html>
	<head>
		<title>Usuarios</title>
		<g:applyLayout name="main"/>
	</head>
	<body>
		<div class="container" style="margin-top: 70px;">
			<fieldset>
				<legend>Usuarios</legend>
					<div class="control-group">
					<g:if test="${users}">
						<table class="table table-bordered table-striped">
			        		<thead>
			          			<tr>
			            			<th>Usuario</th>
			          			</tr>
			        		</thead>
			        		<tbody>
			        			<g:each in="${users}" var="user">
			          			<tr>
			            			<td><g:link>${user.alias}</g:link></td>
						    	</tr>
						    	</g:each>
			        		</tbody>
			      		</table>
		      		</g:if>
		      		<g:else>
		      			<p><strong>No hay usuarios</strong></p>
		      		</g:else>
		      	</div>
		      </fieldset>
		</div>
	</body>
</html>



