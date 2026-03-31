STUDENT_NAME="JIMMY SINGH"
SOFTWARE_CHOICE="Git"


KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')
CURRENT_DATE=$(date '+%d %B %Y %H:%M:%S')
HOME_DIR=$(echo $HOME)


echo "=================================="
echo " Open Source Audit — $STUDENT_NAME"
echo " Software: $SOFTWARE_CHOICE"
echo "=================================="
echo ""
echo "Distribution : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME_DIR"
echo "Uptime       : $UPTIME"
echo "Date/Time    : $CURRENT_DATE"
echo ""

echo "This system runs Linux, licensed under GPL v2."
echo "GPL v2 guarantees the freedom to run, study, modify and distribute the OS."
echo "=================================="