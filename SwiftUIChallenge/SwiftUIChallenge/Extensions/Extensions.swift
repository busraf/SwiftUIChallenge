//
//  Extensions.swift
//  SwiftUIChallenge
//
//  Created by Busra Filgir on 08/06/2022.
//

import SwiftUI

struct Strings {
  
  static let approx = "You can approximately spend"
  static let until = "until the"
  static let date = "24 June 2022"
  static let days = "17"
  static let daysLeft = "days left"
}

struct CustomColor {
  
  static let pink = Color("pinky")
  static let background = Color("background")
  static let text = Color("text")
}

struct FontSizes {
  static let regular = 14.0
}

struct Sizes {
  public static let small: CGFloat = 5
  public static let medium: CGFloat = 10
  public static let large: CGFloat = 15
  public static let extraLarge: CGFloat = 30
}

enum Asset: RawRepresentable, Equatable {
  case nl1, nl2, nl3

  var rawValue: String {
    switch self {
    case .nl1: return "nl1"
    case .nl2: return "nl2"
    case .nl3: return "nl3"
    }
  }
  
  init?(rawValue: String) { fatalError("init(rawValue:) has not been implemented.") }
}
