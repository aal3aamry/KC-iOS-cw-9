//
//  MovieModel.swift
//  Movie App
//
//  Created by عبدالرحمن العامري on 24/08/2022.
//

import Foundation


struct MovieModel: Identifiable{
    let id = UUID()
    
    var MovieName: String
    var MovieAct: [String]
    
}

var MyMovies = [
MovieModel(MovieName: "ToyStory", MovieAct: ["Don Rickles | Mr. Potato", "Erik von Detten | Sid", "Laurie Metcalf | Andy's mom", "Tim Allen | Buzz","Tom Hanks | Woody"]),
MovieModel(MovieName: "Fury", MovieAct: ["Shia LaBeouf", "Logan Lerman", "Brad Pitt", "Alicia von Rittberg"]),
MovieModel(MovieName: "TopGun", MovieAct: ["Jennifer Connelly", "Miles Teller", "Monica Barbaro", "Tom Cruise"]),
MovieModel(MovieName: "SpiderMan", MovieAct: ["Andrew Garfield", "Tobey Maguire", "Tom Holland", "Zendaya"]),
MovieModel(MovieName: "monsters", MovieAct: ["Billy Crystal", "John Goodman", "Mary Gibbs"])

]
