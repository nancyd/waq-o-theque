<%@ page import="com.nancydeschenes.waqotheque.Pret" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'pret.label', default: 'Pret')}" />
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
            <g:hasErrors bean="${pretInstance}">
            <div class="errors">
                <g:renderErrors bean="${pretInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="emprunteur"><g:message code="pret.emprunteur.label" default="Emprunteur" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pretInstance, field: 'emprunteur', 'errors')}">
                                    <g:select name="emprunteur.id" from="${com.nancydeschenes.waqotheque.Personne.list()}" optionKey="id" value="${pretInstance?.emprunteur?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="bienPrete"><g:message code="pret.bienPrete.label" default="Bien Prete" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pretInstance, field: 'bienPrete', 'errors')}">
                                    <g:select name="bienPrete.id" from="${com.nancydeschenes.waqotheque.Bien.list()}" optionKey="id" value="${pretInstance?.bienPrete?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dateEmprunt"><g:message code="pret.dateEmprunt.label" default="Date Emprunt" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pretInstance, field: 'dateEmprunt', 'errors')}">
                                    <g:datePicker name="dateEmprunt" precision="day" value="${pretInstance?.dateEmprunt}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dateRetour"><g:message code="pret.dateRetour.label" default="Date Retour" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pretInstance, field: 'dateRetour', 'errors')}">
                                    <g:datePicker name="dateRetour" precision="day" 
                                       value="${pretInstance?.dateRetour?: 'none'}"  
                                       noSelection="['':'à venir']"/>
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
