# Project Description

This project was started in the Winter 2017 period in collaboration with A/Prof D. Park, Dr B. Pope and Dr K. Mahmood.

# Dependencies

The following command line utilities are required for this project:

- **liftOver** and **liftOverMerge**, available from http://hgdownload.soe.ucsc.edu/admin/exe/, required for analysis of data matched against different genome assemblies.
- **fetchChromSizes**, available from http://hgdownload.cse.ucsc.edu/admin/exe/linux.x86_64/, required for calculating genome coverage.
- **bigWigtoWig**, available from http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/, required for analysis of bigWig files by converting to wig (and then to bed). 
- **BEDOPS**, available from http://bedops.readthedocs.io/en/latest/index.html, required for conversion of wig to bed for analysis. 
- **BEDTools**, see http://bedtools.readthedocs.io/en/latest/content/installation.html, required for main analysis.

# "Makefile"

All code is stored in the `src` directory. The file `makefile.org` (not really a makefile, but named as such for convenience) is an org file containing all the code in the src directory with relevant comments as needed - code changes should be made here and tangled to their separate files. 
