//
//  VMSortableStack.swift
//  VMStack
//
//  Created by Varvara Myronova on 01.09.2020.
//  Copyright © 2020 Varvara Myronova. All rights reserved.
//

import UIKit

public extension VMSortableStack {
    enum kVMSortOrder {
        case ascending
        case descending
    }
}

private class VMComparableElement {
    var data : Double!
    var next : VMComparableElement?
    
    init(data: Double) {
        self.data = data
    }
}

public class VMSortableStack {
    //MARK: - Private
    private var peek : VMComparableElement?
    
    private func copy() -> VMSortableStack {
        let result = VMSortableStack()
        result.peek = peek
        
        return result
    }
    
    //MARK: - Public
    public var description: String {
        var text = "[top"
        var node = peek
        
        while node != nil {
            text += "\n\(node!.data ?? 0)"
            node = node!.next
            
            if node != nil {
                text += ","
            }
        }
        
        return text + "\nbottom]"
    }
    
    //Sortable stack elements must conform to protocol Comparable
    //Todo:
    // 1) accept type Any for an element
    // 2) check
    // - if an element's type conforms to protocol Comparable
    // - if an element's type is comparable with a peek's type (String vs Numeric)
    public func push(element: Double) {
        let next = peek
        peek = VMComparableElement(data: element)
        peek?.next = next
    }
    
    public func pop() -> Double? {
        let result = peek
        peek = result?.next
        
        return result?.data
    }
    
    public func topOfStack() -> Double? {
        return peek?.data
    }
    
    //MARK: - Sort
    public func sort(by order: kVMSortOrder) {
        let temporaryContainer = copy()
        peek = nil
        sort_recursion(stack: temporaryContainer, by: order)
    }
    
    public func isEmpty() -> Bool {
        return peek == nil
    }
    
    //MARK: - Sort Helpers
    private func sort_recursion(stack: VMSortableStack, by order: kVMSortOrder) {
        if !stack.isEmpty() {
            if let temp = stack.pop() {
                sortedInsert(by: order, stack: stack, element: temp)
                sort_recursion(stack: stack, by: order)
            }
        }
    }
    
    private func sortedInsert(by order : kVMSortOrder,
                                 stack : VMSortableStack,
                               element : Double)
    {
        if isEmpty() {
            push(element: element)
        } else if let peek = topOfStack(),
                  order == .ascending ?
                  element <= peek : element >= peek
        {
            push(element: element)
        } else {
            if let temp = pop() {
                stack.push(element: temp)
                sortedInsert(by: order, stack: stack, element: element)
            }
        }
    }
    
}
