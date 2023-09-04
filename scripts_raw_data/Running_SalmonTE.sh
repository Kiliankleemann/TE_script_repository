#Running SalmonTE

'Usage:
    SalmonTE.py index [--ref_name=ref_name] (--input_fasta=fa_file) [--te_only]
    SalmonTE.py quant [--reference=genome] [--outpath=outpath] [--num_threads=numthreads] [--exprtype=exprtype] 
    SalmonTE.py test [--inpath=inpath] [--outpath=outpath] [--tabletype=tabletype] [--figtype=figtype] [--analysis_type=analysis_type] [--conditions=conditions]
    SalmonTE.py (-h | --help)
    SalmonTE.py --version

Options:
    -h --help     Show this screen.
    --version     Show version.'

export PATH=$PATH:/Users/kiliankleemann/SalmonTE

export PATH=$PATH:/Library/Frameworks/R.framework/Versions/4.2/Resources/library/RcppParallel/lib/

SalmonTE.py index --ref_name=mm10_TE_only --input_fasta= --te_only


mkdir transcrip_quant_salmonTE
cat sample_list.txt | while read sample; do
    SalmonTE.py quant fastq_files/${sample}.fq.gz \
    --reference=mm \
    --outpath=transcrip_quant_salmonTE/ \
    --num_threads=4 \
    --exprtype="count"
done

SalmonTE.py quant --reference=hs example

SalmonTE.py quant /Volumes/OhneTitel/Anne_BMDM_try_August_2023/fastq_files/DE12NGSUKBR137309_1.fq.gz \
    --reference=mm 



    \
    --outpath=transcrip_quant_salmonTE/ \
    --num_threads=4 \
    --exprtype="count"