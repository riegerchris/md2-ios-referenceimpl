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

/**
    A REST client for backend communication.
    
    For now, only JSON requests are supported.
*/
class MD2RestClient: NSObject {
    
	/// Alias as simplification for responses
    typealias ServiceResponse = (JSON, NSError?) -> Void
    
	/// Singleton instance of the REST client
    static let instance = MD2RestClient()
    
    /// Private initializer for the singleton instance
    private init() {
        // Nothing to initialize
    }
    
    /**
        Send an asnychronous GET request to the given path.
        
        :param: path The full URL of the requested resource.
        :param: onCompletion The callback fuction to call after completing the request.
    */
    func makeHTTPGetRequest(path: String, onCompletion: ServiceResponse) {
        let request = NSMutableURLRequest(URL: NSURL(string: path)!)
        
        let session = NSURLSession.sharedSession()
            
        let task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
            let json:JSON = JSON(data: data)
            onCompletion(json, error)
        })
        task.resume()
    }
    
    /**
        Send a snychronous GET request to the given path.
        
        *Notice* SendSynchronousRequest function will not be available in Swift2. Options:
        1) Modify reference architecture to allow asynchronous calls (recommended to also avoid blocking the main thread!)
        2) Use workarounds like MD2Util.syncFromAsync()
		
        :param: path The full URL of the requested resource.

        :returns: The JSON response or null if no response.
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
    
    /**
        Send an asnychronous POST request to the given path.
        
        :param: path The full URL of the requested resource.
        :param: body A key-value array which will be encoded as JSON and passed as request body.
        :param: onCompletion The callback fuction to call after completing the request.
    */
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
   
    /**
        Send an asnychronous PUT request to the given path.
        
        :param: path The full URL of the requested resource.
        :param: body A key-value array which will be encoded as JSON and passed as request body.
        :param: onCompletion The callback fuction to call after completing the request.
    */
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

    /**
        Send an asnychronous DELETE request to the given path.
        
        :param: path The full URL of the requested resource.
        :param: body A key-value array which will be encoded as JSON and passed as request body.
        :param: onCompletion The callback fuction to call after completing the request.
    */
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
    
    /**
        Test whether the model version of the app is supported by the backend server.
        
        Needs to be checked on startup of the app if there are remote content providers.
        
        :param: version The version of the app model
        :param: basePath The base path of the remote server

        :returns: Whether the model version is supported by the backend server or not.
    */
    func testModelVersion(version: String, basePath: String) -> Bool {
        let result = makeHTTPGetRequestSync(basePath + "md2_model_version/is_valid?version=" + version)
        
        println("The model version was checked for validity: " + result["isValid"].stringValue)
        return result["isValid"].bool == true
    }
}
