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
            self.arrayTest.append(["\(coins.uSD?.name ?? "")", "Máxima do dia: \(coins.uSD?.high ?? "")", "Mínima do dia: \(coins.uSD?.low ?? "")"])
            self.arrayTest.append(["\(coins.uSDT?.name ?? "")", "Máxima do dia:\(coins.uSDT?.high ?? "")", "Mínima do dia: \(coins.uSDT?.low ?? "")"])
            self.arrayTest.append(["\(coins.cAD?.name ?? "")", "Máxima do dia:\(coins.cAD?.high ?? "")", "Mínima do dia: \(coins.cAD?.low ?? "")"])
            self.arrayTest.append(["\(coins.eUR?.name ?? "")", "Máxima do dia:\(coins.eUR?.high ?? "")", "Mínima do dia: \(coins.eUR?.low ?? "")"])
            self.arrayTest.append(["\(coins.gBP?.name ?? "")", "Máxima do dia:\(coins.gBP?.high ?? "")", "Mínima do dia: \(coins.gBP?.low ?? "")"])
            self.arrayTest.append(["\(coins.aRS?.name ?? "")", "Máxima do dia:\(coins.aRS?.high ?? "")", "Mínima do dia: \(coins.aRS?.low ?? "")"])
            self.arrayTest.append(["\(coins.bTC?.name ?? "")", "Máxima do dia:\(coins.bTC?.high ?? "")", "Mínima do dia: \(coins.bTC?.low ?? "")"])
            self.arrayTest.append(["\(coins.lTC?.name ?? "")", "Máxima do dia:\(coins.lTC?.high ?? "")", "Mínima do dia: \(coins.lTC?.low ?? "")"])
            self.arrayTest.append(["\(coins.jPY?.name ?? "")", "Máxima do dia:\(coins.jPY?.high ?? "")", "Mínima do dia: \(coins.jPY?.low ?? "")"])
            self.arrayTest.append(["\(coins.cHF?.name ?? "")", "Máxima do dia:\(coins.cHF?.high ?? "")", "Mínima do dia: \(coins.cHF?.low ?? "")"])
            self.arrayTest.append(["\(coins.aUD?.name ?? "")", "Máxima do dia:\(coins.aUD?.high ?? "")", "Mínima do dia: \(coins.aUD?.low ?? "")"])
            self.arrayTest.append(["\(coins.cNY?.name ?? "")", "Máxima do dia:\(coins.cNY?.high ?? "")", "Mínima do dia: \(coins.cNY?.low ?? "")"])
            self.arrayTest.append(["\(coins.iLS?.name ?? "")", "Máxima do dia:\(coins.iLS?.high ?? "")", "Mínima do dia: \(coins.iLS?.low ?? "")"])
            self.arrayTest.append(["\(coins.eTH?.name ?? "")", "Máxima do dia:\(coins.eTH?.high ?? "")", "Mínima do dia: \(coins.eTH?.low ?? "")"])
            self.arrayTest.append(["\(coins.xRP?.name ?? "")", "Máxima do dia:\(coins.xRP?.high ?? "")", "Mínima do dia: \(coins.xRP?.low ?? "")"])
            
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
