	set title "Number of Anime Releases by Season"
	
	set xlabel "Season"
	set ylabel "Number of Releases"
	
	set style data histograms
	set style fill solid 1.0 border -1
	
	set boxwidth 0.8
	set yrange [0:1200]
	
	set terminal svg
	set output 'anime_seasons.svg'
	
	plot "seasons_data.dat" using 2:xtic(1) title 'Seasons'
