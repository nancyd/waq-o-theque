
<%@ page import="com.nancydeschenes.waqotheque.Personne" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'personne.label', default: 'Personne')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'personne.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="prenom" title="${message(code: 'personne.prenom.label', default: 'Prenom')}" />
                        
                            <g:sortableColumn property="nom" title="${message(code: 'personne.nom.label', default: 'Nom')}" />
                        
                            <g:sortableColumn property="fiabilite" title="${message(code: 'personne.fiabilite.label', default: 'Fiabilite')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${personneInstanceList}" status="i" var="personneInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${personneInstance.id}">${fieldValue(bean: personneInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: personneInstance, field: "prenom")}</td>
                        
                            <td>${fieldValue(bean: personneInstance, field: "nom")}</td>
                        
                            <td>${fieldValue(bean: personneInstance, field: "fiabilite")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${personneInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
