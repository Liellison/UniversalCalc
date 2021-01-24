//
//  CoinsDao.swift
//  UniversalCalc
//
//  Created by Liellison Menezes on 12/01/21.
//

import Foundation

class CoinsDao {
    class func pesquisarCEP(_ coin: String, completion: @escaping (CoinsTo) -> Void) {
            guard let url = URL(string: "https://economia.awesomeapi.com.br/json/all/") else { return }
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    guard let response = response as? HTTPURLResponse else { return }
                    if response.statusCode == 200 {
                        guard let data = data else { return }
                        do {
                            let coins = try JSONDecoder().decode(CoinsTo.self, from: data)
                            completion(coins)
                        } catch {
                            print(error.localizedDescription)
                        }
                    } else {
                        print("Status inválido do servidor, Status Code: \(response.statusCode)")
                    }
                } else {
                    print(error!.localizedDescription)
                }
            }.resume()
        }
}
