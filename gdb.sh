#/bin/bash
echo "Please Choose one mode of GDB?"
read -p "1.peda  2.gef  3.pwndgb :  " num

case $num in
	1) echo "source ~/peda/peda.py" > "/root/.gdbinit" ;;
	2) echo "source /root/.gdbinit-gef.py" > "/root/.gdbinit";;
	3) echo "source /root/pwndbg/gdbinit.py" > "/root/.gdbinit";;
	*) echo "Error!";;
esac

gdb $1 $2 $3 $4 $5 $6 $7
