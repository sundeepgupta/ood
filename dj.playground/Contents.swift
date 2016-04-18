protocol Remixer {
    func newSongs(originalSongs songs: [String]) -> [String]
}

class SongService: Remixer {
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

class DJ: Remixer {
    func newSongs(originalSongs songs: [String]) -> [String] {
        return [
            "Ice Ice Baby",
            "Can't Touch This",
            "It Takes Two"
        ]
    }
}

class ReverseService: SongService {
    override func newSongs(originalSongs songs: [String]) -> [String] {
        return songs.reverse()
    }
}

class Playlist {
    private var songs = [
        "Work",
        "Stressed Out",
        "Love Yourself"
    ]
    
    func spin(remixer remixer: Remixer) -> String {
        self.songs = remixer.newSongs(originalSongs: self.songs)
        
        return self.songs.joinWithSeparator("\n")
    }
}

Playlist().spin(remixer: RepeatEachService())

Playlist().spin(remixer: RepeatAllService())

Playlist().spin(remixer: ReverseService())

Playlist().spin(remixer: DJ())
