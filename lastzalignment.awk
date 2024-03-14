#!/usr/bin/awk
# Universitat Potsdam
# Date: 2024-3-14
# Author: Gaurav Sablok
# each of these can be compiled into a specific AWK function. 
gem install youplot
cat lastzalignment.txt | awk '{ print $10 }' | cut -f 1 -d "-" > length1.txt \ 
              && cat lastzalignment.txt | awk '{ print $10 }' | cut -f 2 -d "-" > \
                                          length2.txt && paste length1.txt length2.txt \ 
                                                    | awk '{ print $2-$1 }' | youplot barplot

cat lastzalignment.txt | awk '{ print $12 }' | cut -f 1 -d "-" > length1.txt \ 
              && cat lastzalignment.txt | awk '{ print $12 }' | cut -f 2 -d "-" > \
                                          length2.txt && paste length1.txt length2.txt \ 
                                                    | awk '{ print $2-$1 }' | youplot barplot
