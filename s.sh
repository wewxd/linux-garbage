if [[ $(tty) == *"1" ]]; then
	i=0
	k=(Q S D F G H J K L M)
	a=($(ls /usr/share/xsessions))
	read -n1 -rsp "$(
		for i in "${!a[@]}"; do
			echo "${k[$i]}: ${a[$i]::-8}"
		done
	)" c
	for i in "${!k[@]}"; do
		if [[ ${k[$i]} == ${c^^} ]]; then
		startx `cat "/usr/share/xsessions/${a[$i]}"|awk -F 'Exec=' '{print $2}'`
		fi
	done
fi
