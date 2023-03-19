import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }

    try app.register(collection: CruiseInfoController())
    try app.register(collection: CruiseActivityController())
 
    
}

//app.get("cruiseinfo") { req -> EventLoopFuture<[CruiseInfo]> in
//    CruiseInfo.query(on: req.db).all()
