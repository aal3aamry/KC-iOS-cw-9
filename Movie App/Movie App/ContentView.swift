//
//  ContentView.swift
//  Movie App
//
//  Created by عبدالرحمن العامري on 24/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    
    var gradient : [Color] = [Color("Color01") , Color("Color02")]
    
    var body: some View {
        
        ZStack {
            NavigationView {
                List{
                    
                    
                    ForEach(MyMovies){  movie in
                        NavigationLink(destination: {
                            MovieInfo(thatmovie: movie, MovieName: "")
                        }, label:{
                            
                            MyView(movie: movie.MovieName)
                            
                            
                        })
                        
                        
                        
                    }
                    
                }.navigationTitle("Movies")
                
            }
            
        }.background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .topLeading, endPoint: .bottomLeading))
            .cornerRadius(50)
            .shadow(color: .black, radius: 2, x: 2, y: 2)
            .ignoresSafeArea()
    }
}
struct ContentView_Previews: PreviewProvider {
    @State var movie: String
    static var previews: some View {
        ContentView()
    }
}


