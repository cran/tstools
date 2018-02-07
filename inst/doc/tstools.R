## ----fig.width = 7,fig.height=6,message=FALSE----------------------------
library(tstools)
data(KOF)
short <- window(KOF$kofbarometer,start=c(2007,1),end=c(2014,1))
tsplot(short,auto_legend=F)

## ------------------------------------------------------------------------
ts1 <- ts(runif(40,-10,40),start=c(1995,1),freq=4)
ts2 <- ts(runif(80,0,50),start=c(2000,1),freq=12)

tslist <- list()
tslist$ts1 <- ts1
tslist$ts2 <- ts2

## ----fig.width = 7,fig.height=6------------------------------------------
tsplot(ts1,ts2,auto_legend=F)

## ----fig.width = 7,fig.height=6------------------------------------------
tsplot(tslist,auto_legend=F)

## ----fig.width = 7,fig.height=6------------------------------------------
tsplot(list("Time Series 1" = ts1,
            "Time Series 2" = ts2))

## ----fig.width = 7,fig.height=6------------------------------------------
data(KOF)
tt <- init_tsplot_theme()
tt$y_grid_count_strict <- F
tt$y_tick_margin <- 0.3
tsplot(KOF$kofbarometer,
       tsr = KOF$reference,
       theme = tt)

## ----fig.width = 7,fig.height=6------------------------------------------
tsb1 <- ts(runif(30, -30, 20), start = c(2010, 1), frequency = 4)
tsb2 <- ts(runif(30, 0, 50), start = c(2010, 1), frequency = 4)
tsb3 <- ts(runif(30, 0, 50), start = c(2010, 1), frequency = 4)
tsplot(tsb1, tsb2, tsb3,
       left_as_bar = T,
       auto_legend = F)

## ----fig.width = 7,fig.height=6------------------------------------------
tsl <- list(tsb1,tsb2,tsb3)
tt <- init_tsplot_theme()
tt$sum_as_line <- T
tsplot(tsl,left_as_bar = T,
       manual_value_ticks_l = seq(-40,100, by = 20),
       auto_legend = F,
       theme = tt)

## ----fig.width = 7,fig.height=6------------------------------------------
tsb1 <- ts(runif(30,-30,20),start=c(2010,1),frequency = 4)
tsb2 <- ts(runif(30,0,50),start=c(2010,1),frequency = 4)
tsb3 <- ts(runif(30,0,50),start=c(2010,1),frequency = 4)
tsb4 <- ts(runif(30,-40,10),start=c(2005,1),frequency = 4)
tsplot(tsb1, tsb2, tsb3, tsb4,
       left_as_bar = T,
       auto_legend = F)

## ----fig.width = 7,fig.height=6------------------------------------------
tsb1 <- ts(runif(20,-30,20),start=c(2010,1),frequency = 12)
tsb2 <- ts(runif(20,0,50),start=c(2010,1),frequency = 12)
tsb3 <- ts(runif(20,0,50),start=c(2010,1),frequency = 12)
tsplot(tsb1, tsb2, tsb3,
       left_as_bar = T,
       group_bar_chart = T,
       auto_legend = F)

## ----fig.width = 7,fig.height=6------------------------------------------
data(KOF)
tsplot(KOF$kofbarometer,
       tsr = KOF$reference,auto_legend=F)

## ----fig.width = 7,fig.height=6------------------------------------------
tsb1 <- ts(runif(30,-30,20),start=c(2010,1),frequency = 4)
tsb2 <- ts(runif(30,0,30),start=c(2010,1),frequency = 4)
tsb3 <- ts(runif(30,0,30),start=c(2010,1),frequency = 4)
tsr1 <- ts(runif(30,-4,6),start=c(2010,1),frequency = 4)
tsplot(tsb1, tsb2, tsb3,
       tsr=tsr1,
       left_as_bar = T,
       auto_legend=F)



## ------------------------------------------------------------------------
def_theme <- init_tsplot_theme()
names(def_theme)

## ----fig.width = 7,fig.height=6------------------------------------------
tt <- init_tsplot_theme()
tt$highlight_window <- T
tsplot(tsb1, tsb2, tsb3,
       tsr=tsr1,
       left_as_bar = T,
       theme = tt,
       auto_legend = F)

## ----fig.width = 7,fig.height=6------------------------------------------
tt$use_box <- T
tsplot(tsb1,tsb2,tsb3,tsr=tsr1,
       left_as_bar = T,
       theme = tt,
       auto_legend = F)


## ----fig.width = 7,fig.height=6------------------------------------------
tt$lty <- c(3,2,1)
tsplot(tsb1,tsb2,tsb3,
       theme = tt,
       auto_legend = F)


## ----fig.width = 7,fig.height=6------------------------------------------
tt$highlight_window <- T
tt$highlight_window_start <- c(2017,1)
tt$highlight_window_end <- c(2018,1)
tsplot(tsb1,tsb2,tsb3,
       theme = tt,
       auto_legend = F)


## ----eval=FALSE----------------------------------------------------------
#  data(KOF)
#  write_ts(KOF,"test_export","csv")

## ----eval=FALSE----------------------------------------------------------
#  write_ts(KOF,"test_export_wide_trans","csv", wide = T, transpose = T)

