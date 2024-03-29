package com.djamware

import org.springframework.dao.DataIntegrityViolationException

class TransferController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [transferInstanceList: Transfer.list(params), transferInstanceTotal: Transfer.count()]
    }

    def create() {
        [transferInstance: new Transfer(params)]
    }

    def save() {
        def transferInstance = new Transfer(params)
        if (!transferInstance.save(flush: true)) {
            render(view: "create", model: [transferInstance: transferInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'transfer.label', default: 'Transfer'), transferInstance.id])
        redirect(action: "show", id: transferInstance.id)
    }

    def show() {
        def transferInstance = Transfer.get(params.id)
        if (!transferInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'transfer.label', default: 'Transfer'), params.id])
            redirect(action: "list")
            return
        }

        [transferInstance: transferInstance]
    }

    def edit() {
        def transferInstance = Transfer.get(params.id)
        if (!transferInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'transfer.label', default: 'Transfer'), params.id])
            redirect(action: "list")
            return
        }

        [transferInstance: transferInstance]
    }

    def update() {
        def transferInstance = Transfer.get(params.id)
        if (!transferInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'transfer.label', default: 'Transfer'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (transferInstance.version > version) {
                transferInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'transfer.label', default: 'Transfer')] as Object[],
                          "Another user has updated this Transfer while you were editing")
                render(view: "edit", model: [transferInstance: transferInstance])
                return
            }
        }

        transferInstance.properties = params

        if (!transferInstance.save(flush: true)) {
            render(view: "edit", model: [transferInstance: transferInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'transfer.label', default: 'Transfer'), transferInstance.id])
        redirect(action: "show", id: transferInstance.id)
    }

    def delete() {
        def transferInstance = Transfer.get(params.id)
        if (!transferInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'transfer.label', default: 'Transfer'), params.id])
            redirect(action: "list")
            return
        }

        try {
            transferInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'transfer.label', default: 'Transfer'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'transfer.label', default: 'Transfer'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
