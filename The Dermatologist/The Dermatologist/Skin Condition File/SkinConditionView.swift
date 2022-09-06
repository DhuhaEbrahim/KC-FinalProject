//
//  SkinConditionView.swift
//  The Dermatologist
//
//  Created by dhuha kaweyani on 30/08/2022.
//

import SwiftUI

struct SkinConditionView: View {
    
    // Image Picker components
    @State var imageData : Data = .init(capacity: 0)
    @State var show = false
    @State var imagePicker = false
    @State var source : UIImagePickerController.SourceType = .photoLibrary
    
    // Description Text Field
    @State var discribtion = ""
    
    // Gender Picker
    @State private var genderIndex = 0
    
    // Date Picker
    @State private var birthDate = Date()
    
    // Sending Confirmation Alert
    @State private var showingAlert = false
    @State private var isSent = false
    
    // Allergy Text Field
    @State private var allergy = ""
    
    // Age Text Field
    @State private var age = ""
    
    // Duration Picker
    var duration = ["Days", "Weeks", "Months", "Years"]
    @State private var selectedDuration = "Days"

    var body: some View {
        ZStack {
            Color("Secondary").ignoresSafeArea()
            ScrollView{
                
                VStack{
                    
                    NavigationLink(destination: ImagePicker(show: $imagePicker, image: $imageData, source: source), isActive: $imagePicker) {
                        Text("") }
                    
                    // Choose a Photo
                    HStack{
                        
                        circleView()
                        Button(action: {
                            self.show.toggle() }) {
                                Text("Choose a photo")
                                
                                Spacer()
                                
                                // To Show The Image Chosen
                                if imageData.count != 0 {
                                    Image(uiImage:UIImage(data: self.imageData)!).resizable().frame(width: 200, height: 200)
                                    
                                } else {
                                    Image(systemName: "photo")
                                }
                            }
                    }.padding()
                    
                    // Describe Condition
                    HStack{
                        circleView()
                        Text("Describe your condition :")
                        Spacer()
                    }.padding()
                    
                    TextField("type here", text: $discribtion)
                        .padding()
                        .frame(width: 370, height: 50)
                        .border(Color("Primary"), width: 3)
                    
                    
                    VStack{
                        
                        HStack{
                            circleView()
                            Text("Complete the following information :")
                            Spacer()
                        }.padding()
                        
                        //Gender Picker
                        HStack {
                            Text("Gender")
                            Spacer()
                            Picker(selection: $genderIndex, label: Text("Select Gender")) {
                                Text("male").tag(0)
                                Text("female").tag(1)
                            }.pickerStyle(SegmentedPickerStyle()).frame(width: 200, height: 30)
                        }.padding()
                        
                        // Age
                        HStack {
                            Text("Age")
                            Spacer()
                            TextField("ex: 23" , text: $age).padding()
                                .frame(width: 150, height: 40)
                                .border(Color("Primary"), width: 3)
                        }.padding()
                        
                        // Duration Picker
                        HStack {
                            Text("How long have you had this condition?")
                            Spacer()
                            Picker("Please choose", selection: $selectedDuration) {
                                ForEach(duration, id: \.self) {
                                    Text($0)
                                }
                                
                            }
                            .padding()
                            .frame(width: 100, height: 30)
                            .border(Color("Primary"), width: 3)
                            .accentColor(Color("Dark"))
                            
                        }.padding()
                        
                        //Allergies
                        HStack{
                            circleView()
                            Text("If you have any food or drug allergies please let us know :")
                                .padding(.top)
                            Spacer()
                            
                        }.padding()
                        TextField("type here", text: $allergy)
                            .padding()
                            .frame(width: 370, height: 50)
                            .border(Color("Primary"), width: 3)
                    }
                    
                
                    
                    
                    Spacer(minLength: 50)
                    // Send Button
                    Button("submit and send") {
                        showingAlert = true
                    }
                        
                    .padding()
                    .background(Color("Primary"))
                    .cornerRadius(15)
                    
                     // Allert
                    .alert(isPresented: $showingAlert) {
                            Alert(title: Text("!"), message: Text("are you sure you want to submit and send your case to your dermatologist ?"), primaryButton: .default(Text("send")) {
                                isSent = true
                            } , secondaryButton: .cancel())
                        }
                    
                    NavigationLink(destination: HomeView(name: "dhuha")
                        .navigationBarBackButtonHidden(true), isActive: $isSent) {
                        Text("") }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                 // Image Picker Action Sheet
                }.actionSheet(isPresented: $show) {
                    ActionSheet(title: Text("Take a picture or select a photo from your photo library"),message: Text(""), buttons: [.default(Text("photo library"), action: {
                        self.source = .photoLibrary
                        self.imagePicker.toggle()
                    }),.default(Text("camera"), action: {
                        self.source = .camera
                        self.imagePicker.toggle()
                    })
                                                                                                                                    ])
                }
           
            
            }
        }.foregroundColor(Color("Dark"))
            .font(.custom("Rubik-Regular", size: 17))
    }
}

struct SkinConditionView_Previews: PreviewProvider {
    static var previews: some View {
        SkinConditionView()
    }
}

struct circleView: View {
    
    var body: some View {
        Circle().frame(width: 20, height: 20).foregroundColor(Color("Primary"))
    }
}
