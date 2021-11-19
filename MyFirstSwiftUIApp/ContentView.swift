//
//  ContentView.swift
//  MyFirstSwiftUIApp
//
//  Created by Tatsuya Moriguchi on 11/18/21.
//

import SwiftUI


struct Data: Identifiable {
    var id = UUID()
    let title: String
    let imageName: String
    let imageDescription: String
    let imageTakenDate: String
}


struct ContentView: View {
    
    var items = [Data]()
    
    var body: some View {
        NavigationView{
            List(items) { data in
                //Image(data.title)
                NavigationLink(destination: DataView(data: data)) {
                    
                    HStack {
                        Image(data.imageName)
                            .resizable().frame(width: 100, height: 100, alignment: .center)
                            .aspectRatio(contentMode: .fill)
                        Text(data.title)
                            .foregroundColor(.green)
                            .padding()
                            .font(.system(size: 20, weight: .bold, design: .default))
                    }
                }
                
            }
            .navigationBarTitle("Fruits")
            
        }
  
    }
}


struct DataView: View {
    
    var data:Data
    var body: some View {
        VStack {
            Image(data.imageName)
                .resizable().frame(width: 400, height: 360, alignment: .center)
                .aspectRatio(contentMode: .fill)
            Text(data.imageDescription)
            Spacer()
            Text(data.imageTakenDate)
                .padding(5)
            
        
        }
        .navigationBarTitle(data.title)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(items: [
            Data(title: "Apple",
                 imageName: "apple",
                 imageDescription: "This is an apple.",
                 imageTakenDate: "1/1/2018"),
            Data(title: "Banana",
                 imageName: "banana",
                 imageDescription: "This is a banana.",
                 imageTakenDate: "1/1/2018"),
            Data(title: "Blackberry",
                 imageName: "blackberry",
                 imageDescription: "This is a blackberry.",
                 imageTakenDate: "1/1/2018"),
            Data(title: "Blueberry",
                 imageName: "blueberry",
                 imageDescription: "This is a blueberry.",
                 imageTakenDate: "1/1/2018"),
            Data(title: "Cherry",
                 imageName: "cherry",
                 imageDescription: "This is a cherry.",
                 imageTakenDate: "1/1/2018"),
            Data(title: "Grape",
                 imageName: "grape",
                 imageDescription: "This is a grape.",
                 imageTakenDate: "1/1/2018"),
            Data(title: "Citrus",
                 imageName: "citrus",
                 imageDescription: "This is a citrus.",
                 imageTakenDate: "1/1/2018"),
            Data(title: "Kiwi",
                 imageName: "kiwi",
                 imageDescription: "This is a kiwi.",
                 imageTakenDate: "1/1/2018"),
            Data(title: "Lemon",
                 imageName: "lemon",
                 imageDescription: "This is a lemon.",
                 imageTakenDate: "1/1/2018"),
            Data(title: "Orange",
                 imageName: "orange",
                 imageDescription: "This is an orange.",
                 imageTakenDate: "1/1/2018"),
            Data(title: "Peach",
                 imageName: "peach",
                 imageDescription: "This is a peach.",
                 imageTakenDate: "1/1/2018"),
            Data(title: "Pomegranate",
                 imageName: "pomegranate",
                 imageDescription: "This is a pomegranate.",
                 imageTakenDate: "1/1/2018"),
            Data(title: "Scotch Brite",
                 imageName: "scotchbrite",
                 imageDescription: "This is a scotchbrite.",
                 imageTakenDate: "1/1/2018"),
            Data(title: "Strawberry",
                 imageName: "strawberry",
                 imageDescription: "This is a strawberry.",
                 imageTakenDate: "1/1/2018"),
            Data(title: "Watermelon",
                 imageName: "watermelon",
                 imageDescription: "This is a watermelon.",
                 imageTakenDate: "1/1/2018"),

        
        ])
            .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro"))
    }
}
