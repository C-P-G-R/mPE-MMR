# mPE-MMR
The mPE-MMR method is an integrated approach that combines three previously reported methods of treating MS/MS data for precursor mass refinement. It increases sensitivity in peptide identification and provides increased accuracy.

mPE-MMR can be used to create a MGF file with refined parent ion masses and charges, which can lead to more accurate search results from MS/MS spectra. mPE-MMR (Multiplexed Post-Experiment Monoisotopic Mass Refinement) supports multiplexed MS/MS spectra, and consists of the following:

 - Multiplexing of precursor masses to assign multiple monoisotopic masses of cofragmented peptides to the corresponding multiplexed MS/MS spectra
 - Multiplexing of charge states to assign correct charges to the precursor ions of MS/MS spectra with no charge information
 - Mass correction for inaccurate monoisotopic peak picking.

mPEMMR uses two external programs: RAPID and msconvert

RAPID can be downloaded here, (https://github.com/HanyangBISLab/RAPID)

msconvert can be installed from ProteoWizard (https://proteowizard.sourceforge.io/download.html).

After that 

1) Modify the paths of RAPID and MSCONVERT in the mPEMMR_param.txt file.
2) Modify PEMMR_HOME to the appropriate path in mPEMMR_2.0.cmd file and execute the command below.

and execute the command below

mPEMMR_2.2.cmd D:\mPEMMR_param.txt D:\Sample\Sample.raw
