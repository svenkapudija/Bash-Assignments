for file in $(find . -regextype posix-extended -regex '.*localhost_access_log\.([0-9]{4})-([0-9]{2})-([0-9]{2}).*')
do
	# Parse date
	date=$(echo $file | cut -d '.' -f3)
	year=$(echo $date | cut -d '-' -f1)
	month=$(echo $date | cut -d '-' -f2)
	day=$(echo $date | cut -d '-' -f3)

	echo "datum: "$day'-'$month'-'$year
	echo "----------------------------------------"

	cut $file -d '"' -f2 | sort | sed 's/ / : /' | uniq -c | sort -nr

done
