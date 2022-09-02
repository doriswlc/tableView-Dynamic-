//
//  DetailViewController.swift
//  tableView(Dynamic)
//
//  Created by doriswlc on 2022/9/2.
//

import UIKit

class DetailViewController: UIViewController {
    var recipe: Recipt!
    
    @IBOutlet weak var reciptPhotoImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        reciptPhotoImage.image = UIImage(named: recipe.photoDetail)
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
