class Playlist {
    private var songs = [
        "Work",
        "Stressed Out",
        "Love Yourself"
    ]
    
    func spin(repeatEach repeatEach: Bool) -> String {
        if repeatEach {
            var newSongs = [String]()
            for song in self.songs {
                newSongs.append(song)
                newSongs.append(song)
            }
            self.songs = newSongs
        }
        
        return self.songs.joinWithSeparator("\n")
    }
}

Playlist().spin(repeatEach: true)

Playlist().spin(repeatEach: false)