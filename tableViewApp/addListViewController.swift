//
//  addListViewController.swift
//  tableViewApp
//
//  Created by 高橋康之 on 2020/09/09.
//  Copyright © 2020 yasu.com. All rights reserved.
//

import UIKit

class addListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var addText: UITextField!
    var array = [String]()
    
    
    
    @IBAction func addButton(_ sender: Any) {
        
         print(array)
        
        if UserDefaults.standard.object(forKey: "add") != nil {
                   //再度保存されている値をarrayの中に再度格納する
                   
                   array = UserDefaults.standard.object(forKey: "add") as! [String]
               }
        
        print(array)
        
        array.append(addText.text!)
        
        
        //保存
        UserDefaults.standard.set(array, forKey: "add")
        //戻る機能
        self.navigationController?.popViewController(animated: true)
        
        
        
        
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
