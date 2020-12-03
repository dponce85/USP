#!/bin/sh 
#-----------------------------------------------------------------------------
# Taiwan Semiconductor Manufacturing Company, Ltd.
#-----------------------------------------------------------------------------
#
# Silicon Ensemble 5.X Stream Layer Mapping Table Generator 
#
# Sr. CAD Engineer: Ken Chung-Hsing Wang
#-----------------------------------------------------------------------------
# History:
#
# REV 1.0 06/15/98 KEN created
# REV 1.1 03/15/99 KEN modified for 0.15um process 
#
#-----------------------------------------------------------------------------

#
# mapping table
#
M3='#-----------------------------------------------------------------------------
# Taiwan Semiconductor Manufacturing Company, Ltd.
#-----------------------------------------------------------------------------
#
# Silicon Ensemble 5.X Stream layer mapping table for TSMC DSD 
#
#-----------------------------------------------------------------------------
#gds layer	SE layer	Layer object type
#=========	========	=================
#7               NAME            PIN;
#7               NAME            SPNET;
#8               NAME            NET; 
13		POLY1		NET;
#14              POLY2 		NET;
15		CONT	 	VIA;
16		METAL1		NET;
16		METAL1		VIA;
16		METAL1		SPNET;
17              VIA12           VIA;
18		METAL2		NET;
18		METAL2		VIA;
18		METAL2		SPNET;
27              VIA23           VIA;
28		METAL3		NET;
28		METAL3		VIA;
28		METAL3		SPNET;
40              NAME            PIN  METAL1 ;
41              NAME            PIN  METAL2 ;
42              NAME            PIN  METAL3 ;
43              NAME            PIN  METAL4 ;
44              NAME            PIN  METAL5 ;
45              NAME            PIN  METAL6 ;
46              NAME            PIN  METAL7 ;
#62 		CELL                 ; #component outline
62 		NAME 		CELL ; #component name '
M4='29              VIA34           VIA;
31		METAL4		NET;
31		METAL4		VIA;
31		METAL4		SPNET;'
M5='32              VIA45           VIA;
33		METAL5		NET;
33		METAL5		VIA;
33		METAL5		SPNET;'
M6='39              VIA56           VIA;
38		METAL6		NET;
38		METAL6		VIA;
38		METAL6		SPNET;'
M7='21              VIA67           VIA;
22		METAL7		NET;
22		METAL7		VIA;
22		METAL7		SPNET;'

EXE=`basename $0`
HELP="
 
Silicon Ensemble Stream Layer Mapping Table Utility:
 
> $EXE <options>

Example:

> $EXE -layer 4 

Options:
 
  -h|-help        HELP, print this message
 
  -layer          Metal Layer number 7|6|5|4|3, Default is \"5\". 
                  Create a \"gds2.map\" for the specified layer number.
 
"
#
# argument
#
mapfile="gds2.map"
layer="5"

[ -z "$1" ] && { echo "$HELP"; exit 0; }
while [ -n "$1" ]; do
case "$1" in
  -h|-help)
    echo "$HELP"; exit 0;
    ;;
  -layer)
    [ -z "$2" ] && { echo "Error: No arg $1 <layer number>"; exit 1; }
    layer="$2"; shift
    ;;
  *)
    echo "$1" | grep '^-' >/dev/null && { echo "Unknown option $1"; exit 1; }
esac
shift
done

echo "$M3" > $mapfile

[ `expr $layer \> 3` = 1 ] && { echo "$M4" >> $mapfile ; }
[ `expr $layer \> 4` = 1 ] && { echo "$M5" >> $mapfile ; }
[ `expr $layer \> 5` = 1 ] && { echo "$M6" >> $mapfile ; }
[ `expr $layer \> 6` = 1 ] && { echo "$M7" >> $mapfile ; }
