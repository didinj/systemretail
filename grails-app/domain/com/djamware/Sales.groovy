package com.djamware

class Sales {

    static constraints = {
        plu()
        storenbr()
        posnbr()
        shift()
        userid()
        trndate()
        trntime()
        salesqty()
        price()
        tprice()
        discount()
        tax()
        grossales()
        nettsales()
    }
    
    String plu
    String storenbr
    String posnbr
    Integer shift
    String trndate
    String trntime
    Integer salesqty
    Double price
    Double tprice
    Double discount
    Double tax
    Double grossales
    Double nettsales
    String userid
}
