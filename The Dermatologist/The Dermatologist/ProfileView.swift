//
//  ProfileView.swift
//  The Dermatologist
//
//  Created by dhuha kaweyani on 30/08/2022.
//

import SwiftUI

struct ProfileView: View {
    
    enum Language: String, CaseIterable, Identifiable {
        case english
        case french
        case spanish
        case japanese
        case other
        var id: String { self.rawValue }
    }
    @State var email: String = ""
    @State var password: String = ""
    @State var language: Language = .english
    @State private var birthdate = Date()
    @State var isPublic: Bool = true
    @State private var showingAlert = false
    
    init() {
        UITableView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        
        Form(content: {
            
            Section(header: Text("Account")) {
                
                TextField("Email", text: $email)
                
                SecureField("Password", text: $password)
            }
            Section(header: Text("User Info")) {
                
                
                // Date picker
                DatePicker("Date of birth",
                           selection: $birthdate,
                           displayedComponents: [.date])
                // Scroll picker
                
            }
            Section(header: Text("Settings")) {
                
                // Notificatios
                SettingsView(icon: "bell.badge", setting: "Notifications")
                
                // App Appearance
                SettingsView(icon: "moon.fill", setting: "App appearance")
                
                
                // Sign Out
                SettingsView(icon: "arrow.backward", setting: "Sign out")
                
                // Terms Of Service Agreement
                Toggle(isOn: $isPublic, label: {
                    HStack {
                        Text("Agree to our")
                        
                        // Link
                        Link("terms of Service", destination: URL(string: "https://www.example.com/TOS.html")!).font(.custom("Rubik-Medium", size: 17))
                    }
                })
                
                // Language Picker
                HStack{
                    SettingsView(icon: "globe", setting: "Language")
                    Picker("", selection: $language) {
                        ForEach(Language.allCases) { language in
                            Text(language.rawValue.capitalized).tag(language)
                        }
                    }
                }
            }
            
            
            
            
            // Save Button
            Button(action: {
                showingAlert = true
            }) {
                HStack {
                    Spacer()
                    Text("Save")
                    Spacer()
                }
            }
            
            .padding(10)
            .background(Color("Primary"))
            .cornerRadius(8)
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Done"),
                      message: Text("Thanks \n your data ia saved !"),
                      dismissButton: .default(Text("OK")))
            }
            
        })
        .font(.custom("Rubik-Regular", size: 17))
        .foregroundColor(Color("Dark"))
        .background(Color("Secondary"))
        
        
    }
}
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .previewDevice("iPhone 12 Pro")
    }
}

struct SettingsView: View {
    
    var icon : String
    var setting : String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
            Text(setting)
        }
    }
}
