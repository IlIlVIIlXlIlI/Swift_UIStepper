//
//  ViewController.swift
//  section12_4_UISteooer
//
//  Created by Shogo Nobuhara on 2021/01/05.
//

import UIKit




class ViewController: UIViewController {

    // Outlet Connection
    @IBOutlet weak var numLabel: UILabel!
    @IBOutlet weak var msgLabel: UILabel!
    @IBOutlet weak var colorChip: UIView!
    @IBOutlet weak var appleWatch: UIImageView!
    
    
    
    @IBAction func changeStepperValue(_ sender: Any){
        let stepper = sender as! UIStepper
        let num = Int(stepper.value)
        numLabel.text = String(num)
    }
    
    @IBAction func showHide(_ sender: UISwitch) {
        //msgLabel.isHidden = !sender.isOn
        if(sender.isOn){
            msgLabel.text = "ON"
        }else{
            msgLabel.text = "OFF"
        }
    }
    
    
    func RGBA(red:CGFloat,green:CGFloat,blue:CGFloat,alpha:CGFloat)->UIColor{
        let r = red/255.0
        let g = green/255.0
        let b = blue/255.0
        let rgba = UIColor(red:r,green:g,blue:b,alpha:alpha)
        return rgba
    }
    
    
    @IBAction func changedColor(_ sender: UISegmentedControl) {
        
        let color = RGBA(red: 255, green: 0, blue: 255,alpha: 1)
        
        switch sender.selectedSegmentIndex{
        case 0:
            colorChip.backgroundColor = UIColor.blue
            break
        case 1:
            colorChip.backgroundColor = UIColor.yellow
            break
        case 2:
            colorChip.backgroundColor = UIColor.green
            break
        case 3:
            colorChip.backgroundColor = color
            break
        default:
            colorChip.backgroundColor = UIColor.green
        }
    }
    
    @IBAction func changeSlider(_ sender: UISlider) {
        appleWatch.alpha = CGFloat(sender.value)
    }
    
    @objc func hello(_ sender:UIButton){
        print("ハロー")
    }
    
    func addButton(){
        let myButton = UIButton(frame: CGRect(x:0,y:0,width:120,height:50))
        myButton.layer.masksToBounds = true
        myButton.layer.cornerRadius = 20.0
        myButton.backgroundColor = UIColor.red
        myButton.setTitle("ハロー", for: .normal)
        myButton.layer.position = CGPoint(x: view.bounds.width/2,y:view.bounds.height-50)
        myButton.addTarget(self, action: #selector(ViewController.hello(_:)), for: .touchUpInside)
        
        view.addSubview(myButton)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    
    
    
    
}

