function add_a_new_line_to_file() {
	local file=$1
	local line=$2
	local branch=$3

	git checkout $branch

	local message=$2
	if [[ -z $line ]]; then
		message="."
	fi

	echo $line >> $file

	git add $file

	git commit -m "$message"
}