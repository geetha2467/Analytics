#bar chart------------------------
H <- c(7,12,28,3,41)
M <- c("Mar","Apr","May","Jun","Jul")
barplot(H,names.arg = M,col = "lightyellow",border = "red",main = "barplot")

#stakedbar chart------------------------

colors = c("green","orange","brown")
months <- c("Mar","Apr","May","Jun","Jul")
regions <- c("East","West","North")
Values <- matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11), nrow = 3, ncol = 5, byrow = TRUE)
barplot(Values,names.arg = months,border = "darkblue",main = "Stalked bar",col = colors)
legend("topleft",cex = 1,regions,fill = colors)

#horizontal-------------------------
data("iris")
barplot(table(iris$Species,iris$Sepal.Length),col = terrain.colors(5),horiz = T,las=0)
legend("topright",cex = 1)        

#texture---------------------

data <- data.frame(
  name=letters[1:5],
  value=sample(seq(4,15),5)
)

barplot(height = data$value,names = data$name, angle = seq(30,100,15),density = c(14,21,80,45,60),col = "darkgreen")


#space & width-------------------

data <- data.frame(
  name=letters[1:5],
  value=sample(seq(4,15),5)
)

barplot(height = data$value,names=data$name,width = seq(5,15,3),space = seq(0.9,5,2))

#example 

colnames = c("maths","physics","social")
rownames = c("anu","akshaya","anil","lak","geetha")
maths = c(51,88,65,45,75)
physics = c(87,98,84,22,65)
social = c(56,78,98,78,60)
df = data.frame(names,maths,physics,social)
df

mat = matrix(c(51,88,65,45,75,87,98,84,22,65,56,78,98,78,60),byrow = F,nrow=5,dimnames= list(rownames,colnames))
mat
mat1 = matrix(c(51,88,65,45,75,87,98,84,22,65,56,78,98,78,60),byrow = F,nrow=3)
mat1
colors = c("red","green","blue","yellow","black")

barplot(height = m)
barplot(mat1,names.arg  = rownames,beside = F,col = terrain.colors(3))

legend("top",legend =c("maths","physics","social"),fill =terrain.colors(3)  )

barplot(mat1,names.arg  = rownames,beside = F,col = terrain.colors(3),horiz = T)
barplot(mat1,names.arg  = rownames,beside = T,col = terrain.colors(3))

legend("topright",legend =c("maths","physics","social"),fill =terrain.colors(3),pt.cex=0.51,cex= 0.60)


       