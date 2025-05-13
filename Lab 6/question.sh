# 1. What is MFT memory management?
# MFT divides memory into fixed-sized blocks. Processes are allocated to these blocks. If a process is smaller than a block, internal fragmentation occurs. If a process is larger, it cannot be allocated.

# 2. What happens if processes exceed memory blocks?
# The program stops allocating processes and prints: "Memory is Full, Remaining Processes cannot be accommodated."

# 3. What is internal fragmentation?
# Internal fragmentation occurs when there is unused space inside a block, calculated as bs - mp[i] (block size - process size).

# 4. What is external fragmentation?
# External fragmentation is the leftover memory that cannot be used for processes, calculated as ms - nob * bs.

# 5. Effect of changing block size?
# Increasing block size reduces the number of blocks but may increase internal fragmentation. Decreasing block size increases the number of blocks but may improve memory usage.

# 6. Block size larger than process?
# Internal fragmentation increases as unused space within blocks grows.

# 7. Process larger than block size?
# Processes larger than the block size cannot be allocated, and the program prints "NO ---".

# 8. Role of tif variable?
# tif accumulates the total internal fragmentation by adding the unused space in each allocated block.

# 9. Block size too small?
# Many processes will be too large for small blocks, leading to rejection of most processes and wasted memory.

# 10. When memory is full?
# If there are no more blocks to allocate, the program prints: "Memory is Full, Remaining Processes cannot be accommodated."

# 11. Limitations of MFT?
# Internal Fragmentation and External Fragmentation are common. Fixed block sizes may not efficiently fit all processes, leading to wasted memory.

