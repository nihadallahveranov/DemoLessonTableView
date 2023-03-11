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
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeHeaderTableViewCell", for: indexPath) as! HomeHeaderTableViewCell
            
            return cell
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeBannerTableViewCell", for: indexPath) as! HomeBannerTableViewCell
            
            return cell
        } else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeDishesTableViewCell", for: indexPath) as! HomeDishesTableViewCell

            return cell
        } else if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCategoryTableViewCell") as! HomeCategoryTableViewCell
            
            return cell
        }
        
        return UITableViewCell()
        
    }
    
}
