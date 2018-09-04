# Reproducible Reasearch 강의 자료

### 일시: 2018년 9월 4일

### 강의: 문건웅(cardiomoon@gmail.com) 

### 내용: 

---

# 자료 다운로드

https://github.com/cardiomoon/RRworkshop
 

---


### 강의 진행에 필요한 사항

강의는 실습과 같이 진행됩니다. 강의를 들으시는 분들은 자신의 컴퓨터에 R과 RStudio가 설치되어 있어야 하며 RStudio에서 실습에 필요한 다음 패키지들을 설치하시기 바랍니다.

- R 설치 :  
    - https://www.r-project.org/
    - http://cran.nexr.com/
    

- RStudio 설치: 
    - https://www.rstudio.com/products/rstudio/download/#download

- 패키지설치 : RStudio에서 다음 패키지 설치

```{r,eval=FALSE}
install.packages(c("knitr","tidyverse","learnr","nycflights13"))
install.packages(c("devtools","moonBook","ztable","DT"))
```
---

### 강의록

강의에는 다음 파일이 사용됩니다.

- Reproducible Research(1).pdf

- Reproducible Research(2).pdf

---

### 예제 파일들

다음 예제 파일들이 사용됩니다.

- RmdEx1.Rmd

- RmdEx2.Rmd

- figureSizing.Rmd

- rmdexample.Rmd

- fuel-economy.Rmd

이 예제파일들을 한글encoding이 UTF-8로 되어 있습니다. 한글윈도우즈를 사용하시는 분들은 RStudio의 Tools...Project Options... Code Editing ... Text Encoding을 UTF-8로 바꾸셔야 합니다