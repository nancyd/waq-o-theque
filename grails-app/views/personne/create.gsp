

<%@ page import="com.nancydeschenes.waqotheque.Personne" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'personne.label', default: 'Personne')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${personneInstance}">
            <div class="errors">
                <g:renderErrors bean="${personneInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="prenom"><g:message code="personne.prenom.label" default="Prenom" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personneInstance, field: 'prenom', 'errors')}">
                                    <g:textField name="prenom" value="${personneInstance?.prenom}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nom"><g:message code="personne.nom.label" default="Nom" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personneInstance, field: 'nom', 'errors')}">
                                    <g:textField name="nom" value="${personneInstance?.nom}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fiabilite"><g:message code="personne.fiabilite.label" default="Fiabilite" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personneInstance, field: 'fiabilite', 'errors')}">
                                    <g:textField name="fiabilite" 
                                        value="${fieldValue(bean: personneInstance, field: 'fiabilite')}"
                                        size="3" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
