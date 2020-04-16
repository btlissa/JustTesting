//
//  ScnViewController.swift
//  JustTesting
//
//  Created by Batoul Issa on 4/15/20.
//  Copyright © 2020 Batoul Issa. All rights reserved.
//

import UIKit

protocol TestDelegate {
    func recieveMessageFromScnView(Msg : String)
}

class ScnViewController: UIViewController {
    var delegate : TestDelegate?
    
    @IBOutlet weak var txtScn: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func send(_ sender: UIButton) {
        if delegate != nil {
            delegate?.recieveMessageFromScnView(Msg: txtScn.text!)
        }
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
