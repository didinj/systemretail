package com.djamware



import org.junit.*
import grails.test.mixin.*

@TestFor(PurchaseDetailController)
@Mock(PurchaseDetail)
class PurchaseDetailControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/purchaseDetail/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.purchaseDetailInstanceList.size() == 0
        assert model.purchaseDetailInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.purchaseDetailInstance != null
    }

    void testSave() {
        controller.save()

        assert model.purchaseDetailInstance != null
        assert view == '/purchaseDetail/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/purchaseDetail/show/1'
        assert controller.flash.message != null
        assert PurchaseDetail.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/purchaseDetail/list'


        populateValidParams(params)
        def purchaseDetail = new PurchaseDetail(params)

        assert purchaseDetail.save() != null

        params.id = purchaseDetail.id

        def model = controller.show()

        assert model.purchaseDetailInstance == purchaseDetail
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/purchaseDetail/list'


        populateValidParams(params)
        def purchaseDetail = new PurchaseDetail(params)

        assert purchaseDetail.save() != null

        params.id = purchaseDetail.id

        def model = controller.edit()

        assert model.purchaseDetailInstance == purchaseDetail
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/purchaseDetail/list'

        response.reset()


        populateValidParams(params)
        def purchaseDetail = new PurchaseDetail(params)

        assert purchaseDetail.save() != null

        // test invalid parameters in update
        params.id = purchaseDetail.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/purchaseDetail/edit"
        assert model.purchaseDetailInstance != null

        purchaseDetail.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/purchaseDetail/show/$purchaseDetail.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        purchaseDetail.clearErrors()

        populateValidParams(params)
        params.id = purchaseDetail.id
        params.version = -1
        controller.update()

        assert view == "/purchaseDetail/edit"
        assert model.purchaseDetailInstance != null
        assert model.purchaseDetailInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/purchaseDetail/list'

        response.reset()

        populateValidParams(params)
        def purchaseDetail = new PurchaseDetail(params)

        assert purchaseDetail.save() != null
        assert PurchaseDetail.count() == 1

        params.id = purchaseDetail.id

        controller.delete()

        assert PurchaseDetail.count() == 0
        assert PurchaseDetail.get(purchaseDetail.id) == null
        assert response.redirectedUrl == '/purchaseDetail/list'
    }
}
