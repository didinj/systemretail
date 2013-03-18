package com.djamware



import org.junit.*
import grails.test.mixin.*

@TestFor(ReceiveController)
@Mock(Receive)
class ReceiveControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/receive/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.receiveInstanceList.size() == 0
        assert model.receiveInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.receiveInstance != null
    }

    void testSave() {
        controller.save()

        assert model.receiveInstance != null
        assert view == '/receive/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/receive/show/1'
        assert controller.flash.message != null
        assert Receive.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/receive/list'


        populateValidParams(params)
        def receive = new Receive(params)

        assert receive.save() != null

        params.id = receive.id

        def model = controller.show()

        assert model.receiveInstance == receive
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/receive/list'


        populateValidParams(params)
        def receive = new Receive(params)

        assert receive.save() != null

        params.id = receive.id

        def model = controller.edit()

        assert model.receiveInstance == receive
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/receive/list'

        response.reset()


        populateValidParams(params)
        def receive = new Receive(params)

        assert receive.save() != null

        // test invalid parameters in update
        params.id = receive.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/receive/edit"
        assert model.receiveInstance != null

        receive.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/receive/show/$receive.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        receive.clearErrors()

        populateValidParams(params)
        params.id = receive.id
        params.version = -1
        controller.update()

        assert view == "/receive/edit"
        assert model.receiveInstance != null
        assert model.receiveInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/receive/list'

        response.reset()

        populateValidParams(params)
        def receive = new Receive(params)

        assert receive.save() != null
        assert Receive.count() == 1

        params.id = receive.id

        controller.delete()

        assert Receive.count() == 0
        assert Receive.get(receive.id) == null
        assert response.redirectedUrl == '/receive/list'
    }
}
