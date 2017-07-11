//
//  FormViewController.swift
//  madLibs
//
//  Created by Erick Lui on 7/10/17.
//  Copyright © 2017 Erick Lui. All rights reserved.
//

import UIKit

class FormViewController: UIViewController {
  
  weak var delegate: FormViewControllerDelegate?
  
  @IBOutlet weak var adjTextField: UITextField!
  @IBOutlet weak var verb1TextField: UITextField!
  @IBOutlet weak var verb2TextField: UITextField!
  @IBOutlet weak var nounTextField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  @IBAction func submitButtonPressed(_ sender: UIButton) {
    let data = [
      "adj": adjTextField.text!,
      "v1": verb1TextField.text!,
      "v2": verb2TextField.text!,
      "noun": nounTextField.text!
    ]
    delegate?.submitData(by: self, with: data)
    dismiss(animated: true, completion: nil)
  }
}
