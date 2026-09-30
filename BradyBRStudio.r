> library(datasets)
> data(iris)
> head(iris, 5)
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
> str(iris)
'data.frame':   150 obs. of  5 variables:
 $ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
 $ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
 $ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
 $ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
 $ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...
> library(ggplot2)
> 
> ggplot(aes(x = Sepal.Width, y = Petal.Width, color = Species), data = iris) +
+   geom_point() +
+   ggtitle("Wider sepals tend to have wider petals") +
+   labs(x = "Sepal width (cm)", y = "Petal width (cm)")
> ggplot(aes(x = Sepal.Width), data = iris) +
+   geom_histogram(binwidth = 0.5, fill = "steelblue", color = "black")
> 
