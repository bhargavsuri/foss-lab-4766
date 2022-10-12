echo "enter option"
read op
case  $op in
1) echo "OS and version,release number, kernel version" 
if  [ -f  /etc/os-release ]
then
echo " OS: "  
cat /etc/os-release
fi
;;
2) echo "all available shells"
if [ -f  /etc/shells ] 
then
cat /etc/shells
fi
;;
3) echo "mouse settings"
xinput  --list  9
;;
4) echo "cpu information"
if [ -f  /proc/cpuinfo ] 
then
cat /proc/cpuinfo
fi
;;
5)  echo "memmory information"
if [ -f  /proc/meminfo ] 
then
cat /proc/meminfo
fi
;;
6)  echo " hard disk information"
echo "Model: 'cat/proc/ide/hde/model ' "
 echo "Driver: 'cat /proc/ide/hde/driver' "
echo -e "Cache size: 'cat /proc/ide/hda/cache' "
;;
7) echo "file system"
cat /proc/mounts
if  which dialog > /dev/null 
then
        digalog  --backtitle "Linux  Sofware Diagnostics (LSD) Shell Sceipt Ver.1.0"  --title
"press Up/Down Keys to move" --textbox  /tmp/info.tmp.01.$$$ 21  70
else
      cat /tmp/info.tmp.01.$$$ |more
fi
rm -f  /tmp/info.tmp.01.$$$
;;
*) echo "enter valid option only"
    exit;;
esac   
