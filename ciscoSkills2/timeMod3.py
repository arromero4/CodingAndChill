# time.struct_time:
#     tm_year   # Specifies the year.
#     tm_mon    # Specifies the month (value from 1 to 12)
#     tm_mday   # Specifies the day of the month (value from 1 to 31)
#     tm_hour   # Specifies the hour (value from 0 to 23)
#     tm_min    # Specifies the minute (value from 0 to 59)
#     tm_sec    # Specifies the second (value from 0 to 61 )
#     tm_wday    # Specifies the weekday (value from 0 to 6)
#     tm_yday   # Specifies the year day (value from 1 to 366)
#     tm_isdst  # Specifies whether daylight saving time applies (1 – yes, 0 – no, -1 – it isn't known)
#     tm_zone   # Specifies the timezone name (value in an abbreviated form)
#     tm_gmtoff # Specifies the offset east of UTC (value in seconds)

import time

timestamp = 1572879180

st = time.gmtime(timestamp)

print(time.asctime(st))
print(time.mktime((2019, 11, 4, 14, 53, 0, 0, 308, 0)))