# modificado de https://datacarpentry.org/wrangling-genomics/files/run_variant_calling.sh
csv_file="/home/javelar/archivos/dc_workshop_YEAST/SampleSheet_dcYEAST2"
fastq_directory="/mnt/Timina/lmorales/Public/ymez/data/fastq/raw"
output_directory="/mnt/Timina/lmorales/Public/ymez/tmp/06_genotyping/trees/dc_WorkshopYeast"

while IFS=, read -r prefix _; do
echo $prefix
    gunzip -c "${fastq_directory}/${prefix}_R1.fastq.gz" | head -n 400000 > "${output_directory}/${prefix}_R1.fastq"
    gzip "${output_directory}/${prefix}_R1.fastq"

    gunzip -c "${fastq_directory}/${prefix}_R2.fastq.gz" | head -n 400000 > "${output_directory}/${prefix}_R2.fastq"
    gzip "${output_directory}/${prefix}_R2.fastq"
done < "${csv_file}"
/home/javelar/archivos/dc_workshop_YEAST/GetSamples.sh (END)
