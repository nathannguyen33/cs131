#The first part of the script will replace the "YEAR" column with now "START,END".
#The second part indicated by the second -e will remove all instances of (.
#The third part is intended to remove all ) with an empty space. 
sed -r -e '1 s/YEAR/START,END/' -e 's/\(//g' -e 's/\)/ /g'  movies.csv > movies2.csv

