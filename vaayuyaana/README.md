# ವಾಯುಯಾನ ಸಲಕರಣೆಗಳು - Aviation Utilities
Some useful utilities for aviation

## [XC Navigation Log](jagiNavLog.xlsx)
All cross country flights require a navigation log. Many of website such as [SkyVector](https://skyvector.com) and [1800wxbrief](https://www.1800wxbrief.com) have utilities to generate nav logs.

This is an offline excel sheet, it reduces the effort in filling up the navigation log. In particular it does not require using an [E6B](https://en.wikipedia.org/wiki/E6B). There are many online E6B which reduce effort in filling up the nav log such as [E6B Flight Computer](https://www.gleimaviation.com/e6b-flight-computer-instructions/) and [E6B calculator](https://e6bx.com/e6b/). 

### User guide
See legend in the sheet
- green shaded cells are to be manually filled
- blue shaded cells are calculated by the tool
- yellow shaded cells are ones filled during the actual flight

Follow the below steps:
1. At a high level decide and fill the Planned power, RPM, % of power, GPH, Taxi fuel(POH) and Total fuel that will be filled
2. Fill the check points, using a sectional chart
3. Fill TC(True Course) measured from the sectional charts
4. Fill DS(distance) of each leg also measured from the sectional charts
5. Fill MV(Magnetic Variation) from the isogenic lines in the sectional charts
6. Look at the calculated MC(Magnetic Course) and decide on a suitable cruising altitude and fill it up
7. Look at the POH and fill in the suitable TAS(True AirSpeed) for the selected cruising altitude, we have to consider IAS->CAS->TAS
8. Fill in the wind direction, speed and temperature. These are obtained from [Aviation Weather Center](https://www.aviationweather.gov/windtemp/data), some interpolation will be required
9. Fill in the MD(Magnetic Deviation) if any by looking at the correction placards for the particular aircraft(tail number)

Optionally there are spaces provided to record information related to
- Weight and balance
- Ground roll and Distance to Clear obstacles
- Departure and Destination Airports

Finally print out the sheet for use during the flight.
