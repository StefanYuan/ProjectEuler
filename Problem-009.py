Python 3.4.1 (v3.4.1:c0e311e010fc, May 18 2014, 00:54:21) 
[GCC 4.2.1 (Apple Inc. build 5666) (dot 3)] on darwin
Type "copyright", "credits" or "license()" for more information.
>>> WARNING: The version of Tcl/Tk (8.5.9) in use may be unstable.
Visit http://www.python.org/download/mac/tcltk/ for current information.


>>> for c in range( 333,500):
	for a in range (1,333):
		b=1000-a-c
		if a**2+b**2==c**2:
			print(a,b,c)
			a*b*c

