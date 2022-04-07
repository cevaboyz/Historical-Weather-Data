#references
#https://www.worldweatheronline.com/developer/premium-api-explorer.aspx

install.packages("pacman")
library("pacman")
#p_load allows the user to load one or more packages as a substitute for the library function
pacman::p_load(XML, dplyr, stringr, rvest, audio,jsonlite)



#block for 2022 do not run


january_start <-"2022-01-01"
january_ending <- "2022-01-31"
february_start <-"2022-02-01"
february_ending <-"2022-02-28"
march_start<-"2022-03-01"
march_ending <- "2022-03-31"
april_start <- "2022-04-01"
april_ending <- "2022-04-30"
may_start <-"2022-05-01"
may_ending <-"2022-05-31"
june_start <-"2022-06-01"
june_ending <- "2022-06-30"
july_start <- "2022-07-01"
july_ending <- "2022-07-31"
august_start <- "2022-08-01"
august_ending <-"2022-08-31"
september_start <- "2022-09-01"
september_ending <- "2022-09-30"
october_start <- "2022-10-01"
october_ending <-"2022-10-31"
november_start <-"2022-11-01"
november_ending <- "2022-11-30"
december_start <-"2022-12-01"
december_ending <- "2022-12-31"


#First Block to run

january_start <-"2021-01-01"
january_ending <- "2021-01-31"
february_start <-"2021-02-01"
february_ending <-"2021-02-28"
march_start<-"2021-03-01"
march_ending <- "2021-03-31"
april_start <- "2021-04-01"
april_ending <- "2021-04-30"
may_start <-"2021-05-01"
may_ending <-"2021-05-31"
june_start <-"2021-06-01"
june_ending <- "2021-06-30"
july_start <- "2021-07-01"
july_ending <- "2021-07-31"
august_start <- "2021-08-01"
august_ending <-"2021-08-31"
september_start <- "2021-09-01"
september_ending <- "2021-09-30"
october_start <- "2021-10-01"
october_ending <-"2021-10-31"
november_start <-"2021-11-01"
november_ending <- "2021-11-30"
december_start <-"2021-12-01"
december_ending <- "2021-12-31"


#Run this chunnk and insert the city
city <- dlgInput("Insert the city", Sys.info()["City"])$res

call_builder_1 <- paste0("http://api.worldweatheronline.com/premium/v1/past-weather.ashx?key=1b70fd8114864533a45134457220703&q=",city,"&format=json&date=",january_start,"&enddate=",january_ending,"&tp=24&lang=it")
call_builder_2 <- paste0("http://api.worldweatheronline.com/premium/v1/past-weather.ashx?key=1b70fd8114864533a45134457220703&q=",city,"&format=json&date=",february_start,"&enddate=",february_ending,"&tp=24&lang=it")
call_builder_3 <- paste0("http://api.worldweatheronline.com/premium/v1/past-weather.ashx?key=1b70fd8114864533a45134457220703&q=",city,"&format=json&date=",march_start,"&enddate=",march_ending,"&tp=24&lang=it")
call_builder_4 <- paste0("http://api.worldweatheronline.com/premium/v1/past-weather.ashx?key=1b70fd8114864533a45134457220703&q=",city,"&format=json&date=",april_start,"&enddate=",april_ending,"&tp=24&lang=it")
call_builder_5 <- paste0("http://api.worldweatheronline.com/premium/v1/past-weather.ashx?key=1b70fd8114864533a45134457220703&q=",city,"&format=json&date=",may_start,"&enddate=",may_ending,"&tp=24&lang=it")
call_builder_6 <- paste0("http://api.worldweatheronline.com/premium/v1/past-weather.ashx?key=1b70fd8114864533a45134457220703&q=",city,"&format=json&date=",june_start,"&enddate=",june_start,"&tp=24&lang=it")
call_builder_7 <- paste0("http://api.worldweatheronline.com/premium/v1/past-weather.ashx?key=1b70fd8114864533a45134457220703&q=",city,"&format=json&date=",july_start,"&enddate=",july_ending,"&tp=24&lang=it")
call_builder_8 <- paste0("http://api.worldweatheronline.com/premium/v1/past-weather.ashx?key=1b70fd8114864533a45134457220703&q=",city,"&format=json&date=",august_start,"&enddate=",august_ending,"&tp=24&lang=it")
call_builder_9 <- paste0("http://api.worldweatheronline.com/premium/v1/past-weather.ashx?key=1b70fd8114864533a45134457220703&q=",city,"&format=json&date=",september_start,"&enddate=",september_ending,"&tp=24&lang=it")
call_builder_10 <- paste0("http://api.worldweatheronline.com/premium/v1/past-weather.ashx?key=1b70fd8114864533a45134457220703&q=",city,"&format=json&date=",october_start,"&enddate=",october_ending,"&tp=24&lang=it")
call_builder_11 <- paste0("http://api.worldweatheronline.com/premium/v1/past-weather.ashx?key=1b70fd8114864533a45134457220703&q=",city,"&format=json&date=",november_start,"&enddate=",november_ending,"&tp=24&lang=it")
call_builder_12 <- paste0("http://api.worldweatheronline.com/premium/v1/past-weather.ashx?key=1b70fd8114864533a45134457220703&q=",city,"&format=json&date=",december_start,"&enddate=",december_ending,"&tp=24&lang=it")

#january
january <- GET(call_builder_1)
january_2 <- rawToChar(january$content)
january_3 <- fromJSON(rawToChar(january$content))
january_4 <- january_3$data$weather
january_4 <- subset(january_4, select = c(1,3,5,7))

#february
february <- GET(call_builder_2)
february_2 <- rawToChar(february$content)
february_3 <- fromJSON(rawToChar(february$content))
february_4 <- february_3$data$weather
february_4 <- subset(february_4, select = c(1,3,5,7))

#march
march <- GET(call_builder_3)
march_2 <- rawToChar(march$content)
march_3 <- fromJSON(rawToChar(march$content))
march_4 <- march_3$data$weather
march_4 <- subset(march_4, select = c(1,3,5,7))

#april
april <- GET(call_builder_4)
april_2<- rawToChar(april$content)
april_3 <- fromJSON(rawToChar(april$content))
april_4 <- april_3$data$weather
april_4 <- subset(april_4, select = c(1,3,5,7))

#may
may <- GET(call_builder_5)
may_2 <- rawToChar(may$content)
may_3 <- fromJSON(rawToChar(may$content))
may_4 <- may_3$data$weather
may_4 <- subset(may_4, select = c(1,3,5,7))

#june
june <- GET(call_builder_6)
june_2 <- rawToChar(june$content)
june_3<- fromJSON(rawToChar(june$content))
june_4 <- june_3$data$weather
june_4 <- subset(june_4, select = c(1,3,5,7))

#july
july <- GET(call_builder_7)
july_2 <- rawToChar(july$content)
july_3<- fromJSON(rawToChar(july$content))
july_4<- july_3$data$weather
july_4 <- subset(july_4, select = c(1,3,5,7))

#august
august <- GET(call_builder_8)
august_2 <- rawToChar(august$content)
august_3<- fromJSON(rawToChar(august$content))
august_4<- august_3$data$weather
august_4 <- subset(august_4, select = c(1,3,5,7))

#september
september <- GET(call_builder_9)
september_2 <- rawToChar(september$content)
september_3<- fromJSON(rawToChar(september$content))
september_4<- september_3$data$weather
september_4 <- subset(september_4, select = c(1,3,5,7))

#october
october <- GET(call_builder_10)
october_2 <- rawToChar(october$content)
october_3<- fromJSON(rawToChar(october$content))
october_4<- october_3$data$weather
october_4 <- subset(october_4, select = c(1,3,5,7))

#november
november <- GET(call_builder_11)
november_2 <- rawToChar(november$content)
november_3<- fromJSON(rawToChar(november$content))
november_4<- november_3$data$weather
november_4 <- subset(november_4, select = c(1,3,5,7))

#december
december <- GET(call_builder_12)
december_2 <- rawToChar(december$content)
december_3<- fromJSON(rawToChar(december$content))
december_4<- december_3$data$weather
december_4 <- subset(december_4, select = c(1,3,5,7))

weather_city <- rbind(january_4, february_4,march_4, april_4, may_4, june_4, july_4, august_4, september_4, october_4, november_4,december_4)

write.xlsx(weather_city, file = paste0(city,"_weather.xlsx"))
