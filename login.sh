#!/bin/bash
USUARIO=Lucas
SENHA=123
VOLTA=1
while (( $VOLTA != 0 )); do
	clear
	echo "Debian GNU/Linux 8 jessie tty2"
	echo
	QNT=1
	while (( $QNT <= 5  )); do
		echo -n "jessie login: "
		read USER
		echo -n "password: "
		read -s PASS
		echo
		if [[ $USER == $USUARIO ]]; then
			if [[ $PASS == $SENHA ]]; then
				QNT=6
				VOLTA=0
			fi
		fi
		if (( $QNT <= 5 )); then
			sleep 3
			echo
			echo "login incorrect"
		fi
		let QNT=($QNT+1)
	done
done
