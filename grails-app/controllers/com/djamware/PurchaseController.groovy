package com.djamware

import org.springframework.dao.DataIntegrityViolationException
import grails.converters.JSON

class PurchaseController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [purchaseInstanceList: Purchase.list(params), purchaseInstanceTotal: Purchase.count()]
    }
    
    def productList = {
        def productInstanceList = Product.withCriteria {
            eq('supplier.id', Long.parseLong(params.id))
        }
        render productInstanceList as JSON
    }

    def create() {
        [purchaseInstance: new Purchase(params)]
    }

    def save() {
        def purchaseInstance = new Purchase(params)
        def i=0
        while(params."purdet.${i}.plu") { 
            println(params."purdet.${i}.discpercent")
            purchaseInstance.addToPurchaseDetail([plu:params."purdet.${i}.plu",description:params."purdet.${i}.description",cost:params."purdet.${i}.cost",qty:params."purdet.${i}.qty",discpercent:params."purdet.${i}.discpercent",discamount:params."purdet.${i}.discamount",tcost:params."purdet.${i}.tcost"])
            //new PurchaseDetail(purchase:purchaseInstance.id,plu:params."purdet.${i}.plu",description:params."purdet.${i}.description",qty:params."purdet.${i}.qty",cost:params."purdet.${i}.cost",tcost:params."purdet.${i}.tcost").save(flush: true)
            i++
        }
        if (!purchaseInstance.save(flush: true)) {
            render(view: "create", model: [purchaseInstance: purchaseInstance])
            return
        }
        
        flash.message = message(code: 'default.created.message', args: [message(code: 'purchase.label', default: 'Purchase'), purchaseInstance.id])
        redirect(action: "show", id: purchaseInstance.id)
    }

    def show() {
        def purchaseInstance = Purchase.get(params.id)
        if (!purchaseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchase.label', default: 'Purchase'), params.id])
            redirect(action: "list")
            return
        }

        [purchaseInstance: purchaseInstance]
    }

    def edit() {
        def purchaseInstance = Purchase.get(params.id)
        if (!purchaseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchase.label', default: 'Purchase'), params.id])
            redirect(action: "list")
            return
        }

        [purchaseInstance: purchaseInstance]
    }

    def update() {
        def purchaseInstance = Purchase.get(params.id)
        if (!purchaseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchase.label', default: 'Purchase'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (purchaseInstance.version > version) {
                purchaseInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                    [message(code: 'purchase.label', default: 'Purchase')] as Object[],
                          "Another user has updated this Purchase while you were editing")
                render(view: "edit", model: [purchaseInstance: purchaseInstance])
                return
            }
        }

        purchaseInstance.properties = params

        if (!purchaseInstance.save(flush: true)) {
            render(view: "edit", model: [purchaseInstance: purchaseInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'purchase.label', default: 'Purchase'), purchaseInstance.id])
        redirect(action: "show", id: purchaseInstance.id)
    }

    def delete() {
        def purchaseInstance = Purchase.get(params.id)
        if (!purchaseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchase.label', default: 'Purchase'), params.id])
            redirect(action: "list")
            return
        }

        try {
            purchaseInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'purchase.label', default: 'Purchase'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'purchase.label', default: 'Purchase'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
