from sympy.abc import *

import cmath, math
from math import *
import sympy as sp
from sympy import *
import numpy as np
from matplotlib import pyplot as plt
from pint import UnitRegistry
from scipy import constants as const

unit = UnitRegistry()
init_printing(print_builtin=False,use_latex=False)#forecolor="White", fontsize=8)
plt.style.use('dark_background')

ipy = get_ipython()
ipy.magic("precision 3")

def cosd(x):
  return math.cos(math.radians(x))
def sind(x):
  return math.sin(math.radians(x))
def tand(x):
  return math.tan(math.radians(x))
def acosd(x):
  return math.degrees(math.acos(x))
def asind(x):
  return math.degrees(math.asin(x))
def atand(x):
  return math.degrees(math.atan(x))
def atan2d(y, x):
  return math.degrees(math.atan2(y, x))

