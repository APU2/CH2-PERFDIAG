
# Connect to database & query ####

# connect to database
rosdb<- src_postgres(dbname = "rosebery", host ="localhost", port = 5432, user = "postgres", password = "password")

#list tables
src_tbls(rosdb)

# connect to sigs table
sig_con<-tbl(rosdb, 'sigs')

filt_sig_con<-tbl(rosdb, 'filt_sigs')


as.numeric(ymd_hms("2015-01-01 00:00:00"))
as.numeric(ymd_hms("2016-01-01 00:00:00"))


# get filter relevant data signals
colnames(filt_sig_con)

run_sample<- filt_sig_con%>%
    dplyr::filter(rgf >4,
                  numtime>1420070400,
                  numtime < 1451606400)%>%
    dplyr::select(inservice, obstime,timeinrun,runid, turb, hl, fl,lvl, rgf, 
                  daf_str_1_outlet_turb, daf_str_2_outlet_turb,daf_str_3_outlet_turb,backwash_fl, raw_water_inlet_temperature, bankflow)%>%
    collect()


