sed -n '3p' score.txt
sed -i '' '/Fail/d' score.txt
sed 's/Fail/EXCELLENT/g' score.txt
sed -i '' 's/Fail/EXCELLENT/g' score.txt
sed -e 's/Tom/Thomas/g' -e 's/Jerry/Gerald/g' score.txt
sed 's/Tom/Thomas/g; s/Jerry/Gerald/g' score.txt
1: Tom: 85: Pass
2: Jerry: 92: Pass
3: Spike: 58: Fail
4: Tyke: 100: Pass
5: Butch: 45: Fail
