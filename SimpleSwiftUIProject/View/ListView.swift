//
//  ListView.swift
//  SimpleSwiftUIProject
//
//  Created by MahyarShakouri on 5/8/22.
//

import SwiftUI

struct ListView: View {
    
    @ObservedObject var viewModel = ListViewModel()
    
    var body: some View {
        
        VStack {
            
            //                ScrollView {
            //                    LazyVStack {
            //                        ForEach(viewModel.numberList, id: \.self) { item in
            //
            //                            ListItemVIew(item: item)
            //                        }
            //                    }
            //                }
            
            List {
                ForEach(viewModel.numberList, id: \.self) { item in
                    
                    ListItemVIew(item: item)
                }
            }
            
            Button {
                viewModel.addOneMoreToList()
            } label: {
                Text("Add one more")
            }

        }
        
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
