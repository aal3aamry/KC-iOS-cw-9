//
//  MovieInfo.swift
//  Movie App
//
//  Created by عبدالرحمن العامري on 24/08/2022.
//

import SwiftUI

struct MovieInfo: View {
    var thatmovie: MovieModel
    var MovieName: String

    var body: some View {
        ZStack{
            
            
            Image(thatmovie.MovieName).opacity(0.9).blur(radius: 6).ignoresSafeArea()
            
            
                            VStack{
                                
                                Image(thatmovie.MovieName)
                .resizable()
                .scaledToFit()
     
                .border(.white, width: 20)

                .clipShape(Circle())
                .frame(width: 250, height: 250)
                                Text(thatmovie.MovieName)
                    .font(.system(size: 60, weight: .black, design: .rounded))
                    .foregroundColor(.white)
                
                                ScrollView(.horizontal) {
                                    HStack{
                                        ForEach(thatmovie.MovieAct, id: \.self){act in
                                            VStack{
                                            Text(act)
                                                  
                                                    .foregroundColor(.white)
                                                    .fontWeight(.semibold)
                                                  
                                                    .frame(width: 200, height: 50)
                                                    .background(Color.black.opacity(0.7))
                                                    .cornerRadius(40)
                                                    .padding(.all)

                                            Image(act)
                                                .resizable()
                                                .scaledToFit()
                                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                                .frame(width: 200, height: 200)
                                             
                                        }
                                        }
                                    }
                                }.frame(width: 380, height: 300)
            }
         
            
            
            
            
            
            
            
            
            
            
            
        }
    }
}

struct MovieInfo_Previews: PreviewProvider {
    static var previews: some View {
        MovieInfo(thatmovie: MovieModel(MovieName: "Furu", MovieAct: [""]), MovieName: "")
    }
}
