# Milestone Project    
    
## Project Summary    
    
The project is designed to use the `Titanic` dataset to analyze if different passenger class plays a role in survivorship. My hypothesis is more passengers in the first class survived than those in the second and third classes.    
          
## How To Run Data Analysis    
   
The Scripts in the `src` directory should be run in the following order:    
    
| Script Name | What To Create | Usage |
| ---- | ---- | --- |
|download_data.R|glimpses the titanic data and saves it locally|Rscript src/download_data.R https://raw.github.ubc.ca/ubc-mds-2017/datasets/master/data/titanic.csv?token=AAADoDScWJc96cKeqViGL4nHskjD5Mu3ks5aLaO8wA%3D%3D data/Titanic.csv|
|analyze_data.R|filters survived people in each passager class and writes the result to CSV|Rscript src/analyze_data.R data/Titanic.csv results/filter_survived.csv|
|plot_data.R|generates a figure of total number of survivors and saves the plot to the results directory|Rscript src/plot_data.R results/filter_survived.csv results/count_survived.png|
|summary_report.Rmd|generates a summary report|Rscript -e 'ezknitr::ezknit("src/summary_report.Rmd", out_dir = "doc")'|         
              
    
## Indentify Dataset  

Choose a public dataset from the web that you are interested in to carry out a small data analysis. You may also use any dataset we have previously worked with in MDS.      
    
> I would like to choose the dataset of `Titanic` to carry out the data analysis.    
     
## Question

With that dataset, identify a question you would like to ask from it that could be answered by some simple analysis and visualization.     
     
> The question that I would like to ask from the dataset is, does passenger class play a role in survivorship?     
      
## Hypothesis         
          
Generate a hypothesis for your question.      
    
> My hypothesis is more passengers in the first class survived than those in the second and third classes because the rich have high social status and enjoy lots of privileges at that time.    
    
## Plan         
         
Suggest how you might summarize the data to show this as a table or a number, as well as how you might show this as a visualization.    
     
> For summarizing and visualizing the data, I plan to count the surviving number in each class respectively, and visualize these data into a bar chart by using `ggplot`.    
           
           