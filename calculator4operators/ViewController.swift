//
//  ViewController.swift
//  calculator4operators
//
//  Created by Ali serkan Boyracı  on 17.07.2022.
//

import UIKit
    
    // var result = 0 buraya yazarsak scope değişir.

class ViewController: UIViewController {
    @IBOutlet var firstText: UITextField!
    // content type ve keyboard type üzerinde nasıl ir şey girilebileceğini ve nasıl klavye açılabileceğini belirtebiliriz.
    @IBOutlet var secondText: UITextField! //hata yaparsan silmeden önce bağlantıyı koparmalısın
    @IBOutlet var resultLabel: UILabel!
    
    
    var result = 0 //if let yapılarını da buraya koymayı denedim ama imkansız. çünkü if let yapıları bir fonk. içine yazılmalı.
// result ı buraya koyarak her func da result tanımlamaya gerek yok. çünkü burasının scope u tüm fonk. kapsıyor.
 
    override func viewDidLoad() {
        super.viewDidLoad()
        //  Uygulama açılır açılmaz indirme vs. gibi durumları buraya yazmalıyız.
    }

    @IBAction func toplamaTiklandi(_ sender: Any) {
        
        /* ünlemlerle yazınca olmadı, çünkü eğer int yerine string girersek çöker. onun yerine if let kullanmamız gerekir.
        let firstNumber = Int(firstText.text!)!
        let secondNumber = Int(secondText.text!)!
        let result = firstNumber + secondNumber
        
        resultLabel.text = String(result)
        */
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
                
                result = firstNumber + secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    
    @IBAction func cikarmaTiklandi(_ sender: Any) {
        
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
                
                result = firstNumber - secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    
    @IBAction func carpmaTiklandi(_ sender: Any) {
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
                
                result = firstNumber * secondNumber
                resultLabel.text = String(result)
            }
        }
    }

    @IBAction func bolmeTiklandi(_ sender: Any) {
        
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
                
                result = firstNumber / secondNumber
                resultLabel.text = String(result)
            }
        }
    }
}

