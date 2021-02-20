//
//  ViewController.swift
//  UIButtonDemo
//
//  Created by David Razmadze on 2/20/21.
//

import UIKit

class ViewController: UIViewController {

  // MARK: - Properties
  
  var count = 0
  
  // MARK: - IBOutlets
  
  @IBOutlet weak var loginButton: UIButton!
  @IBOutlet weak var printerButton: UIButton!
  @IBOutlet weak var exitButton: UIButton!
  
  // MARK: - Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    configureUI()
  }

  // MARK: - Helpers
  
  func configureUI() {
    // Corner Radius
    loginButton.layer.cornerRadius = 10
    
    // Border
    // loginButton.layer.borderWidth = 1
    // loginButton.layer.borderColor = UIColor.red.cgColor
    
    // Shadow
    loginButton.layer.shadowColor = UIColor.yellow.cgColor
    loginButton.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
    loginButton.layer.shadowRadius = 2.0
    loginButton.layer.shadowOpacity = 3.0
    
    loginButton.layer.masksToBounds = false
  }
  
  // MARK: - IBActions
  
  @IBAction func loginButtonPressed(_ sender: Any) {
    print("Login button was pressed")
  }
  
  @IBAction func printerButtonPressed(_ sender: Any) {
    
    if count > 9 {
      count = 0
      return
    }
    
    count += 1
    print("Print count: \(count)")
  }
  
  @IBAction func exitButtonPressed(_ sender: Any) {
    print("Exit button was pressed")
  }
  
  
}
