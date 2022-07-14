set term eps
set lmargin 12
set rmargin 5
set bmargin 5
set output "17remove.eps"
set key out top center horizontal font ",22"
set style data linespoints
set style line 1 lc rgb "dark-red" pt 7 ps 0.7 lt 1 lw 2
set style line 2 lc rgb "dark-green" pt 7 ps 0.7 lt 1 lw 2
set style line 3 lc rgb "dark-violet" pt 7 ps 0.7 lt 1 lw 2
set style line 4 lc rgb "blue" pt 7 ps 0.7 lt 1 lw 2
set style line 5 lc rgb "coral" pt 7 ps 0.7 lt 1 lw 2
set yrange [0:100]
set ytic 40 font ",30"
set xtic 20 font ",30"
set grid ytics
set xlabel "Load Factor (%)" offset 0,-1 font ",30"
set ylabel "Throughput (Mops)" offset -3 font ",30"
plot "17removevqf" using 1:2 ls 1 title "VQF", \
       "17removecvqf" using 1:2 ls 2 title "CVQF", \
       "17removecuckoo" using 1:2 ls 3 title "CF", \
       "17removemorton" using 1:2 ls 4 title "MF", \
       "17removeqf" using 1:2 ls 5 title "QF"
