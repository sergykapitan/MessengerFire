//
//  ViewController.swift
//  MessengerFire
//
//  Created by Sergey on 28.10.2020.
//

import UIKit

class ViewController: UIViewController  {
   
    
    
    private var myTableView: UITableView!
    private var feedViewModel = MessengerFeedViewModel.init(cells: [])

    override func viewDidLoad() {
        super.viewDidLoad()
        set ()
    }
    
    func set () {
        
        let displayWidth: CGFloat = self.view.bounds.width
        let displayHeight: CGFloat = self.view.bounds.height
                
        myTableView = UITableView(frame: CGRect(x: 0, y: 0, width: displayWidth, height: displayHeight))
        myTableView.register(MessengerCodeCell.self, forCellReuseIdentifier: MessengerCodeCell.reuseId)
        myTableView.dataSource = self
        myTableView.delegate = self
        self.view.addSubview(myTableView)
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return feedViewModel.myArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MessengerCodeCell.reuseId, for: indexPath) as! MessengerCodeCell
        cell.textLabel?.text = feedViewModel.myArray[indexPath.row] as? String
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Select Row")
    }
    
}
