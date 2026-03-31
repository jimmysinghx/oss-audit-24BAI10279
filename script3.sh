DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=================================="
echo " Directory Audit Report"
echo "=================================="
echo ""


for DIR in "${DIRS[@]}"; do
   
    if [ -d "$DIR" ]; then

        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
     
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "Directory : $DIR"
        echo "Permissions/Owner : $PERMS"
        echo "Size      : $SIZE"
        echo "----------------------------------"
    else
        echo "$DIR does not exist on this system."
        echo "----------------------------------"
    fi
done

echo ""
echo "--- Git Config Directory Check ---"


GIT_CONFIG="$HOME/.gitconfig"
GIT_DIR="$HOME/.git"

if [ -f "$GIT_CONFIG" ]; then
    echo ".gitconfig found at $GIT_CONFIG"
    PERMS=$(ls -l $GIT_CONFIG | awk '{print $1, $3, $4}')
    echo "Permissions: $PERMS"
else
    echo "No .gitconfig file found in home directory."
fi