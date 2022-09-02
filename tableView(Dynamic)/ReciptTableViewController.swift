//
//  ReceiptTableViewController.swift
//  tableView(Dynamic)
//
//  Created by doriswlc on 2022/9/2.
//

import UIKit

class ReciptTableViewController: UITableViewController {
    let recipts = [Recipt(name: "Pancake", type: "Baking", photo: "Pancake", photoDetail: "PancakeD"), Recipt(name: "Bagel", type: "Baking", photo: "Bagel", photoDetail: "BagelD"), Recipt(name: "Hamburger", type: "Baking", photo: "Hamburger", photoDetail: "HamburgerD")]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    @IBSegueAction func showDetail(_ coder: NSCoder) -> DetailViewController? {
        let controller = DetailViewController(coder: coder)
        guard let row = tableView.indexPathForSelectedRow?.row else {
            return nil
        }
        controller?.recipe = recipts[row]
        return controller
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return recipts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "breadRecipesCell", for: indexPath)
        let receipt = recipts[indexPath.row]
        
        cell.textLabel?.text = receipt.name
        cell.detailTextLabel?.text = receipt.type
        cell.imageView?.image = UIImage(named: receipt.photo)

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
