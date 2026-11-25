<h1 align="center">SynthSR</h1>

<p align="center">
  A synthetic 1 mm isotropic MP-RAGE T1-weighted image from clinical or low-field T1w, T2w or FLAIR scans, with FreeSurfer 7.3.2 SynthSR.
</p>

<p align="center">
  <a href="https://github.com/brainlife/abcd-spec"><img src="https://img.shields.io/badge/ABCD_Spec-v1.1-green.svg" alt="ABCD Spec v1.1"></a>
  <a href="https://doi.org/10.25663/brainlife.app.694"><img src="https://img.shields.io/badge/Brainlife-brainlife.app.694-blue.svg" alt="Run on brainlife.io"></a>
  <a href="https://github.com/brainlife/app-synthsr/blob/main/LICENSE"><img src="https://img.shields.io/badge/License-MIT-lightgrey.svg" alt="MIT license"></a>
</p>

> **This branch, `v1.0`, runs 3 brainlife.io Apps** that share the same code:
>
> - Generate synthetic MP-RAGE T1 image from clinical FLAIR data ([doi:10.25663/brainlife.app.694](https://doi.org/10.25663/brainlife.app.694))
> - Generate synthetic MP-RAGE T1 image from T2w data ([doi:10.25663/brainlife.app.693](https://doi.org/10.25663/brainlife.app.693))
> - Generate synthetic MP-RAGE T1 image from T1w data ([doi:10.25663/brainlife.app.692](https://doi.org/10.25663/brainlife.app.692))
>
> The other Apps in this repository are listed under **Versions on brainlife.io** below.

## At a glance

<!-- brainlife-app:begin (generated from the App manifest; edit the manifest, not this block) -->

### Generate synthetic MP-RAGE T1 image from clinical FLAIR data

> **Synthesises a 1 mm isotropic MP-RAGE-like T1-weighted image from a clinical FLAIR image with FreeSurfer 7.3.2 SynthSR (mri_synthsr).**

Runs mri_synthsr on a clinical FLAIR image of any resolution or orientation to produce a synthetic 1 mm MP-RAGE T1w volume. Use it to make clinical or low-resolution scans usable by T1w-based tools such as FreeSurfer or segmentation Apps. The output is a synthetic image, not a measurement, and should not be used for quantitative intensity analyses.

| | |
|---|---|
| **Inputs** | `neuro/anat/flair` |
| **Outputs** | `neuro/anat/t1w` |
| **Container** | `brainlife/freesurfer:7.3.2` |
| **Resources** | 4 CPUs · 1 h walltime |
| **Requires** | `FREESURFER_LICENSE` |
| **Run it** | [doi.org/10.25663/brainlife.app.694](https://doi.org/10.25663/brainlife.app.694) |

#### Inputs

| Input | Datatype | Required | Description |
|---|---|---|---|
| `input` | `neuro/anat/flair` | yes | Clinical FLAIR image (NIfTI); any resolution, contrast and orientation accepted by SynthSR. |

#### Outputs

| Output | Datatype | Description |
|---|---|---|
| `output` | `neuro/anat/t1w` | Synthetic 1 mm isotropic MP-RAGE-like T1-weighted image. |

<details>
<summary><b>Parameters</b> (1)</summary>

| Parameter | Type | Default | Description |
|---|---|---|---|
| `type` | string | `t1` | Base name of the output image file (<type>.nii.gz); leave as t1. |

</details>

### Generate synthetic MP-RAGE T1 image from T2w data

> **Synthesises a 1 mm isotropic MP-RAGE-like T1-weighted image from a T2-weighted image with FreeSurfer 7.3.2 SynthSR (mri_synthsr).**

Runs mri_synthsr on a T2-weighted image of any resolution or orientation to produce a synthetic 1 mm MP-RAGE T1w volume. Use it to make clinical or low-resolution scans usable by T1w-based tools such as FreeSurfer or segmentation Apps. The output is a synthetic image, not a measurement, and should not be used for quantitative intensity analyses.

| | |
|---|---|
| **Inputs** | `neuro/anat/t2w` |
| **Outputs** | `neuro/anat/t1w` |
| **Container** | `brainlife/freesurfer:7.3.2` |
| **Resources** | 4 CPUs · 1 h walltime |
| **Requires** | `FREESURFER_LICENSE` |
| **Run it** | [doi.org/10.25663/brainlife.app.693](https://doi.org/10.25663/brainlife.app.693) |

#### Inputs

| Input | Datatype | Required | Description |
|---|---|---|---|
| `input` | `neuro/anat/t2w` | yes | T2-weighted image (NIfTI); any resolution, contrast and orientation accepted by SynthSR. |

#### Outputs

| Output | Datatype | Description |
|---|---|---|
| `output` | `neuro/anat/t1w` | Synthetic 1 mm isotropic MP-RAGE-like T1-weighted image. |

<details>
<summary><b>Parameters</b> (1)</summary>

| Parameter | Type | Default | Description |
|---|---|---|---|
| `type` | string | `t1` | Base name of the output image file (<type>.nii.gz); leave as t1. |

</details>

### Generate synthetic MP-RAGE T1 image from T1w data

> **Synthesises a 1 mm isotropic MP-RAGE-like T1-weighted image from a T1-weighted image with FreeSurfer 7.3.2 SynthSR (mri_synthsr).**

Runs mri_synthsr on a T1-weighted image of any resolution or orientation to produce a synthetic 1 mm MP-RAGE T1w volume. Use it to make clinical or low-resolution scans usable by T1w-based tools such as FreeSurfer or segmentation Apps. The output is a synthetic image, not a measurement, and should not be used for quantitative intensity analyses.

| | |
|---|---|
| **Inputs** | `neuro/anat/t1w` |
| **Outputs** | `neuro/anat/t1w` |
| **Container** | `brainlife/freesurfer:7.3.2` |
| **Resources** | 4 CPUs · 1 h walltime |
| **Requires** | `FREESURFER_LICENSE` |
| **Run it** | [doi.org/10.25663/brainlife.app.692](https://doi.org/10.25663/brainlife.app.692) |

#### Inputs

| Input | Datatype | Required | Description |
|---|---|---|---|
| `input` | `neuro/anat/t1w` | yes | T1-weighted image (NIfTI); any resolution, contrast and orientation accepted by SynthSR. |

#### Outputs

| Output | Datatype | Description |
|---|---|---|
| `output` | `neuro/anat/t1w` | Synthetic 1 mm isotropic MP-RAGE-like T1-weighted image. |

<details>
<summary><b>Parameters</b> (1)</summary>

| Parameter | Type | Default | Description |
|---|---|---|---|
| `type` | string | `t1` | Base name of the output image file (<type>.nii.gz); leave as t1. |

</details>

<!-- brainlife-app:end -->

## Versions on brainlife.io

This repository hosts four Apps, one for each kind of input scan.

| App | Input | Branch | Run it | Status |
|---|---|---|---|---|
| Generate synthetic MP-RAGE T1 image from T1w and T2w data using SynthSR Hyperfine | low-field T1w + T2w | [`hyperfine-v1.0`](https://github.com/brainlife/app-synthsr/tree/hyperfine-v1.0) | [doi:10.25663/brainlife.app.705](https://doi.org/10.25663/brainlife.app.705) | current |
| **Generate synthetic MP-RAGE T1 image from T1w data** (this branch) | T1w | [`v1.0`](https://github.com/brainlife/app-synthsr/tree/v1.0) | [doi:10.25663/brainlife.app.692](https://doi.org/10.25663/brainlife.app.692) | current |
| **Generate synthetic MP-RAGE T1 image from T2w data** (this branch) | T2w | [`v1.0`](https://github.com/brainlife/app-synthsr/tree/v1.0) | [doi:10.25663/brainlife.app.693](https://doi.org/10.25663/brainlife.app.693) | current |
| **Generate synthetic MP-RAGE T1 image from clinical FLAIR data** (this branch) | FLAIR | [`v1.0`](https://github.com/brainlife/app-synthsr/tree/v1.0) | [doi:10.25663/brainlife.app.694](https://doi.org/10.25663/brainlife.app.694) | current |

## How it works

[SynthSR](https://surfer.nmr.mgh.harvard.edu/fswiki/SynthSR) (Iglesias et al., 2021), built into FreeSurfer 7.3.2, turns a clinical-grade scan of any resolution, orientation and contrast into a 1 mm isotropic MP-RAGE-like T1-weighted volume that common neuroimaging pipelines (FreeSurfer, segmentation Apps, …) can use.

- The `v1.0` Apps run `mri_synthsr` on a single T1w, T2w or FLAIR image.
- The Hyperfine App runs `mri_synthsr_hyperfine` on a T1w and a T2w scan of the same subject and session from a portable low-field (Hyperfine) scanner.

The output is a synthetic image, not a measurement: do not use it for quantitative intensity analyses.

## Running the App

### On brainlife.io

Open the App that matches your data (see the table above), choose the input image(s) from your project and press **Execute**. The synthetic image is archived to your project as a `neuro/anat/t1w` dataset tagged `synthetic_mprage` and `mri_synthsr`. Leave the `type` parameter at `t1`.

### Locally

You need [Singularity/Apptainer](https://apptainer.org/), [`jq`](https://jqlang.github.io/jq/) and a [FreeSurfer license](https://surfer.nmr.mgh.harvard.edu/registration.html). `main` runs `synthsr.sh` inside the `brainlife/freesurfer:7.3.2` container.

1. Clone this repository and check out the branch of the App you want: `git checkout hyperfine-v1.0` or `git checkout v1.0`.
2. Create `config.json` with the paths to your inputs. For the Hyperfine App:

   ```json
   {
       "t1": "/input/t1/t1.nii.gz",
       "t2": "/input/t2/t2.nii.gz",
       "type": "t1"
   }
   ```

   For the single-image Apps (`v1.0`), give one image under `input`:

   ```json
   {
       "input": "/input/t1/t1.nii.gz",
       "type": "t1"
   }
   ```

3. Export your FreeSurfer license and run the App:

   ```bash
   export FREESURFER_LICENSE="$(cat ~/freesurfer/license.txt)"
   ./main
   ```

### Sample data

Download a sample T1w image from brainlife.io with the [brainlife CLI](https://github.com/brainlife/cli):

```bash
npm install -g brainlife
bl login
mkdir input
bl dataset download --id 5b96bbf2059cf900271924f3 && mv 5b96bbf2059cf900271924f3 input/
```

## Outputs

```text
output/
└── t1.nii.gz    synthetic 1 mm isotropic MP-RAGE-like T1w image
```

## Troubleshooting

- **`something went wrong. check logs`**: SynthSR did not write the output image. Check the log for `mri_synthsr` errors.
- **`Please set FREESURFER_LICENSE in .bashrc`**: provide a FreeSurfer license in the `FREESURFER_LICENSE` environment variable.

## Citing

> [!TIP]
> If you use this App in your work, please cite the App, the software it builds on and brainlife.io (below). GitHub's **Cite this repository** button gives the App citation in APA and BibTeX.

- Iglesias JE, Billot B, Balbastre Y, Tabari A, Conklin J, González RG, Alexander DC, Golland P, Edlow BL, Fischl B. Joint super-resolution and synthesis of 1 mm isotropic MP-RAGE volumes from clinical MRI exams with scans of different orientation, resolution and contrast. *NeuroImage* 237:118206 (2021). [doi:10.1016/j.neuroimage.2021.118206](https://doi.org/10.1016/j.neuroimage.2021.118206)
- Generate synthetic MP-RAGE T1 image from clinical FLAIR data. brainlife.io App. [doi:10.25663/brainlife.app.694](https://doi.org/10.25663/brainlife.app.694)
- Generate synthetic MP-RAGE T1 image from T2w data. brainlife.io App. [doi:10.25663/brainlife.app.693](https://doi.org/10.25663/brainlife.app.693)
- Generate synthetic MP-RAGE T1 image from T1w data. brainlife.io App. [doi:10.25663/brainlife.app.692](https://doi.org/10.25663/brainlife.app.692)
- Avesani P, McPherson B, Hayashi S, et al. The open diffusion data derivatives, brain data upcycling via integrated publishing of derivatives and reproducible open cloud services. Sci Data 6, 69 (2019). [doi:10.1038/s41597-019-0073-y](https://doi.org/10.1038/s41597-019-0073-y)
- Fischl. FreeSurfer. *NeuroImage* 62:774-781 (2012). [doi:10.1016/j.neuroimage.2012.01.021](https://doi.org/10.1016/j.neuroimage.2012.01.021)
- Hayashi S, Caron BA, Heinsfeld AS, et al. brainlife.io: a decentralized and open-source cloud platform to support neuroscience research. *Nature Methods* 21:809–813 (2024). [doi:10.1038/s41592-024-02237-2](https://doi.org/10.1038/s41592-024-02237-2)

## Authors

- Franco Pestilli (project director)
- Brad Caron

## Funding

[![Wellcome-226486/Z/22/Z](https://img.shields.io/badge/Wellcome-226486%2FZ%2F22%2FZ-purple.svg)](https://wellcome.org/)
[![NIH-NINDS-U24NS140384](https://img.shields.io/badge/NIH_NINDS-U24NS140384-green.svg)](https://reporter.nih.gov/project-details/11261037)
[![NIH-NINDS-UM1NS132207](https://img.shields.io/badge/NIH_NINDS-UM1NS132207-green.svg)](https://reporter.nih.gov/project-details/11411328)
[![NIH-NIBIB-R01EB029272](https://img.shields.io/badge/NIH_NIBIB-R01EB029272-green.svg)](https://reporter.nih.gov/project-details/10262925)
[![NIH-NIBIB-R01EB030896](https://img.shields.io/badge/NIH_NIBIB-R01EB030896-green.svg)](https://reporter.nih.gov/project-details/10428625)
[![NIH-NIMH-R01MH126699](https://img.shields.io/badge/NIH_NIMH-R01MH126699-green.svg)](https://reporter.nih.gov/project-details/10460628)
[![NIH-NIDCD-R01DC020088](https://img.shields.io/badge/NIH_NIDCD-R01DC020088-green.svg)](https://reporter.nih.gov/project-details/11140284)
[![NSF-BCS-1734853](https://img.shields.io/badge/NSF_BCS-1734853-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1734853)
[![NSF-BCS-2203524](https://img.shields.io/badge/NSF_BCS-2203524-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2203524)
[![NSF-IIS-1636893](https://img.shields.io/badge/NSF_IIS-1636893-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1636893)
[![NSF-OAC-2148729](https://img.shields.io/badge/NSF_OAC-2148729-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2148729)
[![NSF-IIS-1912270](https://img.shields.io/badge/NSF_IIS-1912270-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1912270)
[![NSF-IIS-2148700](https://img.shields.io/badge/NSF_IIS-2148700-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2148700)
[![NSF-OAC-1916518](https://img.shields.io/badge/NSF_OAC-1916518-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1916518)

<sub>brainlife.io is publicly funded, and acknowledging that support helps keep it running. This App was developed with support from Wellcome, the U.S. National Institutes of Health (including the BRAIN Initiative BRAIN CONNECTS program: The Axonal Projectome EXchange, U24NS140384, and the Center for Mesoscale Connectomics, UM1NS132207) and the U.S. National Science Foundation.</sub>

## License

This repository does not include a license file. FreeSurfer and SynthSR are distributed under the FreeSurfer [license](https://surfer.nmr.mgh.harvard.edu/fswiki/FreeSurferSoftwareLicense).
