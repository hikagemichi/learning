library("dplyr")
library("rlang")

# mutateで新規作成する列名を変数で指定する
# !!でunquoteし「:=」で代入
a <- "mpg"
b <- "cyl"
new_col <- "mpg.per.cyl"

mtcars %>% mutate(!!new_col := !!sym(a) / !!sym(b))