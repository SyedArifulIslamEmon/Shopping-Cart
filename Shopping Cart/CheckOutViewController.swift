//
//  CheckOutViewController.swift
//  Shopping Cart
//
//  Created by Богдан Быстрицкий on 16/12/2016.
//  Copyright © 2016 BogdanSD. All rights reserved.
//

import UIKit

class CheckOutViewController : UIViewController
{
    
    
    var checkShipping : Bool = false
    
    @IBOutlet weak var finishingTotal: UILabel!
    
    @IBOutlet weak var expressCountShipping: UILabel!
    
    @IBOutlet weak var freeCounrShipping: UILabel!
    
    @IBAction func standartShippingDidTap(_ sender: Any) {
        checkShipping = true
    }
    
    @IBAction func expressShippingDidTap(_ sender: Any) {
        checkShipping = true
        let finalSumDouble = (Double(finalSum)! + 15)
        finalSum = String(finalSumDouble)
        updateUI()
    }
    
    var finalSum : String = ""
    
    @IBAction func buttonFinalDidTap(_ sender: Any) {
        
        if checkShipping == true {
        let alertController = UIAlertController(title: "Финальное потверждение", message: "Вы уверены, что хотите потвердить заказ?", preferredStyle: UIAlertControllerStyle.alert)
        
        let confrimAction = UIAlertAction(title: "Потверждаю", style: UIAlertActionStyle.default)
        {
            (action) in self.dismiss(animated: true, completion: nil)
        }
        
        let cancelAction = UIAlertAction(title: "Назад", style: UIAlertActionStyle.default)
        {
            (action) in self.dismiss(animated: true, completion: nil)
        }
        
        alertController.addAction(confrimAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
        }
        else {
            let alertController = UIAlertController(title: "Не выбран тип доставки", message: "Пожалуйста, выберите один из вариантов доставки", preferredStyle: UIAlertControllerStyle.alert)
            
            let confrimAction = UIAlertAction(title: "Ок", style: UIAlertActionStyle.default)
            {
                (action) in self.dismiss(animated: true, completion: nil)
            }
            
            alertController.addAction(confrimAction)
           
            
            self.present(alertController, animated: true, completion: nil)
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateUI()
    }
    
    
    func updateUI(){
        
        finishingTotal.text = "$\(finalSum)"
    
    }
    
    
}

















