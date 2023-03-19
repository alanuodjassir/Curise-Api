import Fluent
import FluentPostgresDriver
import Vapor


// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    
    //PostgeSQL Config
    app.databases.use(
        .postgres(hostname: "localhost",
                  username: "alanoud",
                  password: "",
                  database: "cruisedb"),
        as: .psql)
    
    
   app.migrations.add(CruiseInfoTabel())
    app.migrations.add(CruiseActivityTabel())
    
    // register routes
    try routes(app)
    
    try app.autoMigrate().wait()
    
    
}

