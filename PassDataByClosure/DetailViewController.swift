//
//  DetailViewController.swift
//  PassDataByClosure
//
//  Created by Trần Đức Anh on 10/31/18.
//  Copyright © 2018 Trần Đức Anh. All rights reserved.
//

import UIKit


class DetailViewController: UIViewController {
    @IBOutlet weak var textLabel: UITextField!
    
    var onCompletion: ((String) -> Void)?
    let data = Data()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    deinit {
        print("tao di chet day")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButtonTapped(sender: Any?) {
        onCompletion?(textLabel.text ?? "")
        navigationController?.popViewController(animated: true)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
