//
//  ViewController.swift
//  practiceAlamofire
//
//  Created by Ankitha Kamath on 01/12/21.
//

import UIKit

class ViewController: UIViewController {

   @IBOutlet weak var tblView: UITableView!
    var viewModelUser = UserViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        //viewModelUser.getAllUserData()
        tblView.register(UINib(nibName: "userCell", bundle: nil), forCellReuseIdentifier: "userCell")
        viewModelUser.vc = self
        viewModelUser.getAllUsreDataAF()
    }
    
}

extension ViewController: UITableViewDataSource{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModelUser.arrUsers.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath) as? userCell
        let modeluser = viewModelUser.arrUsers[indexPath.row]
        cell?.modelUser = modeluser
        return cell!
    }
}

