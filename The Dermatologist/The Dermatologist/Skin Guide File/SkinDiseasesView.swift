//
//  SkinDiseasesView.swift
//  The Dermatologist
//
//  Created by dhuha kaweyani on 02/09/2022.
//

import SwiftUI

struct SkinDiseasesView: View {
  
    var diseaseDetails : SkinGuideModel
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                HStack {
                    Spacer()
                    Text(diseaseDetails.diseaseName)
                        .padding()
                        .font(.custom("Rubik-Bold", size: 30))
                        .frame(width: 300, height: 50)
                        .background(Color("Primary"))
                        .clipShape(Capsule())
                    Spacer()
                }
                
                Text("Overview : \n").font(.custom("Rubik-Medium", size: 30))
                
                VStack{
                    Text(diseaseDetails.overView)
                    HStack{
                        VStack{
                            Image( diseaseDetails.diseaseImage[0] ).resizable().frame(width: 150, height: 200)
                            Text( diseaseDetails.diseaseImage[0] )
                        }
                        VStack{
                            Image( diseaseDetails.diseaseImage[1] ).resizable().frame(width: 150, height: 200)
                            Text( diseaseDetails.diseaseImage[0] ) }
                    }.padding()
                }
                
                VStack(alignment: .leading) {
                Text("Causes : \n").font(.custom("Rubik-Medium", size: 30))
                
                Text(diseaseDetails.cause)
                
                Text("Symptoms : \n").font(.custom("Rubik-Medium", size: 30))
                
                Text(diseaseDetails.symptoms)
                
                Text("Prevention : \n").font(.custom("Rubik-Medium", size: 30))
                
                Text(diseaseDetails.prevention)
                
                Text("Treatment : \n").font(.custom("Rubik-Medium", size: 30))
                Text(diseaseDetails.treatment)
                }
                
            }
            .padding()
            .foregroundColor(Color("Dark"))
            .font(.custom("Rubik-Regular", size: 20))
            
        }.padding()
            .background(Color("Secondary"))
    }
}

















struct SkinDiseasesView_Previews: PreviewProvider {
    static var previews: some View {
        SkinDiseasesView(diseaseDetails: SkinGuideModel(diseaseName: "Eczema", overView: "Atopic dermatitis (eczema) is a condition that causes dry, itchy and inflamed skin. It's common in young children but can occur at any age. Atopic dermatitis is long lasting (chronic) and tends to flare sometimes. It can be irritating but it's not contagious. People with atopic dermatitis are at risk of developing food allergies, hay fever and asthma. Moisturizing regularly and following other skin care habits can relieve itching and prevent new outbreaks (flares). Treatment may also include medicated ointments or creams.\n", diseaseImage: ["Atopic dermatitis behind the knees", "Atopic dermatitis behind the chest"], cause: "In some people, atopic dermatitis is related to a gene variation that affects the skin's ability to provide protection. With a weak barrier function, the skin is less able to retain moisture and protect against bacteria, irritants, allergens and environmental factors — such as tobacco smoke. In other people, atopic dermatitis is caused by too much of the bacteria Staphylococcus aureus on the skin. This displaces helpful bacteria and disrupts the skin's barrier function. A weak skin barrier function might also trigger an immune system response that causes the inflamed skin and other symptoms. Atopic dermatitis (eczema) is one of several types of dermatitis. Other common types are contact dermatitis and seborrheic dermatitis (dandruff). Dermatitis isn't contagious.\n", symptoms: "Atopic dermatitis (eczema) symptoms can appear anywhere on the body and vary widely from person to person. They may include: \n - Dry, cracked skin. \n - Itchiness (pruritus) \n - Rash on swollen skin that varies in color depending on your skin color \n - Small, raised bumps, on brown or Black skin \n - Oozing and crusting. \n - Thickened skin. \n - Darkening of the skin around the eyes. \n - Raw, sensitive skin from scratching. \n Atopic dermatitis often begins before age 5 and may continue into the teen and adult years. For some people, it flares and then clears up for a time, even for several years.\n", prevention: "Developing a basic skin care routine may help prevent eczema flares. The following tips may help reduce the drying effects of bathing: \n - Moisturize your skin at least twice a day. Creams, ointments, shea butter and lotions seal in moisture. Choose a product or products that work well for you. Ideally, the best one for you will be safe, effective, affordable and unscented. \n Using petroleum jelly on your baby's skin may help prevent development of atopic dermatitis. \n - Take a daily bath or shower. Use warm, rather than hot, water and limit your bath or shower to about 10 minutes. \n - Use a gentle, nonsoap cleanser. Choose a cleanser that's free of dyes, alcohols and fragrance. For young children, you usually need only warm water to get them clean — no soap or bubble bath needed. Soap can be especially irritating to the skin of young children. For people of any age, deodorant soaps and antibacterial soaps can remove too much of the skin's natural oils and dry the skin. Don't scrub the skin with a washcloth or loofah. \n - Pat dry. After bathing, gently pat the skin with a soft towel. Apply moisturizer while your skin is still damp (within three minutes). \n The triggers for atopic dermatitis vary widely from person to person. Try to identify and avoid irritants that trigger your eczema. In general, avoid anything that causes an itch because scratching often triggers a flare. \n Common triggers for atopic dermatitis include: \n - Rough wool fabric \n - Dry skin \n - Skin infection \n - Heat and sweat \n - Stress \n - Cleaning products \n - Dust mites and pet dander \n - Mold \n - Pollen \n - Smoke from tobacco \n - Cold and dry air \n - Fragrances \n - Other irritating chemicals \n  Infants and children may have flares triggered by eating certain foods, such as eggs and cow's milk. Talk with your child's health care provider about identifying potential food allergies. \n Once you understand what triggers your eczema, talk with your health care provider about how to manage your symptoms and prevent flares.\n", treatment: "The main treatments for atopic eczema are: \n - Emollients (moisturisers) – used every day to stop the skin becoming dry. \n - Topical corticosteroids – creams and ointments used to reduce swelling and redness during flare-ups. \n Other treatments include: \n  - Topical pimecrolimus or tacrolimus for eczema in sensitive sites not responding to simpler treatment. \n - Antihistamines for severe itching. \n - Bandages or special body suits to allow the body to heal underneath. \n - More powerful treatments offered by a dermatologist (skin specialist)" ))
    }
}
