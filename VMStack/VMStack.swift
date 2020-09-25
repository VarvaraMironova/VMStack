//
//  VMStack.swift
//  VMStack
//
//  Created by Varvara Myronova on 11.08.2020.
//  Copyright © 2020 Varvara Myronova. All rights reserved.
//

import Foundation

//Class is used to keep reference to itself (attribute next)
private class VMStackElement: Any {
    var data : Any!
    var next : VMStackElement?
    
    init(data: Any) {
        self.data = data
    }
}

//linked list implementation
public class VMStack {
    //MARK: - Private
    private var peek : VMStackElement?
    
    //MARK: - Public
    public var description: String {
        var text = "["
        var node = peek
        
        while node != nil {
            text += "\n\(node!.data ?? 0)"
            node = node!.next
            
            if node != nil {
                text += ","
            }
        }
        
        return text + "\n]"
    }
    
    public init() {}
    
    public func push(element: Any) {
        let next = peek
        peek = VMStackElement(data: element)
        peek?.next = next
    }
    
    public func pop() -> Any? {
        let result = peek
        peek = result?.next
        
        return result?.data
    }
    
    public func topOfStack() -> Any? {
        return peek?.data
    }
    

}
