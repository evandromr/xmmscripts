#!/bin/bash

cp `ls -1 $xmm_rpcdata/*MOS1*ImagingEvts.ds` ./mos1evts_barycen.ds
cp $PWD/../src_evt.reg ./

# Make barycentric correction on the clean event file
barycen table=mos1evts_barycen.ds:EVENTS

# Get the coordinates from the .reg file
while read LINE
do
    srcregion=$LINE
done < src_evt.reg

export srcregion
export mos1table=mos1evts_barycen.ds

export fsrcname="mos1evts_src_0310keV.ds"
export fimgname="mos1evts_src_img_0310keV.ds"
export emin=300
export emax=10000
source mos1selev.sh

export fsrcname="mos1evts_src_032keV.ds"
export fimgname="mos1evts_src_img_032keV.ds"
export emin=300
export emax=2000
source mos1selev.sh

export fsrcname="mos1evts_src_245keV.ds"
export fimgname="mos1evts_src_img_245keV.ds"
export emin=2000
export emax=4500
source mos1selev.sh

export fsrcname="mos1evts_src_4510keV.ds"
export fimgname="mos1evts_src_img_4510keV.ds"
export emin=4500
export emax=10000
source mos1selev.sh
