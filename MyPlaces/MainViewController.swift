//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Дарья Кобелева on 26.07.2023.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restaurantNames = [
    "Kafeterija", "Bela Reka", "Butique", "Stories",
    "TT_Bistro", "HookahHouse", "Heritage Rooftop Gastro Bar",
    "City Garden", "Sinnerman Jazz Club",
    "Caruso", "SkyLounge", "THE VIEW", "Kafeterija Secer"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = restaurantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: restaurantNames[indexPath.row])
        cell.imageView?.layer.cornerRadius = cell.frame.size.height / 2
        cell.imageView?.clipsToBounds = true
        
        return cell
    }
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
