set term eps
set output "compare17.eps"
set key out top center horizontal font ",16"
set style data linespoints
set style line 1 lc rgb "dark-red" pt 7 ps 0.7 lt 1 lw 2
set style line 2 lc rgb "dark-green" pt 7 ps 0.7 lt 1 lw 2
set yrange [0:]
set grid ytics
set xlabel "Load factor (%)" font ",16"
set ylabel "Skewness ({/Symbol q})" font ",16"
plot "vqf17" using 1:2 ls 1 title "VQF", \
       "cvqf17" using 1:2 ls 2 title "CVQF"
