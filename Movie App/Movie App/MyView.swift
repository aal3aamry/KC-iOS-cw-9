//
//  MyView.swift
//  Movie App
//
//  Created by عبدالرحمن العامري on 24/08/2022.
//

import SwiftUI

struct MyView: View {
    @State var movie: String
    var body: some View {
     
       
                HStack{
                    
                    VStack {
                        Image(movie)
                            .resizable()
                        
                            .scaledToFit()
                            .clipShape(Circle())
                        .frame(width: 100, height: 100)
                        Spacer()
                    }
                    
                    Text(movie)
                    
                    
                    
                }
        
            }
        }
    


struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView(movie: "ToyStory")
    }
}
