
<%@ page import="com.nancydeschenes.waqotheque.Pret" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'pret.label', default: 'Pret')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'pret.id.label', default: 'Id')}" />
                        
                            <th><g:message code="pret.emprunteur.label" default="Emprunteur" /></th>
                        
                            <th><g:message code="pret.bienPrete.label" default="Bien Prete" /></th>
                        
                            <g:sortableColumn property="dateEmprunt" title="${message(code: 'pret.dateEmprunt.label', default: 'Date Emprunt')}" />
                        
                            <g:sortableColumn property="dateRetour" title="${message(code: 'pret.dateRetour.label', default: 'Date Retour')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${pretInstanceList}" status="i" var="pretInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${pretInstance.id}">${fieldValue(bean: pretInstance, field: "id")}</g:link></td>
                        
                            <td><waqotheque:personne value="${pretInstance?.emprunteur}"/></td>
                        
                            <td>${fieldValue(bean: pretInstance, field: "bienPrete")}</td>
                        
                            <td><g:formatDate date="${pretInstance.dateEmprunt}" /></td>
                        
                            <td><g:formatDate date="${pretInstance.dateRetour}" /></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${pretInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
