package com.djamware

class Receive {

    static constraints = {
        plu()
        orderqty()
        receiveqty()
        orderdate()
        receivedate()
        userid()
    }
    
    String plu
    String orderqty
    String receiveqty
    Date orderdate
    Date receivedate
    String userid
}
