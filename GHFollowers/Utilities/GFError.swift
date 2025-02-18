//
//  GFError.swift
//  GHFollowers
//
//  Created by Anubhav Tomar on 06/07/24.
//

import Foundation

enum GFError: String, Error {
    case inalidUsername         = "This username created an invalid request. Please try again later."
    case unableToComplete       = "Unable to complete your request. Please check your internet connection."
    case invalidResponse        = "Invalid response from the server. Please try again."
    case invalidData            = "The data received from the server was invalid. Please try again."
    case unableToFavorite       = "There was an error favoriting this user. Please try again."
    case alreadyInFavorites     = "You've already favorited this user. You must really LIKE them!"
}
