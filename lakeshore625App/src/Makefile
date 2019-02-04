TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = lakeshore625
# lakeshore625.dbd will be created and installed
DBD += lakeshore625.dbd

# lakeshore625.dbd will be made up from these files:
lakeshore625_DBD += base.dbd

# Include dbd files from all support applications:
#lakeshore625_DBD += xxx.dbd
lakeshore625_DBD += asyn.dbd
lakeshore625_DBD += drvAsynIPPort.dbd
lakeshore625_DBD += stream.dbd
lakeshore625_DBD += asSupport.dbd
lakeshore625_DBD += devIocStats.dbd
lakeshore625_DBD += sseqRecord.dbd

# Add all the support libraries needed by this IOC
#lakeshore625_LIBS += xxx

# lakeshore625_registerRecordDeviceDriver.cpp derives from lakeshore625.dbd
lakeshore625_SRCS += lakeshore625_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
lakeshore625_SRCS_DEFAULT += lakeshore625Main.cpp
lakeshore625_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#lakeshore625_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
lakeshore625_LIBS = asyn stream calc autosave devIocStats seq 
lakeshore625_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

