
set(CHANNEL_TYPE "static")
set(CHANNEL_SHORT_NAME "drdynvc")
set(CHANNEL_LONG_NAME "Dynamic Virtual Channel Extension")
set(CHANNEL_SPECIFICATIONS "[MS-RDPEDYC]")

string(TOUPPER "WITH_${CHANNEL_SHORT_NAME}" CHANNEL_OPTION)
option(${CHANNEL_OPTION} "Build ${CHANNEL_SHORT_NAME}" ON)
