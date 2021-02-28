//
//  FirstUSeViewController.swift
//  SnipDesignSustainably
//
//  Created by Kevin Jimenez on 2/28/21.
//

import UIKit

class FirstUSeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let vm = ProfileViewModel()
        vm.getDataFromDataProvider()
        let user = vm.arrUser[0]
        let name = user.firstName
        print(name)
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
