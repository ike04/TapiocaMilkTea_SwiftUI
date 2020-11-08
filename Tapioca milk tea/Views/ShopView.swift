//
//  ShopView.swift
//  Tapioca milk tea
//
//  Created by 池田一成 on 2020/11/08.
//  Copyright © 2020 example.com. All rights reserved.
//

import SwiftUI

struct ShopView: View {
    var shop: Shop
    
    var body: some View {
        VStack {
            Rectangle()
            ShopImage(image: shop.image)
                .padding(.top, -130)
            Text(shop.name)
                .padding()
                .font(.largeTitle)
            Text(shop.address)
                .lineLimit(nil)
                .multilineTextAlignment(.center)
                .padding()
            Text("Phone: " + shop.phoneNumber)
                .padding()
        }
        navigationBarTitle(shop.name)
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ShopView(shop: dataStore.shops[2])
        }
    }
}
