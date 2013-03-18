package com.djamware

class Transfer {

    static constraints = {
        plu()
        tansferdate()
        transferqty()
        transferfrom()
        transferto()
        transferprice()
        transfertprice()
    }
    
    String plu
    Date tansferdate
    Integer transferqty
    String transferfrom
    String transferto
    Double transferprice
    Double transfertprice
    String userid
}
