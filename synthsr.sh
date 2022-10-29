#!/bin/bash

input=`jq -r '.input' config.json`
TYPE=`jq -r '.type' config.json`
ncores=4

[ ! -d output ] && mkdir -p output && outdir="./output"

[ ! -f ${outdir}/${TYPE}.nii.gz ] && echo "running SynthSR" && \
	mri_synthsr --i ${input} --o ${outdir}/${TYPE}.nii.gz --threads ${ncores}

[ ! -f ${outdir}/${TYPE}.nii.gz ] && echo "something went wrong. check logs" && exit 1 || echo "complete" && exit 0
