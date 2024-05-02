# lastz-alignment-awk
genome sorting and plotting the length alignment from the lastz alignment for the node calculations before you import them for the calculations. 
```
gem install youplot
cat lastzalignment.txt | awk '{ print $10 }' | cut -f 1 -d "-" > length1.txt \ 
              && cat lastzalignment.txt | awk '{ print $10 }' | cut -f 2 -d "-" > \
                                          length2.txt && paste length1.txt length2.txt \ 
                                                    | awk '{ print $2-$1 }' | youplot barplot

cat lastzalignment.txt | awk '{ print $12 }' | cut -f 1 -d "-" > length1.txt \ 
              && cat lastzalignment.txt | awk '{ print $12 }' | cut -f 2 -d "-" > \
                                          length2.txt && paste length1.txt length2.txt \ 
                                                    | awk '{ print $2-$1 }' | youplot barplot
```
Gaurav \
Academic Staff Member \
Bioinformatics \
Institute for Biochemistry and Biology \
University of Potsdam \
Potsdam,Germany 
