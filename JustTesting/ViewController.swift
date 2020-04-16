//
//  ViewController.swift
//  JustTesting
//
//  Created by Batoul Issa on 4/15/20.
//  Copyright © 2020 Batoul Issa. All rights reserved.
//

import UIKit
import SVProgressHUD


class ViewController: UIViewController, TestDelegate {

    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var txtTest: UITextField!
    @IBAction func buttonPressed(_ sender: UIButton) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func gotoNext(_ sender: UIButton) {
        SVProgressHUD.show()
        
        //SVProgressHUD.dismiss()
       // performSegue(withIdentifier: "gotoNext", sender: self)
    }
    @IBAction func cancelPressed(_ sender: UIButton) {
        SVProgressHUD.dismiss()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func recieveMessageFromScnView(Msg: String) {
        lbl.text = Msg
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc : ScnViewController = segue.destination as! ScnViewController
        vc.delegate = self
        
    }
}

