# -*- coding: utf-8 -*-

import os
import sys
import csv

if __name__ == "__main__":
    # your code
    csv_file = csv.reader(open('total_population.csv', 'r'))

    total = csv_file.next()[0]

    population_of_age = []
    

    
    document = """<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>Populations</key>
	<array>
"""

    tmp = 0
    for i in xrange(0, 100):
        tmp += int(csv_file.next()[0])
        if i % 5 == 0:
#            document += "\t\t<key>" + str(i) + "</key>\n"
            document += "\t\t<integer>" + str(tmp) + "</integer>\n"
            tmp = 0

#    document += "\t\t<key>100</key>\n"
    document += "\t\t<integer>" + csv_file.next()[0] + "</integer>\n"

#    document += "\t\t<key>total</key>\n"
    document += "\t\t<integer>" + total + "</integer>"
    document += """
	</array>
</dict>
</plist>"""

    f = open("population_2010.plist", "w")
    f.write(document)
    f.close()


