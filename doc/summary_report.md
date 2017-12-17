---
output: github_document
---
      

      
# Summary Report    
    
The project is designed to analyze if passenger class played a role in survivorship of Titanic.  
             
## Original Data


```r
original <- read.csv("data/Titanic.csv")
head(original)
```

```
##   X pclass survived                                            name    sex
## 1 1      1        1                   Allen, Miss. Elisabeth Walton female
## 2 2      1        1                  Allison, Master. Hudson Trevor   male
## 3 3      1        0                    Allison, Miss. Helen Loraine female
## 4 4      1        0            Allison, Mr. Hudson Joshua Creighton   male
## 5 5      1        0 Allison, Mrs. Hudson J C (Bessie Waldo Daniels) female
## 6 6      1        1                             Anderson, Mr. Harry   male
##       age sibsp parch ticket     fare   cabin embarked boat body
## 1 29.0000     0     0  24160 211.3375      B5        S    2   NA
## 2  0.9167     1     2 113781 151.5500 C22 C26        S   11   NA
## 3  2.0000     1     2 113781 151.5500 C22 C26        S        NA
## 4 30.0000     1     2 113781 151.5500 C22 C26        S       135
## 5 25.0000     1     2 113781 151.5500 C22 C26        S        NA
## 6 48.0000     0     0  19952  26.5500     E12        S    3   NA
##                         home.dest
## 1                    St Louis, MO
## 2 Montreal, PQ / Chesterville, ON
## 3 Montreal, PQ / Chesterville, ON
## 4 Montreal, PQ / Chesterville, ON
## 5 Montreal, PQ / Chesterville, ON
## 6                    New York, NY
```
     
The original dataset contains data for 1310 of the real Titanic passengers. The columns describe different attributes about the person including whether they survived, their passenger class, age, sex, the fare they paid and so on. Passenger class (`pclass`) and survivorship (`survived`) are used to conduct the analysis.
         
## Filtered Data


```r
filtered <- read.csv("results/filter_survived.csv")
head(filtered)
```

```
##    X pclass survived                                              name
## 1  1      1        1                     Allen, Miss. Elisabeth Walton
## 2  2      1        1                    Allison, Master. Hudson Trevor
## 3  6      1        1                               Anderson, Mr. Harry
## 4  7      1        1                 Andrews, Miss. Kornelia Theodosia
## 5  9      1        1     Appleton, Mrs. Edward Dale (Charlotte Lamson)
## 6 12      1        1 Astor, Mrs. John Jacob (Madeleine Talmadge Force)
##      sex     age sibsp parch   ticket     fare   cabin embarked boat body
## 1 female 29.0000     0     0    24160 211.3375      B5        S    2   NA
## 2   male  0.9167     1     2   113781 151.5500 C22 C26        S   11   NA
## 3   male 48.0000     0     0    19952  26.5500     E12        S    3   NA
## 4 female 63.0000     1     0    13502  77.9583      D7        S   10   NA
## 5 female 53.0000     2     0    11769  51.4792    C101        S    D   NA
## 6 female 18.0000     1     0 PC 17757 227.5250 C62 C64        C    4   NA
##                         home.dest
## 1                    St Louis, MO
## 2 Montreal, PQ / Chesterville, ON
## 3                    New York, NY
## 4                      Hudson, NY
## 5             Bayside, Queens, NY
## 6                    New York, NY
```
    
This filtered dataset includes all survived people together with their attributes for each passager class.       
## Figure   
    
![count survivors](../results/count_survived.png) 
     
## Conclusion        

The result of this analysis confirms that passager class played a part in survivorship. However, this effect is not very significant as I thought before. One possible explanation could be that preference was given to women and children in lower classes.
         
