#!/bin/bash
#
# Script to extract a barycentric corrected light curve for the PN camera
#
# It requires the src.reg and bkg.reg files obtained via SAO-ds9 software
cp `ls -1 $xmm_rpcdata/*PN*ImagingEvts.ds` ./pnevts_barycen.ds
cp $PWD/../src.reg ./
cp $PWD/../bkg.reg ./

while read LINE
do
    srcregion=$LINE
done < src.reg

while read LINE
do
    bkgregion=$LINE
done < bkg.reg

export srcregion
export bkgregion

# Make barycentric correction on the clean event file
barycen table=pnevts_barycen.ds:EVENTS
export pntable=pnevts_barycen.ds

export thebin=5
export strrange="0310keV_bin$thebin"
export emin=300
export emax=10000
source pnlc.sh
export strrange="032keV_bin$thebin"
export emin=300
export emax=2000
source pnlc.sh
export strrange="245keV_bin$thebin"
export emin=2000
export emax=4500
source pnlc.sh
export strrange="4510keV_bin$thebin"
export emin=4500
export emax=10000
source pnlc.sh

export thebin=10
export strrange="0310keV_bin$thebin"
export emin=300
export emax=10000
source pnlc.sh
export strrange="032keV_bin$thebin"
export emin=300
export emax=2000
source pnlc.sh
export strrange="245keV_bin$thebin"
export emin=2000
export emax=4500
source pnlc.sh
export strrange="4510keV_bin$thebin"
export emin=4500
export emax=10000
source pnlc.sh

export thebin=50
export strrange="0310keV_bin$thebin"
export emin=300
export emax=10000
source pnlc.sh
export strrange="032keV_bin$thebin"
export emin=300
export emax=2000
source pnlc.sh
export strrange="245keV_bin$thebin"
export emin=2000
export emax=4500
source pnlc.sh
export strrange="4510keV_bin$thebin"
export emin=4500
export emax=10000
source pnlc.sh

export thebin=150
export strrange="0310keV_bin$thebin"
export emin=300
export emax=10000
source pnlc.sh
export strrange="032keV_bin$thebin"
export emin=300
export emax=2000
source pnlc.sh
export strrange="245keV_bin$thebin"
export emin=2000
export emax=4500
source pnlc.sh
export strrange="4510keV_bin$thebin"
export emin=4500
export emax=10000
source pnlc.sh

export thebin=350
export strrange="0310keV_bin$thebin"
export emin=300
export emax=10000
source pnlc.sh
export strrange="032keV_bin$thebin"
export emin=300
export emax=2000
source pnlc.sh
export strrange="245keV_bin$thebin"
export emin=2000
export emax=4500
source pnlc.sh
export strrange="4510keV_bin$thebin"
export emin=4500
export emax=10000
source pnlc.sh

export thebin=500
export strrang0="0310keV_bin$thebin"
export emin=300
export emax=10000
source pnlc.sh
export strrange="032keV_bin$thebin"
export emin=300
export emax=2000
source pnlc.sh
export strrange="245keV_bin$thebin"
export emin=2000
export emax=4500
source pnlc.sh
export strrange="4510keV_bin$thebin"
export emin=4500
export emax=10000
source pnlc.sh
