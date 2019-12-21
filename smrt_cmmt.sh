smrt_cmmt(){
	if [ -z "$2" ]
		git add .
		git commit -m "$1"
		git push origin 
}