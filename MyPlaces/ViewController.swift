//
//  ViewController.swift
//  MyPlaces
//
//  Created by Виталий Кузнецов on 24.03.2025.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let restaurantNames = [
    "Burger Heroes","Kitchen","Bonsai","Дастархан",
    "Индокитай", "Х.О", "Балкан Гриль","Sherlock Holmes",
    "Speak Easy","Morris Pub", "Вкусные истории",
    "Классик", "Love&Life", "Шок", "Бочка"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = restaurantNames[indexPath.row]
        
        return cell!
    }
}

