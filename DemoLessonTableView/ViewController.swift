//
//  ViewController.swift
//  DemoLessonTableView
//
//  Created by Nihad Allahveranov on 11.03.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "HomeHeaderTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeHeaderTableViewCell")
        tableView.register(UINib(nibName: "HomeBannerTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeBannerTableViewCell")
        tableView.register(UINib(nibName: "HomeDishesTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeDishesTableViewCell")
        tableView.register(UINib(nibName: "HomeCategoryTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeCategoryTableViewCell")
        
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeHeaderTableViewCell", for: indexPath) as! HomeHeaderTableViewCell
            
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeBannerTableViewCell", for: indexPath) as! HomeBannerTableViewCell
            
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeDishesTableViewCell", for: indexPath) as! HomeDishesTableViewCell
            
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCategoryTableViewCell", for: indexPath) as! HomeCategoryTableViewCell
            
            return cell
        default:
            return UITableViewCell()
        }
        
    }
    
}
