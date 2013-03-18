package com.djamware

import org.springframework.dao.DataIntegrityViolationException

class ReturnsController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [returnsInstanceList: Returns.list(params), returnsInstanceTotal: Returns.count()]
    }

    def create() {
        [returnsInstance: new Returns(params)]
    }

    def save() {
        def returnsInstance = new Returns(params)
        if (!returnsInstance.save(flush: true)) {
            render(view: "create", model: [returnsInstance: returnsInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'returns.label', default: 'Returns'), returnsInstance.id])
        redirect(action: "show", id: returnsInstance.id)
    }

    def show() {
        def returnsInstance = Returns.get(params.id)
        if (!returnsInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'returns.label', default: 'Returns'), params.id])
            redirect(action: "list")
            return
        }

        [returnsInstance: returnsInstance]
    }

    def edit() {
        def returnsInstance = Returns.get(params.id)
        if (!returnsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'returns.label', default: 'Returns'), params.id])
            redirect(action: "list")
            return
        }

        [returnsInstance: returnsInstance]
    }

    def update() {
        def returnsInstance = Returns.get(params.id)
        if (!returnsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'returns.label', default: 'Returns'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (returnsInstance.version > version) {
                returnsInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'returns.label', default: 'Returns')] as Object[],
                          "Another user has updated this Returns while you were editing")
                render(view: "edit", model: [returnsInstance: returnsInstance])
                return
            }
        }

        returnsInstance.properties = params

        if (!returnsInstance.save(flush: true)) {
            render(view: "edit", model: [returnsInstance: returnsInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'returns.label', default: 'Returns'), returnsInstance.id])
        redirect(action: "show", id: returnsInstance.id)
    }

    def delete() {
        def returnsInstance = Returns.get(params.id)
        if (!returnsInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'returns.label', default: 'Returns'), params.id])
            redirect(action: "list")
            return
        }

        try {
            returnsInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'returns.label', default: 'Returns'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'returns.label', default: 'Returns'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
