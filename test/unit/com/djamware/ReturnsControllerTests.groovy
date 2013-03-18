package com.djamware



import org.junit.*
import grails.test.mixin.*

@TestFor(ReturnsController)
@Mock(Returns)
class ReturnsControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/returns/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.returnsInstanceList.size() == 0
        assert model.returnsInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.returnsInstance != null
    }

    void testSave() {
        controller.save()

        assert model.returnsInstance != null
        assert view == '/returns/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/returns/show/1'
        assert controller.flash.message != null
        assert Returns.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/returns/list'


        populateValidParams(params)
        def returns = new Returns(params)

        assert returns.save() != null

        params.id = returns.id

        def model = controller.show()

        assert model.returnsInstance == returns
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/returns/list'


        populateValidParams(params)
        def returns = new Returns(params)

        assert returns.save() != null

        params.id = returns.id

        def model = controller.edit()

        assert model.returnsInstance == returns
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/returns/list'

        response.reset()


        populateValidParams(params)
        def returns = new Returns(params)

        assert returns.save() != null

        // test invalid parameters in update
        params.id = returns.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/returns/edit"
        assert model.returnsInstance != null

        returns.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/returns/show/$returns.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        returns.clearErrors()

        populateValidParams(params)
        params.id = returns.id
        params.version = -1
        controller.update()

        assert view == "/returns/edit"
        assert model.returnsInstance != null
        assert model.returnsInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/returns/list'

        response.reset()

        populateValidParams(params)
        def returns = new Returns(params)

        assert returns.save() != null
        assert Returns.count() == 1

        params.id = returns.id

        controller.delete()

        assert Returns.count() == 0
        assert Returns.get(returns.id) == null
        assert response.redirectedUrl == '/returns/list'
    }
}
