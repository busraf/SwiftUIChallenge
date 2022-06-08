//
//  PickerViewModel.swift
//  SwiftUIChallenge
//
//  Created by Busra Filgir on 08/06/2022.
//

import SwiftUI

enum PickerItems: String, CaseIterable, Identifiable {
    case hour
    case day
    case week
    
    var id: PickerItems { self }
  
    func getImage() -> String {
      switch self {
      case .hour:
        return Asset.nl1.rawValue
      case .day:
        return Asset.nl2.rawValue
      case .week:
        return Asset.nl3.rawValue
      }
    }
  
    func getPrice() -> String {
      switch self {
      case .hour:
        return "1.23"
      case .day:
        return "29.35"
      case .week:
        return "290.89"
      }
    }
}

class PickerViewModel: ObservableObject {
  
    @Published var selectedItem: PickerItems = .hour
  
    init() { }
}
