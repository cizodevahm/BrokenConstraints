//
//  ViewController.swift
//  BrokenConstraints
//
//  Created by jignesh solanki on 08/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tblViewDemo: UITableView!
    
    let arrStr = ["Demo 1" ,"Demo 2","Demo 3" , "Demo 4" , "Demo 5" , "Demo 6" ,"Demo 7" ,"Demo 8" ,"Demo 9" ,"Demo 10" ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tblViewDemo.reloadData()
    }


}

extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrStr.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        else { return UITableViewCell() }
        var content = cell.defaultContentConfiguration()
        content.text = arrStr[indexPath.row]
        cell.contentConfiguration = content
        cell.selectionStyle = .none
        return cell
    }

}
