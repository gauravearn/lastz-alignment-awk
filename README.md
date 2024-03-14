# lastz_alignment_awk
genome sorting and plotting the length alignment from the lastz alignment for the node calculations right before you import them for the calculations. Releasing a new C compiled library for the complete graph awk functions and it uses faster than bioawk for the compilation times. It uses a hash storage as compared to the iterations and uses associative arrays as compared to the indexed array. 

gem install youplot
cat lastzalignment.txt | awk '{ print $10 }' | cut -f 1 -d "-" > length1.txt \ 
              && cat lastzalignment.txt | awk '{ print $10 }' | cut -f 2 -d "-" > \
                                          length2.txt && paste length1.txt length2.txt \ 
                                                    | awk '{ print $2-$1 }' | youplot barplot

cat lastzalignment.txt | awk '{ print $12 }' | cut -f 1 -d "-" > length1.txt \ 
              && cat lastzalignment.txt | awk '{ print $12 }' | cut -f 2 -d "-" > \
                                          length2.txt && paste length1.txt length2.txt \ 
                                                    | awk '{ print $2-$1 }' | youplot barplot
