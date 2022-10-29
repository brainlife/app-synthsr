[![Abcdspec-compliant](https://img.shields.io/badge/ABCD_Spec-v1.1-green.svg)](https://github.com/brain-life/abcd-spec)
[![Run on Brainlife.io](https://img.shields.io/badge/Brainlife-brainlife.app.379-blue.svg)](https://doi.org/10.25663/brainlife.app.)

# app-synthsr
This app will generate synthetic MP-RAGE images from clinical T1w, T2w, or FLAIR acquisitions using the SynthSR package (Iglesias et al, 2021) built into Freesurfer 7.3.2 (https://surfer.nmr.mgh.harvard.edu/fswiki/SynthSR). This app takes in as input a clinical-grade T1w, T2w, or FLAIR sequence and will output a 1.0 mm^3 isotropic resolution MP-RAGE images that can then be used with common neuroimaging pipelines.

### Authors
- Brad Caron (bacaron@iu.edu)

### Contributors
- Franco Pestilli (frakkopesto@gmail.com)

### Funding 
[![NSF-BCS-1734853](https://img.shields.io/badge/NSF_BCS-1734853-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1734853)
[![NSF-BCS-1636893](https://img.shields.io/badge/NSF_BCS-1636893-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1636893)
[![NSF-ACI-1916518](https://img.shields.io/badge/NSF_ACI-1916518-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1916518)
[![NSF-IIS-1912270](https://img.shields.io/badge/NSF_IIS-1912270-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1912270)
[![NIH-NIBIB-R01EB029272](https://img.shields.io/badge/NIH_NIBIB-R01EB029272-green.svg)](https://grantome.com/grant/NIH/R01-EB029272-01)


### References

Juan Eugenio Iglesias, Benjamin Billot, Yaël Balbastre, Azadeh Tabari, John Conklin, R. Gilberto González, Daniel C. Alexander, Polina Golland, Brian L. Edlow, Bruce Fischl, Joint super-resolution and synthesis of 1mm isotropic MP-RAGE volumes from clinical MRI exams with scans of different orientation, resolution and contrast, NeuroImage, Volume 237, 2021, 118206, ISSN 1053-8119, https://doi.org/10.1016/j.neuroimage.2021.118206.

Avesani, P., McPherson, B., Hayashi, S. et al. The open diffusion data derivatives, brain data upcycling via integrated publishing of derivatives and reproducible open cloud services. Sci Data 6, 69 (2019). https://doi.org/10.1038/s41597-019-0073-y

## Running the App 

### On Brainlife.io

You can submit this App online at [https://doi.org/10.25663/brainlife.app.379](https://doi.org/10.25663/bl.app.) via the "Execute" tab.

### Running Locally (on your machine)

1. git clone this repo.
2. Inside the cloned directory, create `config.json` with something like the following content with paths to your input files.

```json
{
        "input": "./input/t1/t1.nii.gz",
        "TYPE": "t1"
}
```

### Sample Datasets

You can download sample datasets from Brainlife using [Brainlife CLI](https://github.com/brain-life/cli).

```
npm install -g brainlife
bl login
mkdir input
bl dataset download --id 5b96bbf2059cf900271924f3 && mv 5b96bbf2059cf900271924f3 input/

```


3. Launch the App by executing `main`

```bash
./main
```

## Output

The main output of this app is a neuro/anat/t1w datatype.

#### Product.json
The secondary output of this app is `product.json`. This file allows web interfaces, DB and API calls on the results of the processing. 

### Dependencies

This App requires the following libraries when run locally.

  - singularity: https://singularity.lbl.gov/
  - Freesurfer: https://hub.docker.com/r/brainlife/freesurfer/tags/7.3.2
  - jsonlab: https://github.com/fangq/jsonlab.git
