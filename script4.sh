LOGFILE=$1
KEYWORD=${2:-"error"}   
COUNT=0


if [ -z "$LOGFILE" ]; then
    echo "Usage: $0 <logfile> [keyword]"
    exit 1
fi

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File '$LOGFILE' not found."
    exit 1
fi


if [ ! -s "$LOGFILE" ]; then
    echo "Warning: $LOGFILE is empty."
    read -p "Enter a different log file path to try: " LOGFILE
    if [ ! -f "$LOGFILE" ]; then
        echo "File not found. Exiting."
        exit 1
    fi
fi

while IFS= read -r LINE; do
  
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo ""
echo "=================================="
echo " Log Analysis Summary"
echo "=================================="
echo "File    : $LOGFILE"
echo "Keyword : $KEYWORD"
echo "Matches : $COUNT"
echo "=================================="

echo ""
echo "Last 5 lines containing '$KEYWORD':"
echo "----------------------------------"
grep -i "$KEYWORD" "$LOGFILE" | tail -5