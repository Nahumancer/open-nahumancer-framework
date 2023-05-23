extends Button

var folder_link = "https://onedrive.live.com/download?cid=C1AF071278468F40&resid=c1af071278468f40%212458&authkey=AC6G0zuMnaX9od0"
var version_link = ""
var folder_path = "user://myGame.exe"
var version_path = "user://version.txt"
var http_request: HTTPRequest

func _ready():
	self.disabled = true

func check_game_dir(path: String) -> bool:
	# get current dir
	# get_current_drive 
	# get_directories 
	# get_drive_name 
	# get_space_left 
	# make_dir 
	# make_dir_absolute 
	# make_dir_recursive (a/b/c/d) (think where installing to multiple game libraries across disks like steam) 
	# make_dir_recursive_absolute 
	# name of main game dir : 
#	var dir = Directory.new()
#	return dir.file_exists(path)

#func verify_game_files():
	# Check if files are complete
#	if file_exists(exe_path) && file_exists(pck_path) && file_exists(version_path):
#		_download_file(version_link,version_path,false)
#		pass
#	else:
#		# download
#		_check_integrity()
#		pass

#func download_game_files(link: String, path: String, just_version: bool):
#	#Create an HTTP request node and connect its completion signal.
#	http_request = HTTPRequest.new()
#	add_child(http_request)
	
#	self.text = "Downloading " + str(path.get_file())
#	http_request.connect("request_completed", self, "_install_file", [path, just_version])
	# Handle errors
#	var error = http_request.request_raw(link)
#	if error != OK:
#		self.text = "Download Error: " + str(error)

#func install_files(_result, _response_code, _headers, body, path, just_version: bool):
#	if just_version:
#		var new_version = str(body.get_string_from_utf8())
#		_compare_version(new_version)
#		return

#	var dir = Directory.new()
#	dir.remove(path)

#	var file = File.new()
#	file.open(path, File.WRITE)
#	file.store_buffer(body)
#	file.close()
#	_check_integrity()
#	## Check integrity

#func check_missing_files():
#	if !file_exists(exe_path):
#		_download_file(exe_link, exe_path, false)
#		print("No Exe Found")
#		return
#	if !file_exists(version_path):
#		_download_file(pck_link, pck_path, false)
#		print("no version")
#		return
#	if !file_exists(pck_path):
#		_download_file(pck_link, pck_path, false)
#		print("no pck")
#		return
#	self.text = "Start Game!"
#	self.disabled = false

#func _compare_version(new_version):
#	var file = File.new()
#	file.open(version_path, File.READ)
#	var cur_version = file.get_as_text()
#	file.close()
#	if int(new_version) > int(cur_version):
#		var dir = Directory.new()
#		dir.remove(version_path)
#	_check_integrity()

#func _start_game():
#	OS.shell_open(OS.get_user_data_dir() + "/myGame.exe")

#func _on_pressed():
#	_start_game()
