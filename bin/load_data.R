######################################################################
# Exploring loading and testing Flight Data
#
# Program related with: Rtoff.R
# Date: Jul 2018
# Author: Helder Mendes
# 
#
#
########################## Main Procedure ############################

# Clean workspace (& environment data)
rm(list=ls(all=TRUE))

# Library Loading
library(ggplot2)
library(grid)
library(brew)
library(tools)
library(data.table)
library(psych)
library(lubridate)
library(xtable)
library(psych)

# Load Data - sample flight
load("/resources/rstudio/work/flightRtools/FlightDB/dadosVoo.RData")
ptcr_dot <-derivative(ptcr[t0:t1],NROW(ptcr[t0:t1]))

# isolate takeoff data

# Take-Off Start and End Points determination
# t0 <- min(which(flightdata$FM_FWC==3)) - 200
# t1 <- max(which(flightdata$FM_FWC==4)) + 50

t0 <- 4150
t1 <- 4400




plot(vrtg[t0:t1], type="l", col="red", xlab = "Time[1/8 sec]", ylab = "VRTG")
grid(col="blue")

plot(ff1[t0:t1], type="l", col="red", xlab = "Time[1/8 sec]", ylab = "FF1")
grid(col="blue")

plot(egt1[t0:t1], type="l", col="red", xlab = "Time[1/8 sec]", ylab = "EGT1")
grid(col="blue")

plot(n11[t0:t1], type="l", col="red", xlab = "Time[1/8 sec]", ylab = "N11")
grid(col="blue")

plot(n21[t0:t1], type="l", col="red", xlab = "Time[1/8 sec]", ylab = "N21")
grid(col="blue")

plot(ptcr[t0:t1], type="l", col="red", xlab = "Time[1/8 sec]", ylab = "PTCR")
grid(col="blue")

plot(ptcr_dot, type="l", col="red", xlab = "Time[1/8 sec]", ylab = "d(PTCR)/dt")
grid(col="blue")







