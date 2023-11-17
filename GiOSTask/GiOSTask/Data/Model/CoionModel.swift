//
//  CoionModel.swift
//  GiOSTask
//
//  Created by iSHIKA on 15/11/23.
//

import Foundation
struct ResponseData<T: Decodable>: Decodable {
    var status: Status?
    var data: T
}

// MARK: - Datum
struct CryptoData: Codable {
    var id: Int
    var name: String
    var symbol: String
    var quote: [String: QuoteDetail]
    var cmcRank: Int

    enum CodingKeys: String, CodingKey {
        case id
        case cmcRank = "cmc_rank"
        case name
        case symbol
        case quote
    }
}


// MARK: - Usd
struct QuoteDetail: Codable {
    var price: Double
    var volume24H: Double
    var percentChange24H: Double
    
    enum CodingKeys: String, CodingKey {
        case price
        case volume24H = "volume_24h"
        case percentChange24H = "percent_change_24h"
    }
}

// MARK: - Status
struct Status: Codable {
    var elapsed: Int?
    var notice, errorMessage: String?
    var errorCode, creditCount: Int?
    var timestamp: String?
    var totalCount: Int?

    enum CodingKeys: String, CodingKey {
        case elapsed, notice
        case errorMessage = "error_message"
        case errorCode = "error_code"
        case creditCount = "credit_count"
        case timestamp
        case totalCount = "total_count"
    }
}

struct CryptoIconModel: Codable {
    var logo: String?
}

enum APIErrorCode: Int, Codable {
    case success = 200
    case badRequest = 400
    case unauthorised = 401
    case forbidden = 403
    case tooManyRequests = 429
    case serverError = 500
}
