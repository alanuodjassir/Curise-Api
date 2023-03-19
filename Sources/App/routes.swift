import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }

//    try app.register(collection: TodoController())
}
//app.get("cruiseinfo") { req -> EventLoopFuture<[CruiseInfo]> in
//    CruiseInfo.query(on: req.db).all()
