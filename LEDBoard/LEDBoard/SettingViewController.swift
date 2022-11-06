//
//  SettingViewController.swift
//  LEDBoard
//
//  Created by 방유빈 on 2022/11/06.
//

import UIKit

protocol LEDBoardSettingDelegate:AnyObject{
    func changedSetting(text:String?, textColor:UIColor, backgroundColor:UIColor)
}
class SettingViewController: UIViewController {

    @IBOutlet weak var tfTextField: UITextField!
    @IBOutlet weak var btnYellow: UIButton!
    @IBOutlet weak var btnPurple: UIButton!
    @IBOutlet weak var btnGreen: UIButton!
    
    @IBOutlet weak var btnBlack: UIButton!
    @IBOutlet weak var btnBlue: UIButton!
    @IBOutlet weak var btnOrange: UIButton!
    
    weak var delegate: LEDBoardSettingDelegate?
    
    var ledText : String?
    var textColor : UIColor = .yellow
    var backgroundColor:UIColor = .black
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
        // Do any additional setup after loading the view.
    }
    
    private func configureView(){
        if let ledText = self.ledText {
            self.tfTextField.text = ledText
        }
        self.changeTextColor(color: self.textColor)
        self.changeBackgroundColor(color: self.backgroundColor)
    }

    @IBAction func TapTextColorButton(_ sender: UIButton) {
        if sender == self.btnYellow{
            self.textColor = .yellow
            changeTextColor(color: .yellow)
        }else if sender == self.btnPurple{
            self.textColor = .purple
            changeTextColor(color: .purple)
        }else{
            self.textColor = .green
            changeTextColor(color: .green)
        }
    }
    @IBAction func TapBackGroundColorButton(_ sender: UIButton) {
        if sender == self.btnBlack{
            self.backgroundColor = .black
            changeBackgroundColor(color: .black)
        }else if sender == self.btnBlue {
            self.backgroundColor = .blue
            changeBackgroundColor(color: .blue)
        }else{
            self.backgroundColor = .orange
            changeBackgroundColor(color: .orange)
        }
        
    }
    @IBAction func SaveButton(_ sender: UIButton) {
        self.delegate?.changedSetting(
            text: self.tfTextField.text,
            textColor : self.textColor,
            backgroundColor: self.backgroundColor
        )
        self.navigationController?.popViewController(animated: true)
    }
    
    private func changeTextColor(color:UIColor){
        self.btnYellow.alpha = color == UIColor.yellow ? 1 : 0.2
        self.btnPurple.alpha = color == UIColor.purple ? 1 : 0.2
        self.btnGreen.alpha = color == UIColor.green ? 1 : 0.2
    }
    private func changeBackgroundColor(color:UIColor){
        self.btnBlack.alpha = color == UIColor.black ? 1 : 0.2
        self.btnBlue.alpha = color == UIColor.blue ? 1 : 0.2
        self.btnOrange.alpha = color == UIColor.orange ? 1 : 0.2
    }
}
