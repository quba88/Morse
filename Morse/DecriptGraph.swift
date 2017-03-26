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
        
    return leaf.storedValue}
    
    
    
    
    
    
 fileprivate  func creatTree() -> Void {
    
         let aLetter             = Leaf(storedValue: "a")
         let bLetter             = Leaf(storedValue: "b")
         let cLetter             = Leaf(storedValue: "c")
         let dLetter             = Leaf(storedValue: "d")
         let eLetter             = Leaf(storedValue: "e")
         let fLetter             = Leaf(storedValue: "f")
         let gLetter             = Leaf(storedValue: "g")
         let hLetter             = Leaf(storedValue: "h")
         let iLetter             = Leaf(storedValue: "i")
         let jLetter             = Leaf(storedValue: "j")
         let kLetter             = Leaf(storedValue: "k")
         let lLetter             = Leaf(storedValue: "l")
         let mLetter             = Leaf(storedValue: "m")
         let nLetter             = Leaf(storedValue: "n")
         let oLetter             = Leaf(storedValue: "o")
         let pLetter             = Leaf(storedValue: "p")
         let qLetter             = Leaf(storedValue: "q")
         let rLetter             = Leaf(storedValue: "r")
         let sLetter             = Leaf(storedValue: "s")
         let tLetter             = Leaf(storedValue: "t")
         let uLetter             = Leaf(storedValue: "u")
         let vLetter             = Leaf(storedValue: "v")
         let wLetter             = Leaf(storedValue: "w")
         let xLetter             = Leaf(storedValue: "x")
         let yLetter             = Leaf(storedValue: "y")
         let zLetter             = Leaf(storedValue: "z")

         let _aLetter             = Leaf(storedValue: "ą")
         let _cLetter             = Leaf(storedValue: "ć")
         let _eLetter             = Leaf(storedValue: "ę")
         let chLetter             = Leaf(storedValue: "ch")
         let _lLetter             = Leaf(storedValue: "ł")
         let _nLetter             = Leaf(storedValue: "ń")
         let _oLetter             = Leaf(storedValue: "ó")
         let _sLetter             = Leaf(storedValue: "ś")
         let _zLetter             = Leaf(storedValue: "ż")
         let z_Letter             = Leaf(storedValue: "ź")
    
        
        let _1Number             = Leaf(storedValue: "1")
        let _2Number             = Leaf(storedValue: "2")
        let _3Number             = Leaf(storedValue: "3")
        let _4Number             = Leaf(storedValue: "4")
        let _5Number             = Leaf(storedValue: "5")
        let _6Number             = Leaf(storedValue: "6")
        let _7Number             = Leaf(storedValue: "7")
        let _8Number             = Leaf(storedValue: "8")
        let _9Number             = Leaf(storedValue: "9")
        let _0Number             = Leaf(storedValue: "0")

    
        let dotSigns             = Leaf(storedValue:".")
        let commaSigns           = Leaf(storedValue:",")
        let sApostropheSigns     = Leaf(storedValue:"'")
        let apostropheSigns      = Leaf(storedValue:"\"")
        let _Signs               = Leaf(storedValue:"_")
        let colonSigns           = Leaf(storedValue:":")
        let semicolonSigns       = Leaf(storedValue:";")
        let qMarkSigns           = Leaf(storedValue:"?")
        let eMarkSigns           = Leaf(storedValue:"!")
        let dashSigns            = Leaf(storedValue:"-")
        let plusSigns            = Leaf(storedValue:"+")
        let rhombSigns           = Leaf(storedValue:"/")
        let oParenthesisSigns    = Leaf(storedValue:"(")
        let cParenthesisSigns    = Leaf(storedValue:")")
        let equSigns             = Leaf(storedValue:"=")
        let atSigns              = Leaf(storedValue:"@")

    
    
    
        /// left side of tree
        let node5 = Node(leaf: _5Number,leftNode: nil,rightNode: nil)
        let node4 = Node(leaf: _4Number,leftNode: nil,rightNode: nil)
        let nodeApostropheSigns = Node(leaf: apostropheSigns,leftNode: nil,rightNode: nil)
        let node_L = Node(leaf: _lLetter, leftNode: nodeApostropheSigns, rightNode: nil)

        let nodeL = Node(leaf: lLetter, leftNode: nil, rightNode: node_L)
        let node_E = Node(leaf: _eLetter, leftNode: nil, rightNode: nil)

        let nodeF = Node(leaf: fLetter, leftNode: node_E, rightNode: nil)
        let node2 = Node(leaf: _2Number, leftNode: nil, rightNode: nil)
        let node3 = Node(leaf: _3Number, leftNode: nil, rightNode: nil)
    
        let atNode = Node(leaf: atSigns, leftNode: nil, rightNode: nil)
        let atEmptyNode = Node(leaf: nil, leftNode: atNode, rightNode: nil)
    
        let nodeP = Node(leaf: pLetter, leftNode: nil, rightNode: atEmptyNode)
    
        let nodeSApostropheSigns  = Node(leaf: sApostropheSigns, leftNode: nil, rightNode: atEmptyNode)
    
        let node1 = Node(leaf: _1Number, leftNode: nodeSApostropheSigns, rightNode: nil)


        let nodeH = Node(leaf: hLetter, leftNode: node5, rightNode: node4)
    
        let node_S = Node(leaf: _sLetter, leftNode: nil, rightNode: node3)
        let nodeEmpty = Node(leaf: nil, leftNode: node_S, rightNode: node3)
        let nodeEmpty_S = Node(leaf: nil, leftNode: nodeEmpty, rightNode: node3)
    
        let nodeV = Node(leaf: vLetter, leftNode: nodeEmpty_S, rightNode: node3)
        
        let nodeS = Node(leaf: sLetter, leftNode: nodeH, rightNode: nodeV)
    
    
        let nodeQMarkSigns = Node(leaf: qMarkSigns, leftNode: nil, rightNode: nil)
        let node_Signs = Node(leaf: _Signs, leftNode: nil, rightNode: nil)
        let qmEmptyNode = Node(leaf: nil, leftNode: nodeQMarkSigns, rightNode: node_Signs)
        
        let nodeUmlaut = Node(leaf: nil, leftNode: qmEmptyNode, rightNode: node2)
        let nodeU = Node(leaf: uLetter, leftNode: nodeF, rightNode: nodeUmlaut)
        
        let nodeI = Node(leaf: iLetter, leftNode: nodeS, rightNode: nodeU)
    
        let nodedot = Node(leaf: dotSigns, leftNode: nil, rightNode: nil)
        let nodePlus = Node(leaf: plusSigns, leftNode: nil, rightNode: nodedot)
        let node_A = Node(leaf: _aLetter, leftNode: nodePlus, rightNode: nil)
    
        let nodeR = Node(leaf: rLetter, leftNode: nodeL, rightNode: node_A)
        let nodeJ = Node(leaf: jLetter, leftNode: nil, rightNode: node1)
        let nodeW = Node(leaf: wLetter, leftNode: nodeP, rightNode: nodeJ)
        let nodeA = Node(leaf: aLetter, leftNode: nodeR, rightNode: nodeW)
        let nodeE = Node(leaf: eLetter, leftNode: nodeI, rightNode: nodeA)
        
    
        /// Right side of tree
        let nodeDashSigns = Node(leaf: dashSigns, leftNode: nil, rightNode: nil)
        let node6 = Node(leaf: _6Number, leftNode: nil, rightNode: nodeDashSigns)
    
        let nodeRhombSigns = Node(leaf: rhombSigns, leftNode: nil, rightNode: nil)
    
        let nodeX = Node(leaf: xLetter, leftNode: nodeRhombSigns, rightNode: nil)
        let semicolonSignsNode = Node(leaf: semicolonSigns, leftNode: nil, rightNode: nil)
        let eMarkSignsNode = Node(leaf: eMarkSigns, leftNode: nil, rightNode: nil)
        let semicolnEmptyNode = Node(leaf: nil, leftNode: semicolonSignsNode, rightNode: eMarkSignsNode)
    
        let node_C = Node(leaf: _cLetter, leftNode: nil, rightNode: nil)

        let nodeC = Node(leaf: cLetter, leftNode: node_C, rightNode: semicolnEmptyNode)
    
        let nodeCParenthesisSigns = Node(leaf: cParenthesisSigns, leftNode: nil, rightNode: nil)
        let nodeOParenthesisSigns = Node(leaf: oParenthesisSigns, leftNode: nil, rightNode: nodeCParenthesisSigns)

        let nodeY = Node(leaf: yLetter, leftNode: nodeOParenthesisSigns, rightNode: nil)
    
        let nodeColonSigns = Node(leaf: colonSigns, leftNode: nil, rightNode: nil)
        let node8 = Node(leaf: _8Number, leftNode: nodeColonSigns, rightNode: nil)
        let node_N = Node(leaf: _nLetter, leftNode: nil, rightNode: nil)

        let nodeQ = Node(leaf: qLetter, leftNode: nil, rightNode: node_N)
        let node7 = Node(leaf: _7Number, leftNode: nil, rightNode: nil)
        let node9 = Node(leaf: _9Number, leftNode: nil, rightNode: nil)
        let node0 = Node(leaf: _0Number, leftNode: nil, rightNode: nil)

        let nodeEquSigns = Node(leaf: equSigns, leftNode: nil, rightNode: nil)

        let nodeB = Node(leaf: bLetter, leftNode: node6, rightNode: nodeEquSigns)
        let nodeD = Node(leaf: dLetter, leftNode: nodeB, rightNode: nodeX)
        
        
        let nodeK = Node(leaf: kLetter, leftNode: nodeC, rightNode: nodeY)
        let nodeN = Node(leaf: nLetter, leftNode: nodeD, rightNode: nodeK)

        let nodeComma = Node(leaf: commaSigns, leftNode: nil, rightNode: nil)
        let node_Z = Node(leaf: _zLetter, leftNode: nil, rightNode: nil)
        let nodeZ_ = Node(leaf: z_Letter, leftNode: node_Z, rightNode: nodeComma)
        let nodeZ = Node(leaf: zLetter, leftNode: node7, rightNode: nodeZ_)
        let nodeG = Node(leaf: gLetter, leftNode: nodeZ, rightNode: nodeQ)
        
        let node_O = Node(leaf: _oLetter, leftNode: node8, rightNode: nil)
        
        let nodeCH = Node(leaf: chLetter, leftNode: node9, rightNode: node0)
        let nodeO = Node(leaf: oLetter, leftNode: node_O, rightNode: nodeCH)
        
        let nodeM = Node(leaf: mLetter, leftNode: nodeG, rightNode: nodeO)
        let nodeT = Node(leaf: tLetter, leftNode: nodeN, rightNode: nodeM)
        
        
    /// init node
    self.startNode = Node(leaf: nil, leftNode: nodeE, rightNode: nodeT)
    }
    
}
