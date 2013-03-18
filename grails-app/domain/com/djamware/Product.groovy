package com.djamware

class Product {

    static constraints = {
        plu(maxLength:6,blank:false)
        barcode(maxLength:20)
        brand(maxLength:40,blank:false)
        description(maxLength:40,blank:false)
        size(blank:false)
        unit(blank:false)
        cost(blank:false)
        price(blank:false)
        tax(blank:false)
        consigment(blank:false)
    }
    static searchable = true
    String plu
    String barcode
    String brand
    String description
    Integer size
    String unit
    Double cost
    Double price
    boolean tax
    boolean consigment
    Date createdate
    Date updatedate
    static belongsTo = [supplier:Supplier, dept:Dept]
    
    String toString() {
        plu+" - "+description
    }
}