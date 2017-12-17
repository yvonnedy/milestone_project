# Driver script
# Ying Dong, Dec 2017
# Completes analysis of the passenger class effect on survivorship of Titanic
#
# usage: make all
#        make clean

# run all analysis
all: doc/summary_report.md

# make data
data/Titanic.csv: https://raw.github.ubc.ca/ubc-mds-2017/datasets/master/data/titanic.csv?token=AAADoDScWJc96cKeqViGL4nHskjD5Mu3ks5aLaO8wA%3D%3D src/download_data.R
	Rscript src/download_data.R https://raw.github.ubc.ca/ubc-mds-2017/datasets/master/data/titanic.csv?token=AAADoDScWJc96cKeqViGL4nHskjD5Mu3ks5aLaO8wA%3D%3D data/Titanic.csv

# filter data
results/filter_survived.csv: data/Titanic.csv src/analyze_data.R
	Rscript src/analyze_data.R data/Titanic.csv results/filter_survived.csv

# create bar chart
results/count_survived.png: results/filter_survived.csv src/plot_data.R
	Rscript src/plot_data.R results/filter_survived.csv results/count_survived.png

# create report
doc/summary_report.md: src/summary_report.Rmd data/Titanic.csv results/filter_survived.csv results/count_survived.png
	Rscript -e 'ezknitr::ezknit("src/summary_report.Rmd", out_dir = "doc")'

# clean up intermediate files
clean:
	rm -f data/Titanic.csv
	rm -f results/filter_survived.csv
	rm -f results/count_survived.png
	rm -f doc/summary_report.md
	rm -f doc/summary_report.html
