//
//  Node.swift
//  Morse
//
//  Created by Jakub Krystek on 19.03.2017.
//  Copyright © 2017 Jakub Krystek. All rights reserved.
//

import Foundation

protocol NodeProtocl {
    func getLeaf() -> Leaf?
    func moveDown(_ isDot:Bool) -> NodeProtocl?
}

struct Node:NodeProtocl{
    var leaf:Leaf?
    
    var leftNode, rightNode:NodeProtocl?
    
    internal func moveDown(_ isDot: Bool) -> NodeProtocl? { /// YES - dot NO - dash
        
        if(isDot){
            
            return leftNode;
            
        }else{
            return rightNode;
        }
    }
    
    internal func getLeaf() -> Leaf? {
        return leaf;
    }
    
}
