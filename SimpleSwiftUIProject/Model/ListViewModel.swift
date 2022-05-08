//
//  ListViewModel.swift
//  SimpleSwiftUIProject
//
//  Created by MahyarShakouri on 5/8/22.
//

import Foundation
import Combine

class ListViewModel: ObservableObject {
    
    @Published var numberList : [Int] = [1,2,3,4,5,6]
    
    func addOneMoreToList() {
        let max = numberList.max() ?? 0
        numberList.append(max + 1)
    }
}
