//
//  LoginViewModel.swift
//  SimpleSwiftUIProject
//
//  Created by MahyarShakouri on 5/8/22.
//

import Foundation
import Combine

class LoginViewModel : ObservableObject {
    
    @Published var username : String = ""
    @Published var isButtonEnabled : Bool = false
    
    var cancellables = [AnyCancellable]()
    
    init() {
        $username.sink { value in
            print(value)
            if !value.isEmpty{
                self.isButtonEnabled = true
            }else{
                self.isButtonEnabled = false
            }
        }
        .store(in: &cancellables)
    }
}
