if [[ $(tty) == *"1" ]]; then
	echo "      :)"
	k=(Q S D F G H J K L M A Z E R T Y U I O P)
	a=($(ls /usr/share/xsessions))
	for i in "${!a[@]}"; do
		echo "${k[$i]}: ${a[$i]::-8}"
	done
	read -n1 -rsp 'anything else: none' c
	for ((i=0;i<${#a[@]};i++)); do
		if [[ ${k[$i]} == ${c^^} ]]; then
			startx `cat "/usr/share/xsessions/${a[$i]}"|awk -F 'Exec=' '{print $2}'`
		fi
	done
	echo ""
fi
