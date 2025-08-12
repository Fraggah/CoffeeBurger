extends Node

const COINS = preload("res://Idle+Tycoon+Assets/Idle Tycoon Assets/Sound/coins.wav")
const BLOP_UI = preload("res://Idle+Tycoon+Assets/Idle Tycoon Assets/Sound/blop_ui.mp3")

@export var stream_players: Array[AudioStreamPlayer]

func play_audio(clip: AudioStream, volume: float) -> void:
	var free_player := get_free_audio_player()
	if free_player:
		free_player.stream = clip
		free_player.volume_db = volume
		free_player.play()

func play_coins() -> void:
	play_audio(COINS, 10)

func play_ui() -> void:
	play_audio(BLOP_UI, 0.1)


func get_free_audio_player() -> AudioStreamPlayer:
	for audio: AudioStreamPlayer in stream_players:
		if not audio.playing:
			return audio
	return null
