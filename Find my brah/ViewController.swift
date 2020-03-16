//
//  ViewController.swift
//  Find my brah
//
//  Created by Marina Savluchinske on 02/03/20.
//  Copyright © 2020 Marina Savluchinske. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 3
        }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tamanhoPicker.dataSource = self
        tamanhoPicker.delegate = self
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if row == 0 {
            caimento = "Justo"
        }
        else if row == 1 {
            caimento = "Na Medida"
        }
        else {
            caimento = "Largo"
        }
        return self.caimento
    }
    
        func transformaCMemTamanho(){
        //Lê o que está no text field de centímetros
            let cm: String = textfielddemedida.text!
            
            print(cm)
            
        //transformar texto em Int
            let cmInt : Int
            cmInt = Int(cm)!
            print(cmInt)
            
        //Converte o valor em tamanho de sutiã
            var transformaCMemTamanho : Int = 0
            if(caimento == "Na Medida" && cmInt < 88){
                transformaCMemTamanho = 40
            }
            else if(caimento == "Justo" && cmInt < 88){
                transformaCMemTamanho = 38
            }
            else if(caimento == "Largo" && cmInt < 88){
                transformaCMemTamanho = 42
            }
            else if (caimento == "Na Medida" && cmInt < 92){
            transformaCMemTamanho = 42
            }
            else if (caimento == "Justo" && cmInt < 92){
            transformaCMemTamanho = 40
            }
            else if (caimento == "Largo" && cmInt < 92){
            transformaCMemTamanho = 44
            }
            else if (caimento == "Na Medida" && cmInt < 96){
                transformaCMemTamanho = 44
            }
            else if (caimento == "Justo" && cmInt < 96){
                transformaCMemTamanho = 42
            }
            else if (caimento == "Largo" && cmInt < 96){
                transformaCMemTamanho = 46
            }
            else if (caimento == "Na Medida" && cmInt < 100){
                transformaCMemTamanho = 46
            }
           else if (caimento == "Justo" && cmInt < 100){
               transformaCMemTamanho = 44
           }
            else if (caimento == "Largo" && cmInt < 100){
                    transformaCMemTamanho = 48
           }
            else if (caimento == "Na Medida" && cmInt < 104){
                transformaCMemTamanho = 48
            }
            else if (caimento == "Justo" && cmInt < 104){
                transformaCMemTamanho = 46
            }
            else if (caimento == "Largo" && cmInt < 104){
                transformaCMemTamanho = 50
            }
            else if (caimento == "Na Medida" && cmInt < 110){
                transformaCMemTamanho = 50
            }
            else if (caimento == "Justo" && cmInt < 110){
                transformaCMemTamanho = 48
            }
            else if (caimento == "Largo" && cmInt < 110){
                transformaCMemTamanho = 52
            }
            else if (caimento == "Na Medida" && cmInt < 123){
                transformaCMemTamanho = 52
            }
            else if (caimento == "Justo" && cmInt < 123){
                transformaCMemTamanho = 50
            }
            else if (caimento == "Largo" && cmInt < 123){
                transformaCMemTamanho = 54
            }
            resultado.text = String (transformaCMemTamanho)
            
    }
    class sutia {
        var tamanho = 0
        /// valores possíveis: "justo", "na medida", "largo"
        var caimento = ""
        var modelo = ""
        
        init(tamanho: Int, caimento: String, modelo: String) {
            self.tamanho = tamanho
            self.caimento = caimento
            self.modelo = modelo
        }
        
        
    }
    
    var caimento: String = ""
    @IBOutlet var tamanhoPicker: UIPickerView!
    
    @IBOutlet var resultadoView: UIView!
    
    @IBOutlet var numero2: UILabel!
    
    
    
    @IBOutlet var PrimeiroPasso: UILabel!
    
  
    @IBOutlet var resultado: UILabel!
    
    
    @IBOutlet var textfielddemedida: UITextField!
    
    @IBAction func botaoRecalcular(_ sender: Any) {
        resultadoView.isHidden = true
        transformaCMemTamanho()
    }
    
    @IBAction func botaocalculo(_ sender: Any) {
        transformaCMemTamanho()
        print ("")
        resultadoView.isHidden = false
    }
    
    }

