class SongService {
    func newSongs(originalSongs songs: [String]) -> [String] {
        return songs
    }
}

class RepeatEachService: SongService {
    override func newSongs(originalSongs songs: [String]) -> [String] {
        var newSongs = [String]()
        for song in songs {
            newSongs.append(song)
            newSongs.append(song)
        }
        return newSongs
    }
}

class RepeatAllService: SongService {
    override func newSongs(originalSongs songs: [String]) -> [String] {
        return songs + songs
    }
}

class Playlist {
    private var songs = [
        "Work",
        "Stressed Out",
        "Love Yourself"
    ]
    
    func spin(songService service: SongService) -> String {
        self.songs = service.newSongs(originalSongs: self.songs)
        
        return self.songs.joinWithSeparator("\n")
    }
}

Playlist().spin(songService: RepeatEachService())

Playlist().spin(songService: RepeatAllService())

Playlist().spin(songService: SongService())