package com.djamware

import org.springframework.dao.DataIntegrityViolationException

class ReceiveController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [receiveInstanceList: Receive.list(params), receiveInstanceTotal: Receive.count()]
    }

    def create() {
        [receiveInstance: new Receive(params)]
    }

    def save() {
        def receiveInstance = new Receive(params)
        if (!receiveInstance.save(flush: true)) {
            render(view: "create", model: [receiveInstance: receiveInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'receive.label', default: 'Receive'), receiveInstance.id])
        redirect(action: "show", id: receiveInstance.id)
    }

    def show() {
        def receiveInstance = Receive.get(params.id)
        if (!receiveInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'receive.label', default: 'Receive'), params.id])
            redirect(action: "list")
            return
        }

        [receiveInstance: receiveInstance]
    }

    def edit() {
        def receiveInstance = Receive.get(params.id)
        if (!receiveInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'receive.label', default: 'Receive'), params.id])
            redirect(action: "list")
            return
        }

        [receiveInstance: receiveInstance]
    }

    def update() {
        def receiveInstance = Receive.get(params.id)
        if (!receiveInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'receive.label', default: 'Receive'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (receiveInstance.version > version) {
                receiveInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'receive.label', default: 'Receive')] as Object[],
                          "Another user has updated this Receive while you were editing")
                render(view: "edit", model: [receiveInstance: receiveInstance])
                return
            }
        }

        receiveInstance.properties = params

        if (!receiveInstance.save(flush: true)) {
            render(view: "edit", model: [receiveInstance: receiveInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'receive.label', default: 'Receive'), receiveInstance.id])
        redirect(action: "show", id: receiveInstance.id)
    }

    def delete() {
        def receiveInstance = Receive.get(params.id)
        if (!receiveInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'receive.label', default: 'Receive'), params.id])
            redirect(action: "list")
            return
        }

        try {
            receiveInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'receive.label', default: 'Receive'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'receive.label', default: 'Receive'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
