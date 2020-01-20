clear
echo "--------------------"
echo "|     Кто ты ?     |"
echo "|------------------|"
echo "| 1. Termux        |"
echo "| 2. Другой Unix   |"
echo "|                  |"
echo "| Введите 1 или 2: |"
echo "--------------------"
read numb
if [ $numb = "1" ]
then
	pkg install python
	pkg install python3
	pkg install python3-pip
	pkg install dos2unix
	pip3 install requests
	pip3 install colorama
	pip3 install asyncio
	cp ~/spymer/spammer.py /data/data/com.termux/files/usr/bin/spymer
	dos2unix /data/data/com.termux/files/usr/bin/spymer
	chmod 777 /data/data/com.termux/files/usr/bin/spymer
else
	if [ $numb = "2" ]
	then

		if [ "$(whoami)" != 'root' ]; then
			echo "У вас нет прав. Запустите install.sh с root правами (sudo sh ~/spymer/install.sh)"
			exit
		else
			apt install dos2unix
			apt install python3 python3-pip
			pip3 install requests
			pip3 install colorama
		        pip3 install asyncio
			cp ~/spymer/spammer.py /usr/bin/spymer
			dos2unix /usr/bin/spymer
			chmod 777 /usr/bin/spymer
		fi
	else
		echo "Некорректный ввод"
	fi
fi
