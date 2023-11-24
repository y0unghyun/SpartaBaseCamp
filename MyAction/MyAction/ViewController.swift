//
//  ViewController.swift
//  MyAction
//
//  Created by 영현 on 11/7/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var myButtom: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func didTapMyButton(_ sender: Any) {
        print("배경 색상을 노란색으로 바꿀게요")
        view.backgroundColor = .yellow
        helloLabel.text = "Hello, YHK"
    }
}

