@c
@c  COPYRIGHT (c) 1988-1998.
@c  On-Line Applications Research Corporation (OAR).
@c  All rights reserved.
@c
@c  $Id$
@c

@ifinfo
@node Board Support Packages, Board Support Packages Introduction, Default Fatal Error Processing Default Fatal Error Handler Operations, Top
@end ifinfo
@chapter Board Support Packages
@ifinfo
@menu
* Board Support Packages Introduction::
* Board Support Packages System Reset::
* Board Support Packages Processor Initialization::
@end menu
@end ifinfo

@ifinfo
@node Board Support Packages Introduction, Board Support Packages System Reset, Board Support Packages, Board Support Packages
@end ifinfo
@section Introduction

An RTEMS Board Support Package (BSP) must be designed
to support a particular processor and target board combination.
This chapter presents a discussion of PA-RISC specific BSP
issues.   For more information on developing a BSP, refer to the
chapter titled Board Support Packages in the RTEMS
Applications User's Guide.

@ifinfo
@node Board Support Packages System Reset, Board Support Packages Processor Initialization, Board Support Packages Introduction, Board Support Packages
@end ifinfo
@section System Reset

An RTEMS based application is initiated or
re-initiated when the PA-RISC processor is reset.  The behavior
of a PA-RISC upon reset is implementation defined and thus is
beyond the scope of this manual.

@ifinfo
@node Board Support Packages Processor Initialization, Processor Dependent Information Table, Board Support Packages System Reset, Board Support Packages
@end ifinfo
@section Processor Initialization

The precise requirements for initialization of a
particular implementation of the PA-RISC architecture are
implementation defined.  Thus it is impossible to provide exact
details of this procedure in this manual.  However, the
requirements of RTEMS which must be satisfied by this
initialization code can be discussed.

RTEMS assumes that interrupts are disabled when the
initialize_executive directive is invoked.  Interrupts are
enabled automatically by RTEMS as part of the initialize
executive directive and device driver initialization occurs
after interrupts are enabled.  Thus all interrupt sources should
be quiescent until the system's device drivers have been
initialized and installed their interrupt handlers.

If the processor requires initialization of the
cache, then it should be be done during the reset application
initialization code.

Finally, the requirements in the Board Support
Packages chapter of the Applications User's Manual for the
reset code which is executed before the call to initialize
executive must be satisfied.


