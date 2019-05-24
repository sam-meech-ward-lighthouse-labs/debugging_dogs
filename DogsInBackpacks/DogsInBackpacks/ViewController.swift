//
//  ViewController.swift
//  DogsInBackpacks
//
//  Created by Sam Meech-Ward on 2019-05-24.
//  Copyright © 2019 meech-ward. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

  var dogName: String?
  @IBOutlet weak var label: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  
  var maps: [MKMapView] = []
  @IBAction func doSomething(_ sender: Any) {
    
    for _ in 0...100 {
      maps.append(MKMapView())
    }
    
    if let dogName = dogName {
      label.text = dogName
    } else {
      label.text = "💩"
    }
    
    doAnotherThing()
    
    dogName = nil
    
    do {
      try errorMethod3()
    } catch {
      print(error)
    }
    
  }
  
  func doAnotherThing() {
    label.text! += "😎"
  }
  
  enum Err: Error  {
    case any
  }
  
  func errorMethod3() throws {
    try errorMethod2()
  }
  func errorMethod2() throws {
    try errorMethod1()
  }
  func errorMethod1() throws {
    throw Err.any
  }
  
}

