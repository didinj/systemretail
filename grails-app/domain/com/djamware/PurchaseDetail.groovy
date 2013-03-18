package com.djamware

class PurchaseDetail {

    static constraints = {
        purchase()
        plu()
        description()
        qty()
        cost()
        discpercent()
        discamount()
        tcost()
    }
    
    static belongsTo = [purchase:Purchase]
    String plu
    String description
    Integer qty
    Double cost
    Float discpercent
    Double discamount
    Double tcost
    
    String toString() {
        "PLU: "+plu+", Description: "+description+", Cost: "+cost+", Qty: "+qty+", Total Cost: "+tcost
    }
}
