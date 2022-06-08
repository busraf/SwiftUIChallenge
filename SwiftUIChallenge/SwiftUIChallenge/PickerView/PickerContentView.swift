//
//  PickerContentView.swift
//  SwiftUIChallenge
//
//  Created by Busra Filgir on 08/06/2022.
//

import SwiftUI

struct PickerContentView: View {
  @ObservedObject var viewModel = PickerViewModel()

  var body: some View {

    VStack(spacing: Sizes.extraLarge) {
       Spacer()
      
       VStack(spacing: Sizes.small) {
         Text(Strings.days)
           .bold()
           .font(.largeTitle)
         Text(Strings.daysLeft)
       }

       HStack {
         Spacer(minLength: 200)
        
         ZStack(alignment: .center) {
            Circle()
                .foregroundColor(CustomColor.pink)
        
            Image(viewModel.selectedItem.getImage())
            .resizable()
            .frame(width: 250, height: 250)
            .clipShape(Circle())
         }
         .frame(width: 300, height: 300)
        }
      
        Spacer()
         
        VStack(spacing: Sizes.large) {
          Text(Strings.approx)
            .font(.system(size: FontSizes.regular))

          Text("€ \(viewModel.selectedItem.getPrice())")
            .bold()
            .font(.largeTitle)

          HStack(spacing: Sizes.small) {
            Text(Strings.until)
              .font(.system(size: FontSizes.regular))
            Text(Strings.date)
              .bold()
              .font(.system(size: FontSizes.regular))
          }

          Picker("", selection: $viewModel.selectedItem) {
            ForEach(PickerItems.allCases, id: \.self, content: { value in
              Text(value.rawValue.capitalized)
            })
          }.pickerStyle(SegmentedPickerStyle())
            .padding(EdgeInsets(top: 0,
                                leading: 0,
                                bottom: 30,
                                trailing: 0))
        }
      
        Spacer()
      }
      .padding(Sizes.medium)
      .foregroundColor(CustomColor.text)
      .background(CustomColor.background)
    }
}

struct PickerContetView_Preview: PreviewProvider {
    static var previews: some View {
        PickerContentView()
        .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
