package com.djamware

class Returns {

    static constraints = {
        suppliercode()
        plu()
        returndate()
        returnqty()
        price()
        returntprice()
        returnreason()
        userid()
    }
    String suppliercode
    String plu
    Date returndate
    Integer returnqty
    Double price
    Double returntprice
    String returnreason
    String userid
}
