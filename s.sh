if [[ $(tty) == *'1' ]]; then
	echo '      :)'
	k=(Q S D F G H J K L M)
	a=($(ls /usr/share/xsessions))
	for i in "${!a[@]}"; do
		echo "${k[$i]}: ${a[$i]::-8}"
	done
	read -n1 -rsp 'anything else: none' c
	for ((i=0;i<${#a[@]};i++)); do
		if [[ ${k[$i]} == ${c^^} ]]; then
			startx `awk -F 'Exec=' '{print $2}' "/usr/share/xsessions/${a[$i]}"`
		fi
	done
	echo ''
fi
