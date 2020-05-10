---
title: "HiHat Pedal Settings"
cards: "cards-megadrum"
---
* [Type](#Type)
* [New Algorithm](#NewAlgrthm)
* [Curve](#Curve)
* [Chick Delay](#ChckDelay)
* [Alt In](#AltIn)
* [CC Value](#CCValue)
* [CC Reduction Level](#CCRdcLvl)
* [Reverse Input Levels](#LvlsRevers)
* [Enable Soft Chick](#EnSoftChick)
* [Levels Auto](#LevelsAuto)
* [Low Level](#LowLevel)
* [High Level](#HiLevel)
* [OpenLvl / SOpenLvl / SOpenLvl2 / HOpenLvl / HOpenLvl2](#OpenLvl)
* [ClosedLvl](#ClosedLvl)
* [MinVlcty / MaxVlcty / ChckDead / ChkCrv](#VlctyChckDeadCrv)
* [ChickThrsh](#ChickThrsh)
* [ShrtChckTh](#ShrtChckTh)
* [LngChckTh](#LngChckTh)
* [HH Input](#HHInput)
* [BowSO / EdgeSO / BellSO / BowSO2 / EdgeSO2 / BellSO2](#SO)
* [BowHO / EdgeHO / BellHO / BowHO2 / EdgeHO2 / BellHO2](#HO)
* [BowSCL / EdgeSCL / BellSCL](#SCL)
* [BowCL / EdgeCL / BellCL](#CL)
* [Chick](#Chick)
* [Splash](#Splash)

## <a name="Type"></a>Type
```
<HiHat Pedal   >
Type:   F.Contr

<HiHat Pedal   >
Type:       Pot
```
Set the type of the HiHat pedal. The only difference, at the moment, is that
when it set to F.Contr (Foot Controller) MegaDrum send Control Change (CC)
messages with the changes of the pedal position. And when it is set to Pot
(Potentiometer) it doesn't send CC messages.

## <a name="NewAlgrthm"></a>New Algorithm
```
<HiHat Pedal   >
New Algrthm: No
```
New pedal handling algorithm for CC4 messages and Chick/Splash triggering.
Default is No. When set to Yes it uses 4 settings:

* MinVlcty
* MaxVlcty
* ChckDead
* ChkCrv

* If you press/release your pedal longer then ChkDead time period then no
  chick/splash will be triggered. To find right setting for it, navigate to
  Pedal->ChkDead and see detected values for various press speeds.

* If you press/release your pedal slower then MinVlcty but shorter than ChkDead
  then chick/splash will have velocity 1.

* If you press/release your pedal faster then MaxVlcty then chick/splash will
  have velocity 127 if started from full open or below 127 if started from lower
  position.

* If you press/release your pedal with a velocity between MinVlcty and MaxVlcty
  then chick/splash will have velocity between 127 and 1 depending on where the
  press started and the press velocity.

ChkCrv is used to apply desired velocity Curve to chick/splash notes.

To configure:

1. navigate to Pedal->MaxVlcty and press the pedal as fast as possible. Note the
   "raw" velocity value you see and set MaxVlcty just below this value.
   In my case it was around 900.

2. navigate to Pedal->MinVlcty and press the pedal as slow as you want it to be
   still registered as chick. Note the "raw" velocity value you see and set
   MinVlcty just above this value. In my case it was around 400.

3. navigate to Pedal->ChckDead and press the pedal as slow as you want it to be
   still registered as chick. Note the "raw" timer value you see and set ChckDead
   just above this value. In my case it was around 600.

4. navigate to ChkCrv and set it to Exp2C. You may of course use another Curve
   or create a custom Curve for chicks and I recommend to use Exp2C as a starting
   point for the custom chick Curve.

## <a name="Curve"></a>Curve
```
<HiHat Pedal   >
Curve:  Linear
```
Set a curve you want to apply to the HiHat pedal CC messages. Options are

LinearC, Log1C, Log2C, Log3C, Exp1C, Exp2C, S1C, S2C, Strong1C, Strong2C.

Default is LinearC. Can be used to metigate non-linearity of the pedal output.

## <a name="ChckDelay"></a>Chick Delay
```
<HiHat Pedal   >
ChckDelay:    0
```
Sets a number of milliseconds MegaDrum will wait before sending a Chick note,
when you do a Chick. It can be set to any value above 0. If you set it to 0 you
can only get Chicks. The higher ChckDelay the easier it is to get Splashes but
the longer delays are when doing Chicks. If set too high, 15-30 milliseconds,
you might begin noticing Chick latency.

Default is 0.

## <a name="AltIn"></a>Alt In
```
<HiHat Pedal   >
AltIn:       No
```
Here you can choose to use either a standard HiHat pedal input if set to No, or
an alternative high impedance HiHat pedal input if set to Yes. High impedance
might need to be used with high impedance output pedals.

Default is No.

## <a name="CCValue"></a>CC Value
```
<HiHat Pedal   >
CC Value:     4
```
Cotrol Change message number to be used with F.Contr type.

Default is 4.

## <a name="CCRdcLvl"></a>CC Reduction Level
```
<HiHat Pedal   >
CC RdcLvl:    0
```
CC MIDI messages reduction level . If set above 0 it reduces amount of CC MIDI
messages for pedal position changes.
Can be set between 0 (default - no reduction) and 3 (maximum reduction).

## <a name="LvlsRevers"></a>Reverse Input Levels
```
<HiHat Pedal   >
LvlsRevers:  No
```
For some types of pedals it necessary to set it to Yes to reverse input levels
read from a pedal.

## <a name="EnSoftChick"></a>Enable Soft Chick
```
<HiHat Pedal   >
EnSoftChick: No
```
Enables or disables "soft chicks". "Soft chick" are HiHat "chicks" which are
triggered when the pedal is pressed only half way and then quickly released.

## <a name="LevelsAuto"></a>Levels Auto
```
<HiHat Pedal   >
LevelsAuto: Yes
```
If set to Yes MegaDrum will try automatically adjust HiHat Pedal -> LowLevel and
HiHat Pedal -> HiLevel after you pressed the pedal a few times. You may use it
initially as a guidance for proper Low and High levels of the pedal. Once you
saw what levels were auto set you'd better set it to No and adjust LowLevel
and HiLevel values manually.

Default is Yes.

## <a name="LowLevel"></a>Low Level
```
<HiHat Pedal   >
LowLevel:    90
```
Set the low level of the pedal, when pedal is fully pressed. If set too low you
may not be able to get fully closed HiHat pedal.

## <a name="HiLevel"></a>High Level
```
<HiHat Pedal   >
HiLevel:    900
```
Set the high level of the pedal, when pedal is fully open (released). If set too
high you may not be able to get fully open HiHat pedal.

You should adjust both low and high level so that the values were as far apart
as possible and yet the pedal reaches extreme positions. Use VU Meter
(not very accurate), Big VU Meter (more accurate) or CC messages
(with MDM Raw MIDI Log). When using CC messages and MDM Raw MIDI Log as a
guidance you need to achieve such a configuration that CC messages are not sent
by MegaDrum in extreme pedal positions.

## <a name="OpenLvl"></a>OpenLvl / SOpenLvl / SOpenLvl2 / HOpenLvl / HOpenLvl2
```
<HiHat Pedal >

OpenLvl:      8
```
Measured against CC MIDI message value: 0 - for fully open, 127 - for fully
closed. Set the level below which HiHat hits registered as open/semi open/semi
open2/half open/half open2 hits.

## <a name="ClosedLvl"></a>ClosedLvl
```
<HiHat Pedal   >
ClosedLvl:  110
```
Measured against CC MIDI message value: 0 - for fully open, 127 - for fully
closed. Set the level below which HiHat hits registered as semi closed and above
which as closed hits.

## <a name="VlctyChckDeadCrv"></a>MinVlcty / MaxVlcty / ChckDead / ChkCrv
```
<HiHat Pedal   >
MinVlcty:   400
<HiHat Pedal   >
MaxVlcty:   900
<HiHat Pedal   >
ChckDead:   600
<HiHat Pedal   >
ChkCrv:   Exp2C
```
These 4 settings are used only when "HiHat Pedal -> New Algrthm:" is set to Yes.
See recommendation for configuring these settings in
HiHat Pedal -> New Algrthm above.

## <a name="ChickThrsh"></a>ChickThrsh
```
<HiHat Pedal   >
ChickThrsh  120
```
Measured against CC MIDI message value: 0 - for fully open, 127 - for fully
closed. Set the level below which a following pedal 'step on' will generate a
chick.

## <a name="ShrtChckTh"></a>ShrtChckTh
```
<HiHat Pedal   >
ShrtChckTh  115
```
Measured against CC MIDI message value: 0 - for fully open, 127 - for fully
closed. Set the level below which a following pedal 'step on' will generate a
chick with velocity between 1 and 64 depending on the speed with which the pedal
is pressed.

## <a name="LngChckTh"></a>LngChckTh
```
<HiHat Pedal   >
LngChckTh:   16
```
Measured against CC MIDI message value: 0 - for fully open, 127 - for fully
closed. Set the level below which a following pedal 'step on' will generate a
chick with velocity between 1 and 127 depending on the speed with which the
pedal is pressed.

## <a name="HHInput"></a>HH Input
```
<HiHat Pedal   >
HHInput:      2
```
Set the input number which will be paired with the HiHat pedal as a HiHat cymbal.
It is set to input 2 by default which is a default HiHat cymbal input.
It can be set to any even input number corresponding to a Bow input of
a dual (3 zone) cymbal.

## <a name="SO"></a>BowSO / EdgeSO / BellSO / BowSO2 / EdgeSO2 / BellSO2
```
<HiHat Pedal   >
BowSO: G1    44
```
Set the note number which MegaDrum will send when you hit HiHat on the
Bow/Edge/Bell and the HiHat pedal is between fully open and half pressed (half open).

## <a name="HO"></a>BowHO / EdgeHO / BellHO / BowHO2 / EdgeHO2 / BellHO2
```
<HiHat Pedal   >
BowHO: G1    44
```
Set the note number which MegaDrum will send when you hit HiHat on the
Bow/Edge/Bell and the HiHat pedal is half pressed (half open).

## <a name="SCL"></a>BowSCL / EdgeSCL / BellSCL
```
<HiHat Pedal   >
BowSCL:G1    44
```
Set the note number which MegaDrum will send when you hit HiHat on the
Bow/Edge/Bell and the HiHat pedal is between half pressed (half open)
and fully pressed.

## <a name="CL"></a>BowCL / EdgeCL / BellCL
```
<HiHat Pedal   >
BowCL: G1    44
```
Set the note number which MegaDrum will send when you hit HiHat on the
Bow/Edge/Bell and the HiHat pedal is fully pressed.

## <a name="Chick"></a>Chick
```
<HiHat Pedal   >
Chick: F#2   42
```
Set the note number which MegaDrum will send when you do HiHat chicks.

## <a name="Splash"></a>Splash
```
<HiHat Pedal   >
Splsh: A#2   46
```
Set the note number which MegaDrum will send when you do HiHat splashes.
