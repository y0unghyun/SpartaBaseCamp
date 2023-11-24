//
//  ViewController.swift
//  PracticeUI
//
//  Created by 영현 on 11/9/23.
//

import UIKit

struct Family {
    let myName: String
    let bestFriendName: String
    let nextFriendName: String
}

class ViewController: UIViewController {
    
    let friendsName: [String] = ["Henry", "Tobi", "Jay"]
    let koreanNames: [String: String] = ["Henry": "헨리", "Tobi": "토비", "Jay": "제이"]
    var count: Int = 0
    
    let friend = Family(myName: "Henry", bestFriendName: "Tobi", nextFriendName: "Jay")

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bestFriendNameLabel: UILabel!
    @IBOutlet weak var nextFriendNameLabel: UILabel!
    
    
    @IBAction func DidTapButton(_ sender: Any) {
//        nameLabel.text = friendsName[0]
//        bestFriendNameLabel.text = friendsName[1]
//        nextFriendNameLabel.text = friendsName[2]
        nameLabel.text = friend.myName
        bestFriendNameLabel.text = friend.bestFriendName
        nextFriendNameLabel.text = friend.nextFriendName
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

// 데이터 모델링 : 데이터의 이름을 한 눈에 알아보기 쉽게 네이밍하고, 그룹화하는 것
