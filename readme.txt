==============================================================================
   US-Flexalign: a unified platform for flexible structure alignment
   of proteins and RNAs

   References to cite:
   (1) Y Zhu, S Yan, X Zhang, Y Zhang, C Zhang (2026)

   DISCLAIMER:
     Permission to use, copy, modify, and distribute this program for 
     any purpose, with or without fee, is hereby granted, provided that
     the notices on the head, the reference information, and this
     copyright notice appear in all copies or substantial portions of 
     the Software. It is provided "as is" without express or implied 
     warranty.

   *************** updating history ********************************
   2026/08/14: A C/C++ code of US-Flexalign was constructed by Y Zhu
               and C Zhang
   2026/08/26: color different regions by different colors in -o
===============================================================================

=============================
 How to install US-Flexalign
=============================
To compile the program in your Linux computer, simply enter

    make

or

    g++ -static -O3 -ffast-math -lm -o USFlexalign USFlexalign.cpp

The '-static' flag should be removed on macOS, which does not support
building static executables. Compilation takes just a few seconds.

USFlexalign compiled on Linux, macOS and Linux Subsystem for Windows (WSL2) on
Windows 10 onwards can read both uncompressed files and gz compressed
files, provided that the "gunzip" command is available. On the other hand, due
to the lack of POSIX support on Windows, US-Flexalign natively compiled on Windows
without WSL2 cannot parse gz compressed files.

US-Flexalign is known to be compilable by g++ version 4.8.5 or later, clang++
version 12.0.5 or later and mingw-w64 version 9.3 or later.

=========================
 How to use US-Flexalign
=========================
You can run the program without arguments to obtain a brief instruction

    ./USFlexalign structure1.pdb structure2.pdb

A full list of available options can be explored by:

    ./USFlexalign -h