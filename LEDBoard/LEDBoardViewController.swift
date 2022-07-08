//
//  BoardViewController.swift
//  LEDBoard
//
//  Created by 나지운 on 2022/07/06.
//

import UIKit

class BoardViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var userInputTextField: UITextField!
    
    @IBOutlet weak var textColorButton: UIButton!
    @IBOutlet weak var sendButton: UIButton!
    
    @IBOutlet weak var resultLabel: UILabel!
     
    @IBOutlet var buttonList: [UIButton]!
    
    @IBOutlet weak var textFiledAndButtonsView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        designButton(buttonName: sendButton, buttonTitle: "전송", HightlightedTitle: "빨리보내", bgColor: .white)
        designButton(buttonName: textColorButton, buttonTitle: "쀼", HightlightedTitle: "메롱", bgColor: .white)
        designTextFiled()
        
    }
    
    func designTextFiled() {
        userInputTextField.placeholder = "내용을 작성해주세요."
        userInputTextField.keyboardType = .emailAddress
    }
    
    func designButton(buttonName: UIButton, buttonTitle: String, HightlightedTitle: String, bgColor: UIColor) {
        buttonName.setTitle(buttonTitle, for: .normal)
        buttonName.setTitle(HightlightedTitle, for: .highlighted)
        buttonName.backgroundColor = bgColor
        buttonName.layer.cornerRadius = 8
        buttonName.layer.borderColor = UIColor.black.cgColor
        buttonName.layer.borderWidth = 3
        buttonName.setTitleColor(.red, for: .normal)
        buttonName.setTitleColor(.blue, for: .highlighted)
    }
    
    func studyOutletCollection() {
        // 1. 반복문
        let buttonArray: [UIButton] = [sendButton, textColorButton]
        
        for item in buttonArray {
            item.backgroundColor = .blue
            item.layer.cornerRadius = 2
        }
        
        // 2. 아웃렛 컬렉션
        for item in buttonList {
            item.setTitle("하이루", for: .normal)
        }
    }
    
    @IBAction func sendButtonClicked(_ sender: UIButton) {
        view.endEditing(true)
        resultLabel.text = userInputTextField.text
        resultLabel.textColor = .red
    }
    
    @IBAction func celarButtonClicked(_ sender: UIButton) {
        resultLabel.text = ""
    }

    @IBAction func userInputTextFieldExit(_ sender: UITextField) {
        view.endEditing(true)
    }
    
    @IBAction func tapGestureClicked(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
        
        textFiledAndButtonsView.isHidden = textFiledAndButtonsView.isHidden ? false : true
        
        
    }
}
