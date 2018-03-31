//
//  ViewController.swift
//  Translator
//
//  Created by doubon on 2018/3/30.
//  Copyright © 2018年 doubon. All rights reserved.
//

import Cocoa
import GDataXML_HTML

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.window?.center()
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func temp(_ sender: Any) {
        let xmlURL = URL(fileURLWithPath: "/Users/doubon/Downloads/Temp/dcccbb53.xml")
        let xmlData = try! Data(contentsOf: xmlURL)
        let xmlDoc = try! GDataXMLDocument(data: xmlData, encoding: String.Encoding.utf8.rawValue)
        
//        // 取得根节点(element元素)---Students
//        GDataXMLElement * rootEL = [documents rootElement];
//        let rootElement: GDataXMLElement = xmlDoc.rootElement()
//
//        if let fileNodes: [GDataXMLElement] = try? xmlDoc.nodes(forXPath: "//employe") as! [GDataXMLElement] {
//        //if let fileNodes: [GDataXMLElement] = rootElement.elements(forName: "//employe") as? [GDataXMLElement] {
//            print("nodes count: \(fileNodes.count)")
//            for fileNode in fileNodes {
//                let a = GDataXMLNode.attribute(withName: "aaa", stringValue: "bbb") as! GDataXMLNode
//                fileNode.addAttribute(a)
//            }
//        }
        
        try? xmlDoc.xmlData().write(to: xmlURL, options: .atomic)
        
        
//        print(xmlDoc.rootElement().xmlString())
        
        
//            NSArray *employees = [doc nodesForXPath:@"//employe" error:NULL];
//            for (GDataXMLElement *employe in employees) {
//                [self print:[employe stringValue]];[self print:@"\n"];
//            }
        
    }
    
}

