//
//  ListItemVIew.swift
//  SimpleSwiftUIProject
//
//  Created by MahyarShakouri on 5/8/22.
//

import SwiftUI

struct ListItemVIew : View {
    
    var item : Int
    var body: some View {
        
        HStack{
            if item % 2 == 0 {
                Circle()
                    .frame(width: 16, height: 16)
                    .foregroundColor(.green)
            } else {
                Circle()
                    .frame(width: 16, height: 16)
                    .foregroundColor(.black)
            }
            
            Text("\(item)")
        }
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemVIew(item: 1)
    }
}
