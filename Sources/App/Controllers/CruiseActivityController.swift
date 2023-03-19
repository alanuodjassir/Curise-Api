//
//  File.swift
//  
//
//  Created by gyda almohaimeed on 27/08/1444 AH.
//


import Vapor

struct CruiseActivityController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let cruiseActivity = routes.grouped("cruiseactivity")
        cruiseActivity.get(use: index)
        cruiseActivity.post(use: create)
        cruiseActivity.group(":cruiseactivityID") { todo in
            cruiseActivity.delete(use: delete)
        }
    }

    // READ - GET
    func index(req: Request) async throws -> [CruiseActivity] {
        try await CruiseActivity.query(on: req.db).all()
    }

    // CREATE - POST
    func create(req: Request) async throws -> CruiseActivity {
        let cruiseActivity = try req.content.decode(CruiseActivity.self)
        try await cruiseActivity.save(on: req.db)
        return cruiseActivity
    }
    
    
    // UPDATE - PUT
    func update(req: Request) throws -> EventLoopFuture<HTTPStatus> {
        let cruiseActivity = try req.content.decode(CruiseActivity.self)
        
        return CruiseActivity.find(cruiseActivity.id, on: req.db)
            .unwrap(or: Abort(.notFound))
            .flatMap {
                $0.nameOfEvent = cruiseActivity.nameOfEvent
                $0.locationOfEvent = cruiseActivity.locationOfEvent
                $0.Time_from_to = cruiseActivity.Time_from_to
                $0.cost = cruiseActivity.cost
                $0.Offers = cruiseActivity.Offers
                return $0.update(on: req.db).transform(to: .ok)
            }
    }
    
    // DELETE - DELETE
    func delete(req: Request) async throws -> HTTPStatus {
        guard let cruiseActivity = try await CruiseActivity.find(req.parameters.get("cruiseactivityID"), on: req.db) else {
            throw Abort(.notFound)
        }
        try await cruiseActivity.delete(on: req.db)
        return .noContent
    }
}
