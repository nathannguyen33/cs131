	set title "Scatter Plot of Anime Episodes"
	set xlabel "Anime Index"
	set ylabel "Number of Episodes"

	set style data points

	set terminal svg
	set output 'anime_scatter.svg'

	plot "anime_episodes.dat" using 1:2 notitle
