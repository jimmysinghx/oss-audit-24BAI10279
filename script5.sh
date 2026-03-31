echo "=================================="
echo " Open Source Manifesto Generator"
echo "=================================="
echo ""
echo "Answer three questions to generate your manifesto."
echo ""


read -p "1. Name one open source tool you use every day: " TOOL
read -p "2. In one word, what does freedom mean to you: " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD


DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo ""
echo "Generating your manifesto..."
echo ""

echo "Open Source Manifesto — $(whoami)" > $OUTPUT
echo "Generated on: $DATE" >> $OUTPUT
echo "" >> $OUTPUT
echo "Every day I rely on $TOOL, a tool built openly and shared freely by people" >> $OUTPUT
echo "who believed that $FREEDOM matters more than control." >> $OUTPUT
echo "Software like this was not built to be owned. It was built to be used," >> $OUTPUT
echo "improved, and passed forward." >> $OUTPUT
echo "" >> $OUTPUT
echo "I believe in that philosophy. Given the chance, I would build $BUILD" >> $OUTPUT
echo "and release it openly, so that someone else could take it further than I ever could." >> $OUTPUT
echo "That is what open source means: not just free to use, but free to become something greater." >> $OUTPUT
echo "" >> $OUTPUT
echo "Signed: $(whoami) | $DATE" >> $OUTPUT


echo "Manifesto saved to $OUTPUT"
echo ""
echo "=================================="
cat $OUTPUT
echo "=================================="

