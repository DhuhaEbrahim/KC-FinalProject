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
    @State var name: String = ""
    @State var password: String = ""
   
    @State var language: Language = .english
    @State private var birthdate = Date()
    @State var isPublic: Bool = true
    @State private var showingAlert = false
    init(){
            UITableView.appearance().backgroundColor = .clear
        }
        
    var body: some View {
        
            Form(content: {
                Section(header: Text("Account")) {
                    
                    TextField("Username", text: $name)
                    
                    SecureField("Password", text: $password)
                }
                Section(header: Text("User Info")) {
                    
                    
                    // Date picker
                    DatePicker("Date of birth",
                               selection: $birthdate,
                               displayedComponents: [.date])
                    // Scroll picker
                    Picker("Language", selection: $language) {
                        ForEach(Language.allCases) { language in
                            Text(language.rawValue.capitalized).tag(language)
                        }
                    }
                }
                Section(header: Text("Settings")) {
                    Text("Notifications")
                    Text("App appearance")
                    Text("Log out")
                    Toggle(isOn: $isPublic, label: {
                        HStack {
                            Text("Agree to our")
                            // Link
                            Link("terms of Service", destination: URL(string: "https://www.example.com/TOS.html")!)
                        }
                    })
                }
                
                    
                  
                    // Button
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
                        Alert(title: Text("Form submitted"),
                              message: Text("Thanks \(name)\n your data ia saved !"),
                              dismissButton: .default(Text("OK")))
                    }
                
            }).foregroundColor(Color("Dark"))
            .background(Color("Secondary"))
            
        
    }
}
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
