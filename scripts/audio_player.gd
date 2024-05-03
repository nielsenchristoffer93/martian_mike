extends Node

var hurt_sfx: AudioStream = preload("res://assets/audio/hurt.wav")
var jump_sfx: AudioStream = preload("res://assets/audio/jump.wav")

func play_sfx(sfx_name: String):
	var stream = null
	if sfx_name == "hurt":
		stream = hurt_sfx
	elif sfx_name == "jump":
		stream = jump_sfx
	else:
		print("Invalid sfx name")
		return
	
	var audio_stream_player = AudioStreamPlayer.new()
	audio_stream_player.stream = stream
	audio_stream_player.name = "SFX"
	
	add_child(audio_stream_player)
	
	audio_stream_player.play()
	
	await audio_stream_player.finished
	audio_stream_player.queue_free()
