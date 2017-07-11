//
//  ViewController.swift
//  madLibs
//
//  Created by Erick Lui on 7/10/17.
//  Copyright © 2017 Erick Lui. All rights reserved.
//

import UIKit

class ViewController: UIViewController, FormViewControllerDelegate {

  @IBOutlet weak var madlibLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let formController = segue.destination as! FormViewController
    formController.delegate = self
  }
  func submitData(by controller: FormViewController, with text: [String: String]) {
    madlibLabel.text = "We are having a perfectly \(text["adj"]!) time now. Later we will \(text["v1"]!) and \(text["v2"]!) in the \(text["noun"]!)"
  }
  @IBAction func toMainView(_ segue: UIStoryboardSegue) {}
}

