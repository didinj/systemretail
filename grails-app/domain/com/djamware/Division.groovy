package com.djamware

class Division {

    static constraints = {
        divcode()
        divdesc()
        dept()
    }
    static searchable = true
    String divcode
    String divdesc
    static hasMany=[dept:Dept]
    
    def String toString() {
        return divdesc
    }
}
