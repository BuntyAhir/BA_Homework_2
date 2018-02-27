

Ans - 1
library(tidyverse)
read_csv("/Users/vidit/Desktop/Sem_3/MSCS 6520/Homework2/milwaukee_weather.csv")
mkw <- read_csv("/Users/vidit/Desktop/Sem_3/MSCS 6520/Homework2/milwaukee_weather.csv")
head(mkw)
ncol(mkw)
nrow(mkw)


Ans - 2
ggplot(data = mkw) + geom_line(mapping = aes(x = date, y = avg_temp))
ggplot(data = mkw) + geom_smooth(mapping = aes(x = date, y = avg_temp))
ggplot(data = mkw) + geom_area(mapping = aes(x = date, y = avg_temp))
ggplot(data = mkw, mapping = aes(avg_temp)) + geom_freqpoly(mapping = aes(colour = avg_temp), binwidth = 1/4)
ggplot(data = mkw) + geom_point(mapping = aes(x = date, y = avg_temp))


Ans - 3
library(lubridate)
mutate(mkw, day_of_week = as.factor(wday(mkw$date)))
mkw <- mutate(mkw, day_of_week = as.factor(wday(mkw$date)))
mutate(mkw, year = year(mkw$date))
mkw <- mutate(mkw, year = year(mkw$date))
mutate(mkw, month = month(mkw$date))
mkw <- mutate(mkw, month = month(mkw$date))
head(mkw)
ggplot(data = mkw) + geom_point(mapping = aes(x = day_of_week, y = avg_temp, colour = avg_temp))
ggplot(data = mkw) + geom_step(mapping = aes(x = year, y = avg_temp, colour = avg_temp))
ggplot(data = mkw) + geom_point(mapping = aes(x = month, y = avg_temp, colour = avg_temp))
ggplot(data = mkw) + geom_point(mapping = aes(x = year, y = avg_temp, colour = avg_temp))
ggplot(data = mkw) + geom_boxplot(mapping = aes(x = day_of_week, y = avg_temp))

Ans - 4
ggplot(data = mkw) + geom_line(mapping = aes(x = date, y = snowfall, colour = snowfall))
ggplot(data = mkw) + geom_point(mapping = aes(x = date, y = snowfall, colour = snowfall))
ggplot(data = mkw, mapping = aes(snowfall)) + geom_freqpoly(mapping = aes(colour = snowfall), binwidth = 1/4)
ggplot(data = mkw) + geom_smooth(mapping = aes(x = date, y = snowfall, colour = snowfall))


Ans - 5
mutate(mkw, total_precipitation = snowfall + rainfall)
mkw <- mutate(mkw, total_precipitation = snowfall + rainfall)
head(mkw)
mutate(mkw, has_snowed = as.factor(ifelse(snowfall > 0, 1, 0)))
mkw <- mutate(mkw, has_snowed = as.factor(ifelse(snowfall > 0, 1, 0)))
head(mkw)
ggplot(data = mkw) + geom_boxplot(mapping = aes(y = total_precipitation, x = has_snowed, col = has_snowed))
ggplot(data = mkw) + geom_point(mapping = aes(y = total_precipitation, x = has_snowed, col = has_snowed))
ggplot(data = mkw) + geom_point(mapping = aes(y = total_precipitation, x = date, col = has_snowed))
ggplot(data = mkw) + geom_point(mapping = aes(y = total_precipitation, x = year, col = has_snowed))
ggplot(data = mkw) + geom_point(mapping = aes(y = total_precipitation, x = month, col = has_snowed))
ggplot(data = mkw) + geom_point(mapping = aes(y = total_precipitation, x = day_of_week, col = has_snowed))



Ans - 6
ggplot(data = mkw) + geom_line(mapping = aes(x = date, y = avg_wind_speed, col = avg_wind_speed))
ggplot(data = mkw) + geom_point(mapping = aes(x = date, y = avg_wind_speed, col = avg_wind_speed))
ggplot(data = mkw) + geom_area(mapping = aes(x = date, y = avg_wind_speed, col = "red"))
ggplot(data = mkw, mapping = aes(avg_wind_speed)) + geom_freqpoly(mapping = aes(colour = avg_wind_speed), binwidth = 1/4)


Ans - 7
ggplot(data = mkw) + geom_line(mapping = aes(y = snowfall, x = avg_wind_speed, col = avg_wind_speed))
ggplot(data = mkw) + geom_point(mapping = aes(y = snowfall, x = avg_wind_speed, col = avg_wind_speed))
ggplot(data = mkw) + geom_point(mapping = aes(y = snowfall, x = avg_wind_speed, col = snowfall))
ggplot(data = mkw) + geom_area(mapping = aes(y = snowfall, x = avg_wind_speed, col = "red"))
ggplot(data = mkw, mapping = aes(y = snowfall, x = avg_wind_speed)) + geom_point() + geom_abline() + coord_fixed()
