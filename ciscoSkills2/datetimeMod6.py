from datetime import datetime

print("today:", datetime.today())
print("now:", datetime.now())
print("utcnow:", datetime.utcnow())

dt = datetime(2020, 10, 4, 14, 55)
print("Timestamp:", dt.timestamp())

