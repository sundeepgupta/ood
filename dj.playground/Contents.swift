enum RemixType {
    case None
    case RepeatEach
    case RepeatAll
}

class RepeatEachService {
    func newSongs(originalSongs songs: [String]) -> [String] {
        var newSongs = [String]()
        for song in songs {
            newSongs.append(song)
            newSongs.append(song)
        }
        return newSongs
    }
}

class RepeatAllService {
    func newSongs(originalSongs songs: [String]) -> [String] {
        return songs + songs
    }
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
            let repeatEachService = RepeatEachService()
            self.songs = repeatEachService.newSongs(originalSongs: self.songs)
            
        case .RepeatAll:
            let repeatAllService = RepeatAllService()
            self.songs = repeatAllService.newSongs(originalSongs: self.songs)
            
        case .None:
            break
        }
        
        return self.songs.joinWithSeparator("\n")
    }
}

Playlist().spin(remixType: .RepeatEach)

Playlist().spin(remixType: .RepeatAll)

Playlist().spin(remixType: .None)