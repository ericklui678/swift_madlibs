//
//  FormViewControllerDelegate.swift
//  madLibs
//
//  Created by Erick Lui on 7/10/17.
//  Copyright © 2017 Erick Lui. All rights reserved.
//

import Foundation

protocol FormViewControllerDelegate: class {
  func submitData(by controller: FormViewController, with text: [String: String])
}
