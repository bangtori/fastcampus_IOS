//
//  WriteDiaryViewController.swift
//  Diary
//
//  Created by 방유빈 on 2022/11/24.
//

import UIKit

class WriteDiaryViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var contentsTextView: UITextView!
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var confirmButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapConfrimButton(_ sender: UIBarButtonItem) {
    }
    
}
