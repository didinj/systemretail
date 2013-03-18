package com.djamware

import org.springframework.dao.DataIntegrityViolationException

class PurchaseDetailController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [purchaseDetailInstanceList: PurchaseDetail.list(params), purchaseDetailInstanceTotal: PurchaseDetail.count()]
    }

    def create() {
        [purchaseDetailInstance: new PurchaseDetail(params)]
    }

    def save() {
        def purchaseDetailInstance = new PurchaseDetail(params)
        if (!purchaseDetailInstance.save(flush: true)) {
            render(view: "create", model: [purchaseDetailInstance: purchaseDetailInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'purchaseDetail.label', default: 'PurchaseDetail'), purchaseDetailInstance.id])
        redirect(action: "show", id: purchaseDetailInstance.id)
    }

    def show() {
        def purchaseDetailInstance = PurchaseDetail.get(params.id)
        if (!purchaseDetailInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseDetail.label', default: 'PurchaseDetail'), params.id])
            redirect(action: "list")
            return
        }

        [purchaseDetailInstance: purchaseDetailInstance]
    }

    def edit() {
        def purchaseDetailInstance = PurchaseDetail.get(params.id)
        if (!purchaseDetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseDetail.label', default: 'PurchaseDetail'), params.id])
            redirect(action: "list")
            return
        }

        [purchaseDetailInstance: purchaseDetailInstance]
    }

    def update() {
        def purchaseDetailInstance = PurchaseDetail.get(params.id)
        if (!purchaseDetailInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseDetail.label', default: 'PurchaseDetail'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (purchaseDetailInstance.version > version) {
                purchaseDetailInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'purchaseDetail.label', default: 'PurchaseDetail')] as Object[],
                          "Another user has updated this PurchaseDetail while you were editing")
                render(view: "edit", model: [purchaseDetailInstance: purchaseDetailInstance])
                return
            }
        }

        purchaseDetailInstance.properties = params

        if (!purchaseDetailInstance.save(flush: true)) {
            render(view: "edit", model: [purchaseDetailInstance: purchaseDetailInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'purchaseDetail.label', default: 'PurchaseDetail'), purchaseDetailInstance.id])
        redirect(action: "show", id: purchaseDetailInstance.id)
    }

    def delete() {
        def purchaseDetailInstance = PurchaseDetail.get(params.id)
        if (!purchaseDetailInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseDetail.label', default: 'PurchaseDetail'), params.id])
            redirect(action: "list")
            return
        }

        try {
            purchaseDetailInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'purchaseDetail.label', default: 'PurchaseDetail'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'purchaseDetail.label', default: 'PurchaseDetail'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
