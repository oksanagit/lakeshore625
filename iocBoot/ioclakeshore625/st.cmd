#!../../bin/linux-x86_64/lakeshore625

## You may have to change lakeshore625 to something else
## everywhere it appears in this file

< envPaths

cd "${TOP}"

#Define protocol path
epicsEnvSet("STREAM_PROTOCOL_PATH", "../../lakeshore625App/protocol/")

## Register all support components
dbLoadDatabase "dbd/lakeshore625.dbd"
lakeshore625_registerRecordDeviceDriver pdbbase

drvAsynIPPortConfigure ("L0","10.28.34.52:4005",0,0,0)

## Load record instances
#dbLoadRecords("db/xxx.db","user=oksana")
#dbLoadRecords("db/lakeshore625.171016.template","device=XF:28ID1-ES{LS625:1}, port=L0"
dbLoadRecords("db/lakeshore625.template","device=XF:28ID1-ES{LS625:1}, port=L0"
dbLoadRecords("$(EPICS_BASE)/db/asynRecord.db", "P=XF:28ID1-ES,R={LS625:1}Asyn,PORT=L0,ADDR=0,OMAX=80,IMAX=80")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=oksana"
