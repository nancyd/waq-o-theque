package com.nancydeschenes.waqotheque

class PersonneController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [personneInstanceList: Personne.list(params), personneInstanceTotal: Personne.count()]
    }

    def create = {
        def personneInstance = new Personne()
        personneInstance.properties = params
        return [personneInstance: personneInstance]
    }

    def save = {
        def personneInstance = new Personne(params)
        if (personneInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'personne.label', default: 'Personne'), personneInstance.id])}"
            redirect(action: "show", id: personneInstance.id)
        }
        else {
            render(view: "create", model: [personneInstance: personneInstance])
        }
    }

    def show = {
        def personneInstance = Personne.get(params.id)
        if (!personneInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'personne.label', default: 'Personne'), params.id])}"
            redirect(action: "list")
        }
        else {
            [personneInstance: personneInstance]
        }
    }

    def edit = {
        def personneInstance = Personne.get(params.id)
        if (!personneInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'personne.label', default: 'Personne'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [personneInstance: personneInstance]
        }
    }

    def update = {
        def personneInstance = Personne.get(params.id)
        if (personneInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (personneInstance.version > version) {
                    
                    personneInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'personne.label', default: 'Personne')] as Object[], "Another user has updated this Personne while you were editing")
                    render(view: "edit", model: [personneInstance: personneInstance])
                    return
                }
            }
            personneInstance.properties = params
            if (!personneInstance.hasErrors() && personneInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'personne.label', default: 'Personne'), personneInstance.id])}"
                redirect(action: "show", id: personneInstance.id)
            }
            else {
                render(view: "edit", model: [personneInstance: personneInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'personne.label', default: 'Personne'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def personneInstance = Personne.get(params.id)
        if (personneInstance) {
            try {
                personneInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'personne.label', default: 'Personne'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'personne.label', default: 'Personne'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'personne.label', default: 'Personne'), params.id])}"
            redirect(action: "list")
        }
    }
}
