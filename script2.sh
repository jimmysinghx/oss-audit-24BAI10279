PACKAGE="git"

if dpkg -l $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed on this system."
    echo ""
  
    dpkg -l $PACKAGE | grep -E "$PACKAGE"
    echo ""
    echo "Additional details:"

    VERSION=$(git --version)
    echo "Version: $VERSION"
else
    echo "$PACKAGE is NOT installed."
    echo "Install it with: sudo apt install $PACKAGE"
fi

echo ""
echo "--- Philosophy Note ---"


case $PACKAGE in
    git)
        echo "Git: born from necessity when proprietary tools failed the open source world."
        ;;
    apache2)
        echo "Apache: the web server that built the open internet."
        ;;
    mysql)
        echo "MySQL: open source at the heart of millions of applications."
        ;;
    vlc)
        echo "VLC: built by students who just wanted to watch video freely."
        ;;
    firefox)
        echo "Firefox: a nonprofit browser fighting to keep the web open."
        ;;
    *)
        echo "$PACKAGE: part of the open source ecosystem that powers the modern world."
        ;;
esac