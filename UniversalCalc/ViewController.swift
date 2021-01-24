//
//  ViewController.swift
//  UniversalCalc
//
//  Created by Liellison Menezes on 12/01/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        CoinsDao.pesquisarCEP("") { (coins) in
            print(coins.uSD?.name)
        }
    }


}

