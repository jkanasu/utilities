# ವಾಯುಯಾನ ಸಲಕರಣೆಗಳು - Aviation Utilities
Some useful utilities for aviation

## [XC Navigation Log](../../../raw/main/vaayuyaana/jagiNavLog.xlsx)
All cross country flights require a navigation log.

Preparing XC logs requires some effort in terms of
- picking check points, measuring distances and true course; done using navigation plotter on sectional chart
- estimating winds enroute course; done using the official sources such as [aviationweather](https://aviationweather.gov)
- deriving the TAS and GPH; done using the POH and applicable RPM, Altitude and temperature
- calculating WCA->TH->CH, Ground Speed, times; done using the E6B

### TL;DR  :-)
This is an offline excel sheet, that reduces the effort in filling up the navigation log. In particular it does not require using an [E6B](https://en.wikipedia.org/wiki/E6B)

Indeed, many websites such as [SkyVector](https://skyvector.com) and [1800wxbrief](https://www.1800wxbrief.com) can generate nav logs. There are many online E6B which reduce effort in filling up the nav log such as [E6B Flight Computer](https://www.gleimaviation.com/e6b-flight-computer-instructions/) and [E6B calculator](https://e6bx.com/e6b/)

But as a student pilot we need to prepare XC logs manually.
And we need a way of manually verifying as well.

### User guide
Download the [jagiNavLog.xlsx](../../../raw/main/vaayuyaana/jagiNavLog.xlsx)

See legend in the sheet
- green shaded cells are to be manually filled
- blue shaded cells are calculated by the tool
- yellow shaded cells are ones filled during the actual flight

Follow the below steps:
1. At a high level decide and fill the Planned power, RPM, % of power, GPH, Taxi fuel(POH) and Total fuel that will be filled
2. Fill the check points, using a sectional chart
3. Fill TC(True Course) measured from the sectional charts
4. Fill DS(distance) of each leg also measured from the sectional charts
      - Note for TOC and TOD, we enter time to calculate distance, this is because of the FPM we use for climb and descent
5. Fill MV(Magnetic Variation) from the isogenic lines in the sectional charts
6. Fill MD(Magnetic Deviation) from the compass placard for the particular aircraft(tail number)
7. Look at the calculated MC(Magnetic Course) and decide on a suitable cruising altitude and fill it up
8. Fill in the wind direction, speed and temperature. These are obtained from [Aviation Weather Center](https://www.aviationweather.gov/windtemp/data), some interpolation will be required
9. Fill in the TAS and GPH. Lookup the POH, for the selected cruising altitude. Note that we have to consider IAS->CAS->TAS AND temperature.

Optionally there are spaces provided to record information related to
- Weight and balance
- Ground roll and Distance to Clear obstacles
- Departure and Destination Airports

Finally print out the sheet for use during the flight.

### Formulas
#### WCA - Wind Correction Angle
We use the Sine Rule to calculate the WCA
##### Sine Rule
      a               b               c

    ------    =    -------    =    -------
    
     sin A           sin B           sin C

A close approximation is:

             WS
    WCA =  ------ * sin (AWA) * 60
            TAS

#### GS - Ground Speed
We use cosine rule to calculate the GS

##### Cosine Rule
    c^2  =  a^2  +  b^2  -  2ab * cosC

### References
- [Estimating Wind Correction Angle](http://www.luizmonteiro.com/Article_Estimating_Wind_Correction_Angle_Printable.htm)
- [Wind Correction Angle](https://flightsimnavigation.wordpress.com/2020/04/07/05-wind-correction-angle/)
- [Triangles](https://owlcation.com/stem/Everything-About-Triangles-and-More-Isosceles-Equilateral-Scalene-Pythagoras-Sine-and-Cosine)
