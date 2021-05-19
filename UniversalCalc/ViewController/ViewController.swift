//
//  ViewController.swift
//  UniversalCalc
//
//  Created by Liellison Menezes on 12/01/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    var arrayTest = [[],[]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CoinsDao.getAllCoinsList("") { (coins) in
            self.arrayTest.append(["\(coins.uSD?.name ?? "") - R$\(coins.uSD?.bid ?? "")", "Máxima do dia: R$\(coins.uSD?.high ?? "")", "Mínima do dia: R$\(coins.uSD?.low ?? "")"])
            self.arrayTest.append(["\(coins.uSDT?.name ?? "") - R$\(coins.uSDT?.bid ?? "")", "Máxima do dia: R$\(coins.uSDT?.high ?? "")", "Mínima do dia: R$\(coins.uSDT?.low ?? "")"])
            self.arrayTest.append(["\(coins.cAD?.name ?? "") - R$\(coins.cAD?.bid ?? "")", "Máxima do dia: R$\(coins.cAD?.high ?? "")", "Mínima do dia: R$\(coins.cAD?.low ?? "")"])
            self.arrayTest.append(["\(coins.eUR?.name ?? "") - R$\(coins.eUR?.bid ?? "")", "Máxima do dia: R$\(coins.eUR?.high ?? "")", "Mínima do dia: R$\(coins.eUR?.low ?? "")"])
            self.arrayTest.append(["\(coins.gBP?.name ?? "") - R$\(coins.gBP?.bid ?? "")", "Máxima do dia: R$\(coins.gBP?.high ?? "")", "Mínima do dia: R$\(coins.gBP?.low ?? "")"])
            self.arrayTest.append(["\(coins.aRS?.name ?? "") - R$\(coins.aRS?.bid ?? "")", "Máxima do dia: R$\(coins.aRS?.high ?? "")", "Mínima do dia: R$\(coins.aRS?.low ?? "")"])
            self.arrayTest.append(["\(coins.bTC?.name ?? "") - R$\(coins.bTC?.bid ?? "")", "Máxima do dia: R$\(coins.bTC?.high ?? "")", "Mínima do dia: R$\(coins.bTC?.low ?? "")"])
            self.arrayTest.append(["\(coins.lTC?.name ?? "") - R$\(coins.lTC?.bid ?? "")", "Máxima do dia: R$\(coins.lTC?.high ?? "")", "Mínima do dia: R$\(coins.lTC?.low ?? "")"])
            self.arrayTest.append(["\(coins.jPY?.name ?? "") - R$\(coins.jPY?.bid ?? "")", "Máxima do dia: R$\(coins.jPY?.high ?? "")", "Mínima do dia: R$\(coins.jPY?.low ?? "")"])
            self.arrayTest.append(["\(coins.cHF?.name ?? "") - R$\(coins.cHF?.bid ?? "")", "Máxima do dia: R$\(coins.cHF?.high ?? "")", "Mínima do dia: R$\(coins.cHF?.low ?? "")"])
            self.arrayTest.append(["\(coins.aUD?.name ?? "") - R$\(coins.aUD?.bid ?? "")", "Máxima do dia: R$\(coins.aUD?.high ?? "")", "Mínima do dia: R$\(coins.aUD?.low ?? "")"])
            self.arrayTest.append(["\(coins.cNY?.name ?? "") - R$\(coins.cNY?.bid ?? "")", "Máxima do dia: R$\(coins.cNY?.high ?? "")", "Mínima do dia: R$\(coins.cNY?.low ?? "")"])
            self.arrayTest.append(["\(coins.iLS?.name ?? "") - R$\(coins.iLS?.bid ?? "")", "Máxima do dia: R$\(coins.iLS?.high ?? "")", "Mínima do dia: R$\(coins.iLS?.low ?? "")"])
            self.arrayTest.append(["\(coins.eTH?.name ?? "") - R$\(coins.eTH?.bid ?? "")", "Máxima do dia: R$\(coins.eTH?.high ?? "")", "Mínima do dia: R$\(coins.eTH?.low ?? "")"])
            self.arrayTest.append(["\(coins.xRP?.name ?? "") - R$\(coins.xRP?.bid ?? "")", "Máxima do dia: R$\(coins.xRP?.high ?? "")", "Mínima do dia: R$\(coins.xRP?.low ?? "")"])
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(arrayTest)
    }
    
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("section: \(indexPath.section)")
        print("row: \(indexPath.row)")
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20.0
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrayTest.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayTest[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = self.arrayTest[indexPath.section][indexPath.row] as? String
        cell.backgroundColor = .gray
        
        return cell
    }
}
