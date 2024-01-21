#!/bin/bash

rm -r log/savedLog/LAB/*.*
rm -r log/sabedLog/MRTO/*.*

mpirun -np 8 ../bin/germaine GERMAINE_LAB_TE.inp GERMAINE_workflow_LAB_TE.inp

cp LOG_TEST.dat log/savedLog/LAB/
cp model/labImi/temp/labImi_eps_stage_7.bin log/savedLog/LAB/labImi_eps.bin
cp model/labImi/temp/labImi_sig_stage_7.bin log/savedLog/LAB/labImi_sig.bin

mpirun -np 8 ../bin/germaine GERMAINE_MRTOsmall_TE.inp GERMAINE_workflow_MRTO_TE.inp

cp LOG_TEST.dat log/savedLog/MRTO/
cp model/MRTOsmall/temp/modelTest_eps_stage_7.bin log/savedLog/MRTO/modelMRTO_eps.bin
cp model/MRTOsmall/temp/modelTest_sig_stage_7.bin log/savedLog/MRTO/modelMRTO_sig.bin
