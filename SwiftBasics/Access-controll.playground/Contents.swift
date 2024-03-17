import Foundation

// rule of thumb
// we want everything as private as possible
// this will make code easier read/debug and its best practise

struct MovieModel {
    let title: String
    let genre: MovieGenre
    private(set) var isFavorite: Bool

    
//        can use let if create new instance, works the same
//     change value of struct is make new instanse// better define inside struct
    func updateFavoriteStatus(newValue: Bool) -> MovieModel {
        MovieModel(title: title, genre: genre, isFavorite: newValue)
    }
    
    mutating func updateFavoriteStatus2(newValue: Bool) {
        isFavorite = newValue
    }
}

enum MovieGenre {
    case comdy, action, horror
}

class MovieManager {
   //public means can get and set from outside of class
    public var movie1 = MovieModel(title: "Avatar", genre: .action, isFavorite: false)
    // private means can get or set value from out of class
    private var movie2 = MovieModel(title: "Step Brothers", genre: .comdy, isFavorite: false)
    
    // only set in in class , can read from outside
    private(set) var movie3 = MovieModel(title: "Avenger", genre: .action, isFavorite: false)
    
    func updateMovie3(isFavorite: Bool) {
        movie3.updateFavoriteStatus2(newValue: true)
    }
}

let manager = MovieManager()


//Version1 public
// we can get and set the value from outside of the object
//"Too Public" might cause problems
let movie1 = manager.movie1
manager.movie1 = manager.movie1.updateFavoriteStatus(newValue: true)

//Version2 Private
// can't get or set from out side, can't ebven get!!!
//"No access"
//let movie2 = manager.movie2
//manager.movie2 = manager.movie2.updateFavoriteStatus(newValue: true)

//Version1 private(set) ------ best practise
// we can get the value but can't set the value from outside of the object

let movie3 = manager.movie3
manager.updateMovie3(isFavorite: true)
