extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_bn_gen_code_pressed():
	var num_vec = 256;

	print("const vec2 rand_offsets_v2[] = {")
	var count:int = 0
	var text:String = ""
	for i in num_vec:
		var v:Vector2 = Vector2(randf(), randf()) * 2 - Vector2.ONE
		v = v.normalized()
		if count == 0:
			text += "    vec2(%f, %f)," % [v.x, v.y]
		elif count % 4 == 0:
			text += ",\n    vec2(%f, %f)," % [v.x, v.y]
		else:
			text += ", vec2(%f, %f)" % [v.x, v.y]
		
		count += 1
	print(text)
	print("};")
	print("const uint RAND_OFFSETS_V2_SIZE = %du;" % num_vec)
		
	pass # Replace with function body.
