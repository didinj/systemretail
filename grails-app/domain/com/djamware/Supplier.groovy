package com.djamware

class Supplier {

    static constraints = {
        suppliercode(maxLength:4,blank:false)
        suppliername(maxLength:40,blank:false)
        supplieraddress(maxLength:255,blank:false)
        suppliercity(maxLength:40,blank:false)
        supplierpos(maxLength:6,blank:false)
        supplierphone(maxLength:20,blank:false)
        supplieraccountnbr(maxLength:20,blank:false)
        supplierbankname(maxLength:40,blank:false)
        supplieraccountname(maxLength:40,blank:false)
        product()
    }
    static searchable = true
    String suppliercode
    String suppliername
    String supplieraddress
    String suppliercity
    String supplierpos
    String supplierphone
    String supplieraccountnbr
    String supplierbankname
    String supplieraccountname
    static hasMany = [product:Product,purchase:Purchase]
    //static mappedBy = [product:"plu"]
    
    String toString() {
        suppliercode+" - "+suppliername
    }
}
