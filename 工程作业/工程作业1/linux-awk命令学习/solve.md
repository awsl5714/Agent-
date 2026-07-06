awk '{print $2 $3}' score.txt
awk '$3 >= 90' solve.md
 awk 'NR>=2 &&  NR<=4' score.txt
awk '{print $2 "对应的状态是" $4}' score.txt
awk -F ':' '{print $2}' score2.txt
