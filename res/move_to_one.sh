rm -rf all_thresholds/*

for dir in */     # list directories in the form "/tmp/dirname/"
do
    dir=${dir%*/}      # remove the trailing "/"
    folder="${dir##*/}"    # print everything after the final "/"

	if [ "$folder" != "all_thresholds" ]
    then
		for file in $dir/*_th.png
		do
			name="${file##*/}"
			# echo $folder
			
			# random_name=$RANDOM.png
			random_name=$( cat /proc/sys/kernel/random/uuid )	
			cp $dir/$name all_thresholds/$random_name.png
		done
	fi
done
