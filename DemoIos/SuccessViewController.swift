//
//  SuccessViewController.swift
//  DemoIos
//
//  Created by guanbing.lai on 2023/3/2.
//

import UIKit

class SuccessViewController: UIViewController {

    @IBOutlet weak var successLabel: UILabel!
    var text:String=""
    override func viewDidLoad() {
        super.viewDidLoad()
        successLabel.text=text
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginOutButton(_ sender: Any) {
        dismiss(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
