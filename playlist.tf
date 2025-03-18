resource "spotify_playlist" "Bollywood" {
  name = "Bollywood"
  tracks = ["5H4rKylLnO8KrmdXTRhj5s"]
}

data "spotify_search_track" "KK" {
  artist = "KK"
}   

resource "spotify_playlist" "slimshay" {
  name = "KK"
  tracks = [data.spotify_search_track.KK.tracks[0].id,
  data.spotify_search_track.KK.tracks[1].id,
  data.spotify_search_track.KK.tracks[2].id]
}