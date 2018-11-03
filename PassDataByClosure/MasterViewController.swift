//
//  ViewController.swift
//  PassDataByClosure
//
//  Created by Trần Đức Anh on 10/31/18.
//  Copyright © 2018 Trần Đức Anh. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? DetailViewController else { return }
        destination.onCompletion = { (text) in
            self.textField.text = text
        }
        
    }
    
//    func fillData(text:String) {
//        textField.text = text
//    }
    
    
    
}
