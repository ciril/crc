#!/bin/bash
# empty output file
logdir="/logfiles"
out="${logdir}/log.txt"
> "${out}"

# save rotated files names
for file in "${logdir}"/*.gz; do
  basename "${file}" >> "${out}"
done
