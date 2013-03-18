package com.djamware

class Purchase {

    static constraints = {
        supplier()
        purchaseDetail()
        tbuycost()
        tdiscount()
        grandtotal()
        tax()
        status()
        userid()
        notes()
        createdate(nullable:true)
        confirmdate(nullable:true)
        updatedate(nullable:true)
    }
    static searchable = true
    static belongsTo = [supplier:Supplier]
    static hasMany = [purchaseDetail:PurchaseDetail]
    Double tbuycost
    Double tdiscount
    Double grandtotal
    boolean tax
    Date createdate
    Date confirmdate
    Date updatedate
    String status
    String notes
    String userid
    
    def String toString() {
        return supplier.suppliercode
    }
    
    def beforeInsert() {
        createdate = new Date()
        status = "created"
    }
    
    def beforeUpdate() {
        updatedate = new Date()
    }
}