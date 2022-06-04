-- Length [L]

millimeter  = 1
millimeter2 = millimeter * millimeter
millimeter3 = millimeter * millimeter2

mm  = millimeter
mm2 = millimeter2
mm3 = millimeter3

centimeter  = 10 * millimeter
centimeter2 = centimeter * centimeter
centimeter3 = centimeter * centimeter2

cm  = centimeter
cm2 = centimeter2
cm3 = centimeter3

decimeter  = 100 * millimeter
decimeter2 = decimeter * decimeter
decimeter3 = decimeter * decimeter2

dm  = decimeter
dm2 = decimeter2
dm3 = decimeter3

liter = decimeter3
l     = liter

ml  = 1e-3  * l
mul = 1e-6  * l
nl  = 1e-9  * l
pl  = 1e-12 * l

meter  = 1000 * millimeter
meter2 = meter * meter
meter3 = meter * meter2

m = meter
m2 = meter2
m3 = meter3

kilometer  = 1000 * meter
kilometer2 = kilometer * kilometer
kilometer3 = kilometer * kilometer2

km = kilometer
km2 = kilometer2
km3 = kilometer3

micrometer = 1e-6 * meter
um  = micrometer
mum = micrometer

micron  = micrometer
micron2 = micrometer * micrometer
micron3 = micron2    * micrometer

nanometer = 1e-9 * meter
nm        = nanometer

angstrom   = 1e-10 * meter
fermi      = 1e-15 * meter

barn      = 1e-28 * meter2
millibarn = 1e-3  * barn
microbarn = 1e-6  * barn
nanobarn  = 1e-9  * barn
picobarn  = 1e-12 * barn
femtobarn = 1e-15 * barn

foot = 30.48 * cm
ft   = foot


-- Angle
radian = 1
rad    = radian

milliradian = 1e-3 * radian
mrad        = milliradian

degree = (3.14159265358979323846 / 180.0) * radian
deg    = degree

steradian = 1
sr        = steradian

-- Time [T]
nanosecond  = 1
microsecond = 1e3  *  nanosecond
millisecond = 1e3  * microsecond
second      = 1e3  * millisecond
picosecond  = 1e-3 *  nanosecond
femtosecond = 1e-3 *  picosecond

minute = 60     * second
hour   = 60     * minute
day    = 24     * hour
year   = 365.25 * day

s   =      second
ms  = millisecond
ps  =  picosecond
fs  = femtosecond
us  = microsecond
mus = microsecond
ns  =  nanosecond

hertz     = 1 / second
kilohertz = 1e3 * hertz
megahertz = 1e6 * hertz
gigahertz = 1e6 * hertz

MHZ = megahertz
kHZ = kilohertz
kHz = kHZ
GHZ = gigahertz


-- Electric charge [Q]
eplus   = 1
eSI     = 1.60217733e-19
coulomb = eplus / eSI

-- Energy [E]
megaelectronvolt = 1
electronvolt     = 1e-6 * megaelectronvolt
milielectronvolt = 1e-9 * megaelectronvolt
kiloelectronvolt = 1e-3 * megaelectronvolt
gigaelectronvolt = 1e+3 * megaelectronvolt
teraelectronvolt = 1e+6 * megaelectronvolt
petaelectronvolt = 1e+9 * megaelectronvolt

meV = milielectronvolt
eV  =     electronvolt
keV = kiloelectronvolt
MeV = megaelectronvolt
GeV = gigaelectronvolt
TeV = teraelectronvolt
PeV = petaelectronvolt

eV2 = eV * eV

joule = electronvolt / eSI
J     = joule

milijoule  = 1e-3  * joule
microjoule = 1e-6  * joule
nanojoule  = 1e-9  * joule
picojoule  = 1e-12 * joule
femtojoule = 1e-15 * joule

mJ  = milijoule
muJ = microjoule
nJ  = nanojoule
pJ  = picojoule
fJ  = femtojoule

-- Mass [E][T^2][L^-2]
kilogram  = joule * second * second / meter2
gram      = 1.e-3 * kilogram
milligram = 1.e-3 * gram
ton       = 1.e+3 * kilogram
kiloton   = 1.e+3 * ton

kg = kilogram
g  = gram
mg = milligram

-- Power [E][T^-1]
watt      = joule / second
milliwatt = 1E-3 * watt
microwatt = 1E-6 * watt

W   = watt
mW  = milliwatt
muW = microwatt

-- Force [E][L^-1]
newton = joule / meter

-- Pressure [E][L^-3]
pascal = newton / m2

Pa  = pascal
kPa = 1000 * Pa
MPa = 1e+6 * Pa
GPa = 1e+9 * Pa

bar      = 100000 * pascal
millibar = 1e-3   * bar

atmosphere = 101325 * pascal

-- Electric current [Q][T^-1]
ampere      = coulomb / second
milliampere = 1e-3 * ampere
microampere = 1e-6 * ampere
nanoampere  = 1e-9 * ampere

mA  = milliampere
uA  = microampere
muA = microampere
nA  = nanoampere

-- Electric potential [E][Q^-1]
megavolt  = megaelectronvolt / eplus
kilovolt  = 1e-3 * megavolt
volt      = 1e-6 * megavolt
millivolt = 1e-3 * volt

V = volt
mV = millivolt
kV = kilovolt
MV = megavolt


-- Electric resistance [E][T][Q^-2]
ohm = volt / ampere

-- Electric capacitance [Q^2][E^-1]
farad      = coulomb / volt
millifarad = 1e-3  * farad
microfarad = 1e-6  * farad
nanofarad  = 1e-9  * farad
picofarad  = 1e-12 * farad

mF  = millifarad
uF  = microfarad
muF = microfarad
nF  =  nanofarad
pF  =  picofarad

-- Magnetic Flux [T][E][Q^-1]
weber = volt * second

-- Magnetic Field [T][E][Q^-1][L^-2]
tesla     = volt*second / meter2
gauss     = 1e-4 * tesla
kilogauss = 1e3 * gauss

-- Inductance [T^2][E][Q^-2]
henry = weber / ampere
-- Temperature
kelvin = 1

-- Amount of substance

mol      = 1
milimol  = 1E-3  * mol
micromol = 1E-6  * mol
nanomol  = 1E-9  * mol
picomol  = 1E-12 * mol

-- Activity [T^-1]
becquerel = 1 / second
curie     = 3.7e+10 * becquerel

Bq   = becquerel
mBq  = 1e-3 * becquerel
uBq  = 1e-6 * becquerel
muBq = 1e-6 * becquerel
kBq =  1e+3 * becquerel
MBq =  1e+6 * becquerel

cks = Bq/keV
U238ppb = Bq / 81
Th232ppb = Bq / 246

-- Absorbed dose [L^2][T^-2]
gray = joule / kilogram

-- Luminous intensity [I]
candela = 1

-- Luminous flux [I]
lumen = candela * steradian

-- Illuminance [I][L^-2]
lux = lumen / meter2

-- Miscellaneous
perCent     = 1e-2
perThousand = 1e-3
perMillion  = 1e-6

pes = 1
adc = 1

kelvinToCelsius = subtract 273.15
celsiusToKelvin =         (273.15+)
farenheitToCelsius = (/1.8) . subtract 32
celsiusToFarenheit = (32+) . (1.8*)
