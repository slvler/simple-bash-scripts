#!/bin/bash

# Total RAM (KB type)
grep MemTotal /proc/meminfo

# Total Ram process (KB type)
total_ram=$(grep MemTotal /proc/meminfo | awk '{print $2}')
echo "Total RAM: $total_ram KB"

# Total Ram (GB type)
total_ram_gb=$((total_ram / 1024 / 1024))
echo "Total RAM: $total_ram_gb GB"
