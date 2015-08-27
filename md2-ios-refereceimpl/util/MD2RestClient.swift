//
//  MD2RestClient.swift
//  md2-ios-refereceimpl
//
//  Created by Christoph Rieger on 27.08.15.
//  Copyright (c) 2015 Christoph Rieger. All rights reserved.
//
//  Based on http://devdactic.com/rest-api-parse-json-swift/
//

import Foundation

class MD2RestClient: NSObject {
    
    typealias ServiceResponse = (JSON, NSError?) -> Void
    
    static let instance = MD2RestClient()
        
    static var baseURL = "http://api.randomuser.me/"
        
    func getRandomUser(onCompletion: (JSON) -> Void) {
        let route = MD2RestClient.baseURL
        makeHTTPGetRequest(route, onCompletion: { json, err in
            onCompletion(json as JSON)
        })
    }
    
    func makeHTTPGetRequest(path: String, onCompletion: ServiceResponse) {
        let request = NSMutableURLRequest(URL: NSURL(string: path)!)
        
        let session = NSURLSession.sharedSession()
            
        let task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
            let json:JSON = JSON(data: data)
            onCompletion(json, error)
        })
        task.resume()
    }
    
    /* MARK SendSynchronousRequest will not be available in Swift2. Options:
        1) Modify reference architecture to represent asynchronous calls (recommended to stop blocking the main thread!)
        2) Use workarounds like MD2Util.syncFromAsync()
    */
    func makeHTTPGetRequestSync(path: String) -> JSON {
        let request = NSURLRequest(URL: NSURL(string: path)!)
        
        var response: NSURLResponse?
        var error: NSError?
        let urlData = NSURLConnection.sendSynchronousRequest(request, returningResponse: &response, error: &error)
        
        if let httpResponse = response as? NSHTTPURLResponse {
            println(httpResponse.statusCode)
        }
        
        return JSON(data: urlData!)
    }
    
    func makeHTTPPostRequest(path: String, body: [String: AnyObject], onCompletion: ServiceResponse) {
        var err: NSError?
        let request = NSMutableURLRequest(URL: NSURL(string: path)!)
        
        request.HTTPMethod = "POST"
        
        // Set the POST body for the request
        request.HTTPBody = NSJSONSerialization.dataWithJSONObject(body, options: nil, error: &err)
        let session = NSURLSession.sharedSession()
        
        let task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
            let json:JSON = JSON(data: data)
            onCompletion(json, err)
        })
        task.resume()
    }
    
    func makeHTTPPutRequest(path: String, body: Dictionary<String, AnyObject>, onCompletion: ServiceResponse) {
        var err: NSError?
        let request = NSMutableURLRequest(URL: NSURL(string: path)!)
        
        request.HTTPMethod = "PUT"
        
        // Set the PUT body for the request
        request.HTTPBody = NSJSONSerialization.dataWithJSONObject(body, options: nil, error: &err)
        let session = NSURLSession.sharedSession()
        
        let task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
            let json:JSON = JSON(data: data)
            onCompletion(json, err)
        })
        task.resume()
    }
    
    func makeHTTPDeleteRequest(path: String, body: [String: AnyObject], onCompletion: ServiceResponse) {
        var err: NSError?
        let request = NSMutableURLRequest(URL: NSURL(string: path)!)
        
        request.HTTPMethod = "DEL"
        
        // Set the POST body for the request
        request.HTTPBody = NSJSONSerialization.dataWithJSONObject(body, options: nil, error: &err)
        let session = NSURLSession.sharedSession()
        
        let task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
            let json:JSON = JSON(data: data)
            onCompletion(json, err)
        })
        task.resume()
    }
}