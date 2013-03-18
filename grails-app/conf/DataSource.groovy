dataSource {
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update"
            driverClassName = "com.mysql.jdbc.Driver"
            url = "jdbc:mysql://localhost/retailsystem"
            username = "root"
            password = "1234567"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:mem:testDb;MVCC=TRUE"
        }
    }
    production {
        dataSource {
            dialect= org.hibernate.dialect.MySQLInnoDBDialect
            driverClassName = "com.mysql.jdbc.Driver"
            username = "n/a"
            password = "n/a"
            url = "n/a"
            dbCreate = "update"
        }
    }
}
