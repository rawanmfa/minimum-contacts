//
//  MyTableViewController.swift
//  day.7
//
//  Created by rawan  on 9/4/23.
//  Copyright © 2023 rawan . All rights reserved.
//

import UIKit


protocol Myprotocol {
    
    func addfriend(friend : Friend)
    
}

struct Friend {
    
    var name : String
    var address : String
    var email : String
}


class MyTableTableViewController: UITableViewController {

    var females : [Friend] = [Friend(name: "sama", address: "Alex", email: "sama@gmail.com"),Friend(name: "rawan", address: "cairo", email: "rawan@gmail.com"),Friend(name: "mesk", address: "cairo", email: "mesk@gmail.com")]
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let firstVC : ViewController = segue.destination as! ViewController
        firstVC.addfrienddelegate = self
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return females.count
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 70
        
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "Females"
    }
    
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        
        return "Females Footer"
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = females[indexPath.row].name
        cell.detailTextLabel?.text = "iTi"
        cell.accessoryType = .disclosureIndicator
        return cell
        
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            females.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

   
}

extension MyTableTableViewController : Myprotocol {
    func addfriend(friend: Friend) {
        females.append(friend)
        self.tableView.reloadData()
        
    }
    
    
}
