grep -iE 'banana|jabuka|jagoda|dinja|lubenica' namirnice.txt

grep -ivE 'banana|jabuka' namirnice.txt > ne-voce.txt

for file in $(find ~/projekti/ -type f)
do
	grep -E '.*([A-Z]{3})([0-9]{6})' $file
done

find ./ -mtime +7 -mtime -14

for i in {1..15} ; do echo $i ; done
