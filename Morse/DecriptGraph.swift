//
//  DecriptGraph.swift
//  Morse
//
//  Created by Jakub Krystek on 19.03.2017.
//  Copyright © 2017 Jakub Krystek. All rights reserved.
//

import Foundation

class Tree: NSObject {
    
    var startNode:Node?
    
    static let sharedInstance = Tree()// singleton
    
    override init() {
        super.init()
        self.creatTree()
    }
    
    
    func decriptString(morseString:String) -> String {
        
        var currentNode = self.startNode!
        
        
        for char in morseString.characters {
            
            if(char == "."){
                guard let node = currentNode.moveDown(true) else {return ""}
                if(node is Node){
                    currentNode = node as! Node}
                else{
                    return ""}
            }else{
                
                guard let node = currentNode.moveDown(false) else {return ""}
                
                if(node is Node){
                    currentNode = node as! Node}else
                {return ""}
            }
        }
        
        guard let leaf = currentNode.getLeaf() else {return ""}
        
    print("value === \(leaf.storedValue)")
    return leaf.storedValue}
    
    
    
    
    
    
    
 fileprivate  func creatTree() -> Void {
         let aLetter = Leaf(storedValue: "a")
         let bLetter = Leaf(storedValue: "b")
         let cLetter = Leaf(storedValue: "c")
         let dLetter = Leaf(storedValue: "d")
         let eLetter = Leaf(storedValue: "e")
         let fLetter = Leaf(storedValue: "f")
         let gLetter = Leaf(storedValue: "g")
         let hLetter = Leaf(storedValue: "h")
         let iLetter = Leaf(storedValue: "i")
         let jLetter = Leaf(storedValue: "j")
         let kLetter = Leaf(storedValue: "k")
         let lLetter = Leaf(storedValue: "l")
         let mLetter = Leaf(storedValue: "m")
         let nLetter = Leaf(storedValue: "n")
         let oLetter = Leaf(storedValue: "o")
         let pLetter = Leaf(storedValue: "p")
         let qLetter = Leaf(storedValue: "q")
         let rLetter = Leaf(storedValue: "r")
         let sLetter = Leaf(storedValue: "s")
         let tLetter = Leaf(storedValue: "t")
         let uLetter = Leaf(storedValue: "u")
         let vLetter = Leaf(storedValue: "v")
         let wLetter = Leaf(storedValue: "w")
         let xLetter = Leaf(storedValue: "x")
         let yLetter = Leaf(storedValue: "y")
         let zLetter = Leaf(storedValue: "z")
        
        
        let _1Number = Leaf(storedValue: "1")
        let _2Number = Leaf(storedValue: "2")
        let _3Number = Leaf(storedValue: "3")
        let _4Number = Leaf(storedValue: "4")
        let _5Number = Leaf(storedValue: "5")
        let _6Number = Leaf(storedValue: "6")
        let _7Number = Leaf(storedValue: "7")
        let _8Number = Leaf(storedValue: "8")
        let _9Number = Leaf(storedValue: "9")
        let _0Number = Leaf(storedValue: "0")

        /// left side of tree
        let node5 = Node(leaf: _5Number,leftNode: nil,rightNode: nil)
        let node4 = Node(leaf: _4Number,leftNode: nil,rightNode: nil)
        let nodeL = Node(leaf: lLetter, leftNode: nil, rightNode: nil)
        let nodeF = Node(leaf: fLetter, leftNode: nil, rightNode: nil)
        let node2 = Node(leaf: _2Number, leftNode: nil, rightNode: nil)
        let node3 = Node(leaf: _3Number, leftNode: nil, rightNode: nil)
        let nodeP = Node(leaf: pLetter, leftNode: nil, rightNode: nil)
        let node1 = Node(leaf: _1Number, leftNode: nil, rightNode: nil)


        let nodeH = Node(leaf: hLetter, leftNode: node5, rightNode: node4)
        
        let nodeV = Node(leaf: vLetter, leftNode: nil, rightNode: node3)
        
        let nodeS = Node(leaf: sLetter, leftNode: nodeH, rightNode: nodeV)
        
        let nodeUmlaut = Node(leaf: nil, leftNode: nil, rightNode: node2)
        let nodeU = Node(leaf: uLetter, leftNode: nodeF, rightNode: nodeUmlaut)
        
        let nodeI = Node(leaf: iLetter, leftNode: nodeS, rightNode: nodeU)
        
        let nodeR = Node(leaf: rLetter, leftNode: nodeL, rightNode: nil)
        let nodeJ = Node(leaf: jLetter, leftNode: nil, rightNode: node1)
        let nodeW = Node(leaf: wLetter, leftNode: nodeP, rightNode: nodeJ)
        let nodeA = Node(leaf: aLetter, leftNode: nodeR, rightNode: nodeW)
        let nodeE = Node(leaf: eLetter, leftNode: nodeI, rightNode: nodeA)
        
    
        /// Right side of tree
  
        let node6 = Node(leaf: _6Number, leftNode: nil, rightNode: nil)
        let nodeX = Node(leaf: xLetter, leftNode: nil, rightNode: nil)
        let nodeC = Node(leaf: cLetter, leftNode: nil, rightNode: nil)
        let nodeY = Node(leaf: yLetter, leftNode: nil, rightNode: nil)
        let node8 = Node(leaf: _8Number, leftNode: nil, rightNode: nil)
        let nodeQ = Node(leaf: qLetter, leftNode: nil, rightNode: nil)
        let node7 = Node(leaf: _7Number, leftNode: nil, rightNode: nil)
        let node9 = Node(leaf: _9Number, leftNode: nil, rightNode: nil)
        let node0 = Node(leaf: _0Number, leftNode: nil, rightNode: nil)


        let nodeB = Node(leaf: bLetter, leftNode: node6, rightNode: nil)
        let nodeD = Node(leaf: dLetter, leftNode: nodeB, rightNode: nodeX)
        
        
        let nodeK = Node(leaf: kLetter, leftNode: nodeC, rightNode: nodeY)
        let nodeN = Node(leaf: nLetter, leftNode: nodeD, rightNode: nodeK)
        
        let nodeZ = Node(leaf: zLetter, leftNode: node7, rightNode: nil)
        let nodeG = Node(leaf: gLetter, leftNode: nodeZ, rightNode: nodeQ)
        
        let nodeOuml = Node(leaf: nil, leftNode: node8, rightNode: nil)
        
        let nodeCH = Node(leaf: nil, leftNode: node9, rightNode: node0)
        let nodeO = Node(leaf: oLetter, leftNode: nodeOuml, rightNode: nodeCH)
        
        let nodeM = Node(leaf: mLetter, leftNode: nodeG, rightNode: nodeO)
        let nodeT = Node(leaf: tLetter, leftNode: nodeN, rightNode: nodeM)
        
        
    /// init node
    self.startNode = Node(leaf: nil, leftNode: nodeE, rightNode: nodeT)
    }
    
}
