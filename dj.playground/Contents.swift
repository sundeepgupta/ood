enum RemixType {
    case None
    case RepeatEach
    case RepeatAll
}

class Playlist {
    private var songs = [
        "Work",
        "Stressed Out",
        "Love Yourself"
    ]
    
    func spin(remixType type: RemixType) -> String {
        switch type {
        case .RepeatEach:
            var newSongs = [String]()
            for song in self.songs {
                newSongs.append(song)
                newSongs.append(song)
            }
            self.songs = newSongs
            
        case .RepeatAll:
            self.songs = self.songs + self.songs
            
        case .None:
            break
        }
        
        return self.songs.joinWithSeparator("\n")
    }
}

Playlist().spin(remixType: .RepeatEach)

Playlist().spin(remixType: .RepeatAll)

Playlist().spin(remixType: .None)