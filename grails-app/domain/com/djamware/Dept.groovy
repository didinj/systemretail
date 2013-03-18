package com.djamware

class Dept {

    static constraints = {
    }
    static searchable = true
    Integer deptcode
    String deptdesc
    static belongsTo=[division:Division]
    static hasMany = [product:Product]
    
    def String toString() {
        return deptdesc
    }
}
