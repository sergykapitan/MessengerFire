//
//  ViewController.swift
//  MessengerFire
//
//  Created by Sergey on 28.10.2020.
//

import UIKit

class ViewController: UIViewController  {
   
    
    private let myArray: NSArray = ["First","Second","Third"]
    private var myTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
       // let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
        let displayWidth: CGFloat = self.view.bounds.width
        let displayHeight: CGFloat = self.view.bounds.height

//myTableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight))
                myTableView = UITableView(frame: CGRect(x: 0, y: 0, width: displayWidth, height: displayHeight))
                myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
                myTableView.dataSource = self
                myTableView.delegate = self
                self.view.addSubview(myTableView)
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        myArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
        cell.textLabel!.text = "\(myArray[indexPath.row])"
        return cell
    }
    
    
}
