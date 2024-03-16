//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Hyun Jaeyeon on 3/13/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    //viewDidLoad: 앱 처음 실행 시 시작되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mainLabel.backgroundColor = UIColor.brown
        
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        mainLabel.text = "안녕하세요"
        mainLabel.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
    }

}

