//
//  CoinsTO.swift
//  UniversalCalc
//
//  Created by Liellison Menezes on 12/01/21.
//

import Foundation

struct CoinsTo: Decodable {
    let uSD : USD?
    let uSDT : USDT?
    let cAD : CAD?
    let eUR : EUR?
    let gBP : GBP?
    let aRS : ARS?
    let bTC : BTC?
    let lTC : LTC?
    let jPY : JPY?
    let cHF : CHF?
    let aUD : AUD?
    let cNY : CNY?
    let iLS : ILS?
    let eTH : ETH?
    let xRP : XRP?

    enum CodingKeys: String, CodingKey {

        case uSD = "USD"
        case uSDT = "USDT"
        case cAD = "CAD"
        case eUR = "EUR"
        case gBP = "GBP"
        case aRS = "ARS"
        case bTC = "BTC"
        case lTC = "LTC"
        case jPY = "JPY"
        case cHF = "CHF"
        case aUD = "AUD"
        case cNY = "CNY"
        case iLS = "ILS"
        case eTH = "ETH"
        case xRP = "XRP"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        uSD = try values.decodeIfPresent(USD.self, forKey: .uSD)
        uSDT = try values.decodeIfPresent(USDT.self, forKey: .uSDT)
        cAD = try values.decodeIfPresent(CAD.self, forKey: .cAD)
        eUR = try values.decodeIfPresent(EUR.self, forKey: .eUR)
        gBP = try values.decodeIfPresent(GBP.self, forKey: .gBP)
        aRS = try values.decodeIfPresent(ARS.self, forKey: .aRS)
        bTC = try values.decodeIfPresent(BTC.self, forKey: .bTC)
        lTC = try values.decodeIfPresent(LTC.self, forKey: .lTC)
        jPY = try values.decodeIfPresent(JPY.self, forKey: .jPY)
        cHF = try values.decodeIfPresent(CHF.self, forKey: .cHF)
        aUD = try values.decodeIfPresent(AUD.self, forKey: .aUD)
        cNY = try values.decodeIfPresent(CNY.self, forKey: .cNY)
        iLS = try values.decodeIfPresent(ILS.self, forKey: .iLS)
        eTH = try values.decodeIfPresent(ETH.self, forKey: .eTH)
        xRP = try values.decodeIfPresent(XRP.self, forKey: .xRP)
    }
    
}

struct USD : Codable {
    let code : String?
    let codein : String?
    let name : String?
    let high : String?
    let low : String?
    let varBid : String?
    let pctChange : String?
    let bid : String?
    let ask : String?
    let timestamp : String?
    let create_date : String?

    enum CodingKeys: String, CodingKey {

        case code = "code"
        case codein = "codein"
        case name = "name"
        case high = "high"
        case low = "low"
        case varBid = "varBid"
        case pctChange = "pctChange"
        case bid = "bid"
        case ask = "ask"
        case timestamp = "timestamp"
        case create_date = "create_date"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        code = try values.decodeIfPresent(String.self, forKey: .code)
        codein = try values.decodeIfPresent(String.self, forKey: .codein)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        high = try values.decodeIfPresent(String.self, forKey: .high)
        low = try values.decodeIfPresent(String.self, forKey: .low)
        varBid = try values.decodeIfPresent(String.self, forKey: .varBid)
        pctChange = try values.decodeIfPresent(String.self, forKey: .pctChange)
        bid = try values.decodeIfPresent(String.self, forKey: .bid)
        ask = try values.decodeIfPresent(String.self, forKey: .ask)
        timestamp = try values.decodeIfPresent(String.self, forKey: .timestamp)
        create_date = try values.decodeIfPresent(String.self, forKey: .create_date)
    }

}

struct USDT : Codable {
    let code : String?
    let codein : String?
    let name : String?
    let high : String?
    let low : String?
    let varBid : String?
    let pctChange : String?
    let bid : String?
    let ask : String?
    let timestamp : String?
    let create_date : String?

    enum CodingKeys: String, CodingKey {

        case code = "code"
        case codein = "codein"
        case name = "name"
        case high = "high"
        case low = "low"
        case varBid = "varBid"
        case pctChange = "pctChange"
        case bid = "bid"
        case ask = "ask"
        case timestamp = "timestamp"
        case create_date = "create_date"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        code = try values.decodeIfPresent(String.self, forKey: .code)
        codein = try values.decodeIfPresent(String.self, forKey: .codein)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        high = try values.decodeIfPresent(String.self, forKey: .high)
        low = try values.decodeIfPresent(String.self, forKey: .low)
        varBid = try values.decodeIfPresent(String.self, forKey: .varBid)
        pctChange = try values.decodeIfPresent(String.self, forKey: .pctChange)
        bid = try values.decodeIfPresent(String.self, forKey: .bid)
        ask = try values.decodeIfPresent(String.self, forKey: .ask)
        timestamp = try values.decodeIfPresent(String.self, forKey: .timestamp)
        create_date = try values.decodeIfPresent(String.self, forKey: .create_date)
    }

}

struct CAD : Codable {
    let code : String?
    let codein : String?
    let name : String?
    let high : String?
    let low : String?
    let varBid : String?
    let pctChange : String?
    let bid : String?
    let ask : String?
    let timestamp : String?
    let create_date : String?

    enum CodingKeys: String, CodingKey {

        case code = "code"
        case codein = "codein"
        case name = "name"
        case high = "high"
        case low = "low"
        case varBid = "varBid"
        case pctChange = "pctChange"
        case bid = "bid"
        case ask = "ask"
        case timestamp = "timestamp"
        case create_date = "create_date"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        code = try values.decodeIfPresent(String.self, forKey: .code)
        codein = try values.decodeIfPresent(String.self, forKey: .codein)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        high = try values.decodeIfPresent(String.self, forKey: .high)
        low = try values.decodeIfPresent(String.self, forKey: .low)
        varBid = try values.decodeIfPresent(String.self, forKey: .varBid)
        pctChange = try values.decodeIfPresent(String.self, forKey: .pctChange)
        bid = try values.decodeIfPresent(String.self, forKey: .bid)
        ask = try values.decodeIfPresent(String.self, forKey: .ask)
        timestamp = try values.decodeIfPresent(String.self, forKey: .timestamp)
        create_date = try values.decodeIfPresent(String.self, forKey: .create_date)
    }

}

struct EUR : Codable {
    let code : String?
    let codein : String?
    let name : String?
    let high : String?
    let low : String?
    let varBid : String?
    let pctChange : String?
    let bid : String?
    let ask : String?
    let timestamp : String?
    let create_date : String?

    enum CodingKeys: String, CodingKey {

        case code = "code"
        case codein = "codein"
        case name = "name"
        case high = "high"
        case low = "low"
        case varBid = "varBid"
        case pctChange = "pctChange"
        case bid = "bid"
        case ask = "ask"
        case timestamp = "timestamp"
        case create_date = "create_date"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        code = try values.decodeIfPresent(String.self, forKey: .code)
        codein = try values.decodeIfPresent(String.self, forKey: .codein)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        high = try values.decodeIfPresent(String.self, forKey: .high)
        low = try values.decodeIfPresent(String.self, forKey: .low)
        varBid = try values.decodeIfPresent(String.self, forKey: .varBid)
        pctChange = try values.decodeIfPresent(String.self, forKey: .pctChange)
        bid = try values.decodeIfPresent(String.self, forKey: .bid)
        ask = try values.decodeIfPresent(String.self, forKey: .ask)
        timestamp = try values.decodeIfPresent(String.self, forKey: .timestamp)
        create_date = try values.decodeIfPresent(String.self, forKey: .create_date)
    }

}

struct GBP : Codable {
    let code : String?
    let codein : String?
    let name : String?
    let high : String?
    let low : String?
    let varBid : String?
    let pctChange : String?
    let bid : String?
    let ask : String?
    let timestamp : String?
    let create_date : String?

    enum CodingKeys: String, CodingKey {

        case code = "code"
        case codein = "codein"
        case name = "name"
        case high = "high"
        case low = "low"
        case varBid = "varBid"
        case pctChange = "pctChange"
        case bid = "bid"
        case ask = "ask"
        case timestamp = "timestamp"
        case create_date = "create_date"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        code = try values.decodeIfPresent(String.self, forKey: .code)
        codein = try values.decodeIfPresent(String.self, forKey: .codein)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        high = try values.decodeIfPresent(String.self, forKey: .high)
        low = try values.decodeIfPresent(String.self, forKey: .low)
        varBid = try values.decodeIfPresent(String.self, forKey: .varBid)
        pctChange = try values.decodeIfPresent(String.self, forKey: .pctChange)
        bid = try values.decodeIfPresent(String.self, forKey: .bid)
        ask = try values.decodeIfPresent(String.self, forKey: .ask)
        timestamp = try values.decodeIfPresent(String.self, forKey: .timestamp)
        create_date = try values.decodeIfPresent(String.self, forKey: .create_date)
    }

}

struct ARS : Codable {
    let code : String?
    let codein : String?
    let name : String?
    let high : String?
    let low : String?
    let varBid : String?
    let pctChange : String?
    let bid : String?
    let ask : String?
    let timestamp : String?
    let create_date : String?

    enum CodingKeys: String, CodingKey {

        case code = "code"
        case codein = "codein"
        case name = "name"
        case high = "high"
        case low = "low"
        case varBid = "varBid"
        case pctChange = "pctChange"
        case bid = "bid"
        case ask = "ask"
        case timestamp = "timestamp"
        case create_date = "create_date"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        code = try values.decodeIfPresent(String.self, forKey: .code)
        codein = try values.decodeIfPresent(String.self, forKey: .codein)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        high = try values.decodeIfPresent(String.self, forKey: .high)
        low = try values.decodeIfPresent(String.self, forKey: .low)
        varBid = try values.decodeIfPresent(String.self, forKey: .varBid)
        pctChange = try values.decodeIfPresent(String.self, forKey: .pctChange)
        bid = try values.decodeIfPresent(String.self, forKey: .bid)
        ask = try values.decodeIfPresent(String.self, forKey: .ask)
        timestamp = try values.decodeIfPresent(String.self, forKey: .timestamp)
        create_date = try values.decodeIfPresent(String.self, forKey: .create_date)
    }

}

struct BTC : Codable {
    let code : String?
    let codein : String?
    let name : String?
    let high : String?
    let low : String?
    let varBid : String?
    let pctChange : String?
    let bid : String?
    let ask : String?
    let timestamp : String?
    let create_date : String?

    enum CodingKeys: String, CodingKey {

        case code = "code"
        case codein = "codein"
        case name = "name"
        case high = "high"
        case low = "low"
        case varBid = "varBid"
        case pctChange = "pctChange"
        case bid = "bid"
        case ask = "ask"
        case timestamp = "timestamp"
        case create_date = "create_date"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        code = try values.decodeIfPresent(String.self, forKey: .code)
        codein = try values.decodeIfPresent(String.self, forKey: .codein)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        high = try values.decodeIfPresent(String.self, forKey: .high)
        low = try values.decodeIfPresent(String.self, forKey: .low)
        varBid = try values.decodeIfPresent(String.self, forKey: .varBid)
        pctChange = try values.decodeIfPresent(String.self, forKey: .pctChange)
        bid = try values.decodeIfPresent(String.self, forKey: .bid)
        ask = try values.decodeIfPresent(String.self, forKey: .ask)
        timestamp = try values.decodeIfPresent(String.self, forKey: .timestamp)
        create_date = try values.decodeIfPresent(String.self, forKey: .create_date)
    }

}

struct LTC : Codable {
    let code : String?
    let codein : String?
    let name : String?
    let high : String?
    let low : String?
    let varBid : String?
    let pctChange : String?
    let bid : String?
    let ask : String?
    let timestamp : String?
    let create_date : String?

    enum CodingKeys: String, CodingKey {

        case code = "code"
        case codein = "codein"
        case name = "name"
        case high = "high"
        case low = "low"
        case varBid = "varBid"
        case pctChange = "pctChange"
        case bid = "bid"
        case ask = "ask"
        case timestamp = "timestamp"
        case create_date = "create_date"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        code = try values.decodeIfPresent(String.self, forKey: .code)
        codein = try values.decodeIfPresent(String.self, forKey: .codein)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        high = try values.decodeIfPresent(String.self, forKey: .high)
        low = try values.decodeIfPresent(String.self, forKey: .low)
        varBid = try values.decodeIfPresent(String.self, forKey: .varBid)
        pctChange = try values.decodeIfPresent(String.self, forKey: .pctChange)
        bid = try values.decodeIfPresent(String.self, forKey: .bid)
        ask = try values.decodeIfPresent(String.self, forKey: .ask)
        timestamp = try values.decodeIfPresent(String.self, forKey: .timestamp)
        create_date = try values.decodeIfPresent(String.self, forKey: .create_date)
    }

}

struct JPY : Codable {
    let code : String?
    let codein : String?
    let name : String?
    let high : String?
    let low : String?
    let varBid : String?
    let pctChange : String?
    let bid : String?
    let ask : String?
    let timestamp : String?
    let create_date : String?

    enum CodingKeys: String, CodingKey {

        case code = "code"
        case codein = "codein"
        case name = "name"
        case high = "high"
        case low = "low"
        case varBid = "varBid"
        case pctChange = "pctChange"
        case bid = "bid"
        case ask = "ask"
        case timestamp = "timestamp"
        case create_date = "create_date"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        code = try values.decodeIfPresent(String.self, forKey: .code)
        codein = try values.decodeIfPresent(String.self, forKey: .codein)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        high = try values.decodeIfPresent(String.self, forKey: .high)
        low = try values.decodeIfPresent(String.self, forKey: .low)
        varBid = try values.decodeIfPresent(String.self, forKey: .varBid)
        pctChange = try values.decodeIfPresent(String.self, forKey: .pctChange)
        bid = try values.decodeIfPresent(String.self, forKey: .bid)
        ask = try values.decodeIfPresent(String.self, forKey: .ask)
        timestamp = try values.decodeIfPresent(String.self, forKey: .timestamp)
        create_date = try values.decodeIfPresent(String.self, forKey: .create_date)
    }

}

struct CHF : Codable {
    let code : String?
    let codein : String?
    let name : String?
    let high : String?
    let low : String?
    let varBid : String?
    let pctChange : String?
    let bid : String?
    let ask : String?
    let timestamp : String?
    let create_date : String?

    enum CodingKeys: String, CodingKey {

        case code = "code"
        case codein = "codein"
        case name = "name"
        case high = "high"
        case low = "low"
        case varBid = "varBid"
        case pctChange = "pctChange"
        case bid = "bid"
        case ask = "ask"
        case timestamp = "timestamp"
        case create_date = "create_date"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        code = try values.decodeIfPresent(String.self, forKey: .code)
        codein = try values.decodeIfPresent(String.self, forKey: .codein)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        high = try values.decodeIfPresent(String.self, forKey: .high)
        low = try values.decodeIfPresent(String.self, forKey: .low)
        varBid = try values.decodeIfPresent(String.self, forKey: .varBid)
        pctChange = try values.decodeIfPresent(String.self, forKey: .pctChange)
        bid = try values.decodeIfPresent(String.self, forKey: .bid)
        ask = try values.decodeIfPresent(String.self, forKey: .ask)
        timestamp = try values.decodeIfPresent(String.self, forKey: .timestamp)
        create_date = try values.decodeIfPresent(String.self, forKey: .create_date)
    }

}

struct AUD : Codable {
    let code : String?
    let codein : String?
    let name : String?
    let high : String?
    let low : String?
    let varBid : String?
    let pctChange : String?
    let bid : String?
    let ask : String?
    let timestamp : String?
    let create_date : String?

    enum CodingKeys: String, CodingKey {

        case code = "code"
        case codein = "codein"
        case name = "name"
        case high = "high"
        case low = "low"
        case varBid = "varBid"
        case pctChange = "pctChange"
        case bid = "bid"
        case ask = "ask"
        case timestamp = "timestamp"
        case create_date = "create_date"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        code = try values.decodeIfPresent(String.self, forKey: .code)
        codein = try values.decodeIfPresent(String.self, forKey: .codein)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        high = try values.decodeIfPresent(String.self, forKey: .high)
        low = try values.decodeIfPresent(String.self, forKey: .low)
        varBid = try values.decodeIfPresent(String.self, forKey: .varBid)
        pctChange = try values.decodeIfPresent(String.self, forKey: .pctChange)
        bid = try values.decodeIfPresent(String.self, forKey: .bid)
        ask = try values.decodeIfPresent(String.self, forKey: .ask)
        timestamp = try values.decodeIfPresent(String.self, forKey: .timestamp)
        create_date = try values.decodeIfPresent(String.self, forKey: .create_date)
    }

}

struct CNY : Codable {
    let code : String?
    let codein : String?
    let name : String?
    let high : String?
    let low : String?
    let varBid : String?
    let pctChange : String?
    let bid : String?
    let ask : String?
    let timestamp : String?
    let create_date : String?

    enum CodingKeys: String, CodingKey {

        case code = "code"
        case codein = "codein"
        case name = "name"
        case high = "high"
        case low = "low"
        case varBid = "varBid"
        case pctChange = "pctChange"
        case bid = "bid"
        case ask = "ask"
        case timestamp = "timestamp"
        case create_date = "create_date"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        code = try values.decodeIfPresent(String.self, forKey: .code)
        codein = try values.decodeIfPresent(String.self, forKey: .codein)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        high = try values.decodeIfPresent(String.self, forKey: .high)
        low = try values.decodeIfPresent(String.self, forKey: .low)
        varBid = try values.decodeIfPresent(String.self, forKey: .varBid)
        pctChange = try values.decodeIfPresent(String.self, forKey: .pctChange)
        bid = try values.decodeIfPresent(String.self, forKey: .bid)
        ask = try values.decodeIfPresent(String.self, forKey: .ask)
        timestamp = try values.decodeIfPresent(String.self, forKey: .timestamp)
        create_date = try values.decodeIfPresent(String.self, forKey: .create_date)
    }

}

struct ILS : Codable {
    let code : String?
    let codein : String?
    let name : String?
    let high : String?
    let low : String?
    let varBid : String?
    let pctChange : String?
    let bid : String?
    let ask : String?
    let timestamp : String?
    let create_date : String?

    enum CodingKeys: String, CodingKey {

        case code = "code"
        case codein = "codein"
        case name = "name"
        case high = "high"
        case low = "low"
        case varBid = "varBid"
        case pctChange = "pctChange"
        case bid = "bid"
        case ask = "ask"
        case timestamp = "timestamp"
        case create_date = "create_date"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        code = try values.decodeIfPresent(String.self, forKey: .code)
        codein = try values.decodeIfPresent(String.self, forKey: .codein)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        high = try values.decodeIfPresent(String.self, forKey: .high)
        low = try values.decodeIfPresent(String.self, forKey: .low)
        varBid = try values.decodeIfPresent(String.self, forKey: .varBid)
        pctChange = try values.decodeIfPresent(String.self, forKey: .pctChange)
        bid = try values.decodeIfPresent(String.self, forKey: .bid)
        ask = try values.decodeIfPresent(String.self, forKey: .ask)
        timestamp = try values.decodeIfPresent(String.self, forKey: .timestamp)
        create_date = try values.decodeIfPresent(String.self, forKey: .create_date)
    }

}

struct ETH : Codable {
    let code : String?
    let codein : String?
    let name : String?
    let high : String?
    let low : String?
    let varBid : String?
    let pctChange : String?
    let bid : String?
    let ask : String?
    let timestamp : String?
    let create_date : String?

    enum CodingKeys: String, CodingKey {

        case code = "code"
        case codein = "codein"
        case name = "name"
        case high = "high"
        case low = "low"
        case varBid = "varBid"
        case pctChange = "pctChange"
        case bid = "bid"
        case ask = "ask"
        case timestamp = "timestamp"
        case create_date = "create_date"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        code = try values.decodeIfPresent(String.self, forKey: .code)
        codein = try values.decodeIfPresent(String.self, forKey: .codein)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        high = try values.decodeIfPresent(String.self, forKey: .high)
        low = try values.decodeIfPresent(String.self, forKey: .low)
        varBid = try values.decodeIfPresent(String.self, forKey: .varBid)
        pctChange = try values.decodeIfPresent(String.self, forKey: .pctChange)
        bid = try values.decodeIfPresent(String.self, forKey: .bid)
        ask = try values.decodeIfPresent(String.self, forKey: .ask)
        timestamp = try values.decodeIfPresent(String.self, forKey: .timestamp)
        create_date = try values.decodeIfPresent(String.self, forKey: .create_date)
    }

}

struct XRP : Codable {
    let code : String?
    let codein : String?
    let name : String?
    let high : String?
    let low : String?
    let varBid : String?
    let pctChange : String?
    let bid : String?
    let ask : String?
    let timestamp : String?
    let create_date : String?

    enum CodingKeys: String, CodingKey {

        case code = "code"
        case codein = "codein"
        case name = "name"
        case high = "high"
        case low = "low"
        case varBid = "varBid"
        case pctChange = "pctChange"
        case bid = "bid"
        case ask = "ask"
        case timestamp = "timestamp"
        case create_date = "create_date"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        code = try values.decodeIfPresent(String.self, forKey: .code)
        codein = try values.decodeIfPresent(String.self, forKey: .codein)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        high = try values.decodeIfPresent(String.self, forKey: .high)
        low = try values.decodeIfPresent(String.self, forKey: .low)
        varBid = try values.decodeIfPresent(String.self, forKey: .varBid)
        pctChange = try values.decodeIfPresent(String.self, forKey: .pctChange)
        bid = try values.decodeIfPresent(String.self, forKey: .bid)
        ask = try values.decodeIfPresent(String.self, forKey: .ask)
        timestamp = try values.decodeIfPresent(String.self, forKey: .timestamp)
        create_date = try values.decodeIfPresent(String.self, forKey: .create_date)
    }

}
