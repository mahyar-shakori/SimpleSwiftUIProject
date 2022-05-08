//
//  ContentView.swift
//  SimpleSwiftUIProject
//
//  Created by MahyarShakouri on 5/8/22.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject var viewModel = LoginViewModel()
    
    @State var  isButtonToggled = false
    @State var welcomeText = "Welcome to "
    
    var body: some View {
        
        NavigationView {
            
            VStack(spacing: 16){
                
                Spacer()
                
                VStack(spacing: 8){
                    TextField("Username", text: $viewModel.username)
                        .textFieldStyle(.roundedBorder)
                        .frame(height: 40, alignment: .center)
                    
                    TextField("Password", text: .constant(""))
                        .textFieldStyle(.roundedBorder)
                        .frame(height: 40, alignment: .center)
                        .keyboardType(.emailAddress)
                }
               
                Button("Sing In") {
                    if viewModel.isButtonEnabled == true {
                    self.welcomeText = "We are happy you are in "
                    self.isButtonToggled.toggle()
                    }
                }
                .frame(height: 40, alignment: .center)
                .frame(maxWidth: .infinity)
                .foregroundColor(Color.white)
                .background(RoundedRectangle(cornerRadius: 10).foregroundColor(viewModel.isButtonEnabled ? Color.blue : Color.gray))
                
                HStack(spacing: 0){
                    Text(welcomeText)
                    
                    Text("My App")
                        .bold()
                        .foregroundColor(isButtonToggled ? .brown : .yellow)
                }
                
                Spacer()
                
                NavigationLink("Skip this step...") {
                    ListView()
                }
                
                NavigationLink(destination: ListView(), isActive: $isButtonToggled) {
                    EmptyView()
                }
            }
            .padding(.horizontal, 32)
            .background(Color.gray.opacity(0.2))
        }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
