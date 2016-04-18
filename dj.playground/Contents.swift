class Playlist {
    private var songs = [
        "Work",
        "Stressed Out",
        "Love Yourself"
    ]
    
    func spin() -> String {
        return self.songs.joinWithSeparator("\n")
    }
}




Playlist().spin()
