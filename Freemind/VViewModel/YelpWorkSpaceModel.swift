//
//  YelpWorkSpaceModel.swift
//  Freemind
//
//  Created by Nick Gordon on 2/7/23.
//


// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//  let yelpWorkSpace = try? JSONDecoder().decode(TestWorkSpace.self, from: jsonData)
//
//import Foundation
//




import Foundation

// MARK: - TestWorkSpace
struct TestWorkSpaceArray: Codable {
    let businesses: [TestWorkSpace]?
    let total: Int?
    let region: Region?
}

// MARK: - Business
struct TestWorkSpace: Codable, Identifiable {
    let id, alias, name: String?
    let imageURL: String?
    let isClosed: Bool?
    let url: String?
    let reviewCount: Int?
    let categories: [Category]?
    let rating: Double?
    let coordinates: Center?
    let transactions: [String]?
    let location: Location?
    let phone, displayPhone: String?
    let distance: Double?
    let price: String?

    enum CodingKeys: String, CodingKey {
        case id, alias, name
        case imageURL = "image_url"
        case isClosed = "is_closed"
        case url
        case reviewCount = "review_count"
        case categories, rating, coordinates, transactions, location, phone
        case displayPhone = "display_phone"
        case distance, price
    }
}

// MARK: - Category
struct Category: Codable {
    let alias, title: String?
}

// MARK: - Center
struct Center: Codable {
    let latitude, longitude: Double?
}

// MARK: - Location
struct Location: Codable {
    let address1: String?
    let address2, address3: String?
    let city, zipCode, country, state: String?
    let displayAddress: [String]?

    enum CodingKeys: String, CodingKey {
        case address1, address2, address3, city
        case zipCode = "zip_code"
        case country, state
        case displayAddress = "display_address"
    }
}

// MARK: - Region
struct Region: Codable {
    let center: Center?
}

