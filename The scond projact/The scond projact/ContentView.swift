//
//  ContentView.swift
//  The scond projact
//
//  Created by Abrahim MOHAMMED on 15/11/2021.
//

import SwiftUI

struct ContentView: View {
   
    
    let info = [
    
        information(imags:"square" , title: "Apple Frames", subTitle: "169 action", colorsFreame: .cyan),
        
        
        
        information(imags:"square.and.arrow.down" , title: "Twitter Video Downloader V2.6", subTitle: "67 action", colorsFreame: .mint),
          
        information(imags:"coloncurrencysign.circle" , title: "calculate Tip", subTitle: "17 action", colorsFreame: .cyan),
    
       
        information(imags:"phone.fill" , title: "Xs Frames", subTitle: "55 action", colorsFreame: .orange),
        
        
        
        
        information(imags:"square.stack.3d.up" , title: "What is a shortcut", subTitle: "37 action", colorsFreame: .purple),
    
        
        information(imags:"timer" , title: "Take a Break", subTitle: "13 action", colorsFreame: .brown),
        
        information(imags:"plus.message" , title: "Text Last image", subTitle: "2 action", colorsFreame: .green),
    
       
        
    
        information(imags:"waveform.path" , title: "Shazam shortcut", subTitle: "32 action", colorsFreame: .blue)
    
    
    ]

    private var gridLayout = [
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
    
    var body: some View {
        
        NavigationView{
            ScrollView {
                   
                LazyVGrid(columns: gridLayout, spacing: 20) {
                           
                            ForEach((info), id: \.title) { item in
                                VStack{
                                    HStack{
                                        Image(systemName: item.imags)
                                   Spacer()

                                Image(systemName: "ellipsis.circle.fill")

                                        
                                    }.padding(.horizontal)
                                        .padding(.top, 12)
                                    HStack{
                                    Text(item.title)
                                            .frame( height: 40)
                                            .minimumScaleFactor(0.4)
                                        Spacer()
                                    }
                                    
                                  
                                    HStack{
                                    Text(item.subTitle)
                                    .font(.caption)
                                        Spacer()
                                    }
                                   

                                    
                                    
                                }
                                 .frame(minWidth: 0, maxWidth: .infinity, minHeight: 90)
                                 .background(item.colorsFreame)
                                .cornerRadius(9)
                            }
                            
                        }
                        .padding(.all, 10)
                    }
            
            
            
            
            
            
            
                
                
                
    
            
}
    
  
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//Text("\($0)")
//
//    .font(.title)
//    .foregroundColor(Color.white)
//    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 90)
//    .background(Color.red)
//    .cornerRadius(9)
