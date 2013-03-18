package com.djamware

import org.springframework.dao.DataIntegrityViolationException

class DeptController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [deptInstanceList: Dept.list(params), deptInstanceTotal: Dept.count()]
    }

    def create() {
        [deptInstance: new Dept(params)]
    }

    def save() {
        def deptInstance = new Dept(params)
        if (!deptInstance.save(flush: true)) {
            render(view: "create", model: [deptInstance: deptInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'dept.label', default: 'Dept'), deptInstance.id])
        redirect(action: "show", id: deptInstance.id)
    }

    def show() {
        def deptInstance = Dept.get(params.id)
        if (!deptInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'dept.label', default: 'Dept'), params.id])
            redirect(action: "list")
            return
        }

        [deptInstance: deptInstance]
    }

    def edit() {
        def deptInstance = Dept.get(params.id)
        if (!deptInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'dept.label', default: 'Dept'), params.id])
            redirect(action: "list")
            return
        }

        [deptInstance: deptInstance]
    }

    def update() {
        def deptInstance = Dept.get(params.id)
        if (!deptInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'dept.label', default: 'Dept'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (deptInstance.version > version) {
                deptInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'dept.label', default: 'Dept')] as Object[],
                          "Another user has updated this Dept while you were editing")
                render(view: "edit", model: [deptInstance: deptInstance])
                return
            }
        }

        deptInstance.properties = params

        if (!deptInstance.save(flush: true)) {
            render(view: "edit", model: [deptInstance: deptInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'dept.label', default: 'Dept'), deptInstance.id])
        redirect(action: "show", id: deptInstance.id)
    }

    def delete() {
        def deptInstance = Dept.get(params.id)
        if (!deptInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'dept.label', default: 'Dept'), params.id])
            redirect(action: "list")
            return
        }

        try {
            deptInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'dept.label', default: 'Dept'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'dept.label', default: 'Dept'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
