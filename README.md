# assembly-converter
A utility to convert chromosome coordinates from one assembly to another.

# Usage
    perl ./assembly-converter [OPTIONS] CHROM CHROM_START CHROM_END
    perl ./assembly-converter [OPTIONS] -i INFILE
Convert coordinates on chromosome CHROM from CHROM_START to CHROM_END from one assembly to same region in another.
Or batch convert all chromosome coordinates specified in INFILE in BED format.

  -s,  --source         the source assembly. Default='GRCh37'
  -t,  --target         the target assembly. Default='GRCh38'
  -i,  --infile         the input file in BED format
  -o,  --outfile        the output file path. If not given, output is printed to console
  -f,  --outformat      format of the output. Accepted values: BED and JSON. Default: JSON
  -q,  --quite          set log level to ERROR
  -v,  --verbose        set log level to INFO
  -vv, --debug          set log level to DEBUG
  -h,  --help           display this help and exit
  
# Examples
perl ./assembly-converter -s GRCh38 -t GRCh37 10 3770000 3790000
  converts chromosome 10 from 3770000 to 3790000 from GRCh38 format to GRCh37

perl ./assembly-converter 10 25000 30000
  converts chromosome 10 from 25000 to 30000 from GRCh37 format to GRCh38

perl ./assembly-converter -f JSON -i test.bed
  converts coordinates given in input BED file "test.bed" and writes output to console in JSON
