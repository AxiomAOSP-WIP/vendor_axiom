import json
import time
import sys
import calendar
import datetime

device = sys.argv[1]
zipvar = sys.argv[2]
size = sys.argv[3]
md5 = sys.argv[4]
sha256 = sys.argv[5]



date = datetime.datetime.utcnow()
utc_time = calendar.timegm(date.utctimetuple())

maintainer = str(input("Enter maintainer name: "))
telegram = str(input("Enter telegram url: "))



dictionary ={
    "response": [
        {
        "maintainer": maintainer,
        "oem": "Xiaomi",
        "device": device,
        "filename": zipvar,
        "download": "https://sourceforge.net/projects/axiomos/files/Releases/" + device + "/" + zipvar + "/download",
        "timestamp": utc_time,
        "md5": md5,
        "sha256": sha256,
        "size": size ,
        "version": "1.1",
        "forum": "",
        "gapps": "",
        "firmware": "",
        "modem": "",
        "bootloader": "",
        "recovery": "",
        "paypal": "",
        "telegram": telegram,
        "dt": "",
        "common-dt": "",
        "kernel": "",
        "buildtype": "RC1"
        }
    ]
}

# Serializing json
json_object = json.dumps(dictionary, indent = 4)

filename=device+".json"
# Writing to device.json
with open(filename, "w") as outfile:
    outfile.write(json_object)
