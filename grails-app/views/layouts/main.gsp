<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="WAQ-o-theque" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />
    </head>
    <body>
        <div id="spinner" class="spinner" style="display:none;">
            <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
        </div>
        <div id="contentHolder">
        	<div id="content">
        		<div class="menu"><ul>
          			<li><g:link controller="livre">Livres</g:link></li>
          			<li><g:link controller="CD">CDs</g:link></li>
          			<li><g:link controller="DVD">DVDs</g:link></li>
          			<li><g:link controller="personne">Personnes</g:link></li>
          			<li><g:link controller="pret">Prêts</g:link></li>
        		</ul></div>        		
        		<g:layoutBody />
        	</div>
	    </div>
    </body>
</html>