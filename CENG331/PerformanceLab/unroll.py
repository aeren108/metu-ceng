for i in range(8):
	print("src += limit;")
	for j in range(8):
		print("temp += src->red * tker->red;")
		print("temp += src->green * tker->green;")
		print("temp += src->blue * tker->blue;")
		print("src++;")
		print("tker++;")
		print()
	print()