param(
	[Parameter(Mandatory=$True,Position=1)]
	[string]$src_file_name
	)

$src_file_name_backup = $src_file_name.Substring(0,$src_file_name.LastIndexOf('.'))+ "_backup.png"
#$png_file_name_tmp = $png_file_name.Substring(0,$png_file_name.LastIndexOf('.'))+ "_tmp.png"

Copy-Item $src_file_name $src_file_name_backup

#"SUCCESS: File " + $src_file_name + " is copied to " + $src_file_name_backup

#magick convert -interlace None $png_file_name $png_file_name_tmp
magick convert -interlace None $src_file_name $src_file_name

#"SUCCESS: File " + $src_file_name + " was converted!"

#Overwrite data with tempdata
#copy $png_file_name_tmp $png_file_name