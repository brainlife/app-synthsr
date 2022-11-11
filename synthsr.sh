#!/bin/bash

t1=`jq -r '.t1' config.json`
t2=`jq -r '.t2' config.json`
TYPE=`jq -r '.type' config.json`
ncores=4

[ ! -d output ] && mkdir -p output && outdir="./output"

[ ! -f ${outdir}/${TYPE}.nii.gz ] && echo "running SynthSR Hyperfine" && \
	mri_synthsr_hyperfine --t1 ${t1} --t2 ${t2} --o ${outdir}/t1.nii.gz --threads ${ncores}

[ ! -f ${outdir}/${TYPE}.nii.gz ] && echo "something went wrong. check logs" && exit 1 || echo "complete" && exit 0
