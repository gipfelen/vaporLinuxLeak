import Vapor

final class Testing123: Content{
    var name: Int = 1
    var name1: Int = 2
    var name2: Int = 3
    var name3: Int = 4
    
    init(name: Int){
        self.name=name
    }
}

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> EventLoopFuture<[Testing123]> in
        var array: [Testing123] = []
        
        for i in 0...600000{
            let testing = Testing123(name: i)
            
            array.append(testing)
        }
                
        return req.eventLoop.makeSucceededFuture(array)
    }
}
