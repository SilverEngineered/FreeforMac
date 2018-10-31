 #!/bin/bash
total_mem="$(sysctl hw.memsize)"
total_mem=`echo $total_mem | grep -oE "[0-9]+"`
total_mem_mb=$(( $total_mem / 1048576 )) #1024 squared is 1048576 bytes to kb to mb...

physical_memory="$(ps -caxm -orss,comm | awk '{s+=$1} END {print s}')"
physical_memory_mb=$(( $physical_memory / 1024 ))
top_info="$(top -l 1 -s 0 | grep PhysMem | grep -oE "[0-9]+")"

set -- $top_info #Split used info to $3, unused to $1, and wired to $2
total_mem_size=${#total_mem_mb} #String length of total memory size in mb
used_mem_size=${#3} #String length of used memory size in mb
unused_mem_size=${#1} #String length of unused memory size in mb
echo "              total       unused        used      wired"
#mem_line="$(echo "Mem:          $total_mem_mb")"
mem_line="$(echo "Mem:")"
for i in `seq 1 $((15-$total_mem_size))`; do
            mem_line+=" "
        done
mem_line+=$total_mem_mb
for i in `seq 1 $((13-$used_mem_size))`; do
            mem_line+=" "
        done
mem_line+="$3"

for i in `seq 1 $((12-$unused_mem_size))`; do
            mem_line+=" "
        done
mem_line+="$1"
for i in `seq 1 $((11-$unused_mem_size))`; do
            mem_line+=" "
        done
mem_line+="$2"
echo "$mem_line"
