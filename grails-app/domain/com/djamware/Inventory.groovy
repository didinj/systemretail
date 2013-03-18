package com.djamware

class Inventory {

    static constraints = {
        plu()
        invreceive()
        invsales()
        invreturn()
        invexpired()
        invtransin()
        invtransout()
        minstock()
        maxstock()
        minorder()
        maxorder()
        invstock()
        lastreceive()
        lastsales()
        lastexpired()
        lasttransin()
        lasttransout()
    }
    String plu
    Integer invreceive
    Integer invsales
    Integer invreturn
    Integer invexpired
    Integer invtransin
    Integer invtransout
    Integer minstock
    Integer maxstock
    Integer minorder
    Integer maxorder
    Integer invstock
    Date lastreceive
    Date lastsales
    Date lastexpired
    Date lasttransin
    Date lasttransout
}
