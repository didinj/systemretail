package com.djamware

class SecUser {

    transient springSecurityService

    String username
    String password
    String fullname
    String departement
    boolean enabled
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired

    static constraints = {
        username(blank: false, unique: true)
        password(blank: false)
        fullname(blank:false)
        departement()
    }

    static mapping = {
        password column: '`password`'
    }

    Set<SecRole> getAuthorities() {
        SecUserSecRole.findAllBySecUser(this).collect { it.secRole } as Set
    }

    def beforeInsert() {
        encodePassword()
    }

    def beforeUpdate() {
        if (isDirty('password')) {
            encodePassword()
        }
    }

    protected void encodePassword() {
        password = springSecurityService.encodePassword(password)
    }
        
    String toString() {fullname}
}
