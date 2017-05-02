library(readr)
movie <- read_csv("C:/Users/Stephen/Downloads/topmovies.csv")
View(movie)
names(movie)
summary(movie)
cnt = 0
for(i in 1:1000){
  if(grepl("Star Wars", movie[i,"name"])){
    cnt = cnt+1
  }
}
print(cnt)

for(i in 1:1000){
  if(grepl("Man", movie[i,"name"])){
    cnt = cnt+1
  }
}
print(cnt)