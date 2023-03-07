//
//  Track.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/2/22.
//

import Foundation

// TODO: Pt 1 - Create a Track model struct
struct Movie {
    let movieName: String
    let movieAverage: String
    let imageFirst: URL
    let imageSecond: URL
    // Detail properties
    let movieVote: String
    let moviePop: String
    let description: String
}

// TODO: Pt 1 - Create an extension with a mock tracks static var
extension Movie {

    /// An array of mock tracks
    static var mockTracks: [Movie]  = [
        Movie(movieName: "Knock at the Cabin",
              movieAverage: "Average Vote:6.6",
              imageFirst: URL(string:"https://image.tmdb.org/t/p/original/dm06L9pxDOL9jNSK4Cb6y139rrG.jpg")!,
              imageSecond: URL(string:"https://image.tmdb.org/t/p/original/22z44LPkMyf5nyyXvv8qQLsbom.jpg")!,
              movieVote: "Vote Amount:778",
              moviePop: "Popularity:4969",
              description: "While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost."),
        Movie(movieName: "Black Panther: Wakanda Forever",
              movieAverage: "Average Vote:7.4",
              imageFirst: URL(string: "https://image.tmdb.org/t/p/original/sv1xJUazXeYqALzczSZ3O6nkH75.jpg")!,
              imageSecond: URL(string:"https://image.tmdb.org/t/p/original/xDMIl84Qo5Tsu62c9DGWhmPI67A.jpg")!,
              movieVote: "Vote Amount:3823",
              moviePop: "Popularity:3501",
              description: "Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death.  As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda."),
        Movie(movieName: "Puss in Boots: The Last Wish",
              movieAverage: "Average Vote:8.4",
              imageFirst: URL(string: "https://image.tmdb.org/t/p/original/kuf6dutpsT0vSVehic3EZIqkOBt.jpg")!,
              imageSecond: URL(string:"https://image.tmdb.org/t/p/original/b1Y8SUb12gPHCSSSNlbX4nB3IKy.jpg")!,
              movieVote: "Vote Amount:4277",
              moviePop: "Popularity:3278",
              description: "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives."),
        Movie(movieName: "Plane",
              movieAverage: "Average Vote:6.9",
              imageFirst: URL(string: "https://image.tmdb.org/t/p/original/qi9r5xBgcc9KTxlOLjssEbDgO0J.jpg")!,
              imageSecond: URL(string:"https://image.tmdb.org/t/p/original/9Rq14Eyrf7Tu1xk0Pl7VcNbNh1n.jpg")!,
              movieVote: "Vote Amount:770",
              moviePop: "Popularity:2618",
              description: "After a heroic job of successfully landing his storm-damaged aircraft in a war zone, a fearless pilot finds himself between the agendas of multiple militias planning to take the plane and its passengers hostage."),
        Movie(movieName: "Little Dixie",
              movieAverage: "Average Vote:6.4",
              imageFirst: URL(string: "https://image.tmdb.org/t/p/original/cmWTZj9zzT9KFt3XyL0gssL7Ig8.jpg")!,
              imageSecond: URL(string:"https://image.tmdb.org/t/p/original/k4V6EvpcOsu8CX10JD0H53lFXLq.jpg")!,
              movieVote: "Vote Amount:46",
              moviePop: "Popularity:2015",
              description: "Erstwhile Special Forces operative Doc Alexander is asked to broker a truce with the Mexican drug cartel in secrecy. When Oklahoma Governor Richard Jeffs celebrates the execution of a high-ranking cartel member on TV, his Chief of Staff and Doc inform him about the peace he just ended. But it’s too late, as Cuco, the cartel’s hatchet man, has set his vengeful sights on Doc’s daughter Dixie.")
    ]

}


// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}
