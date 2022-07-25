# Initial pseudorule
rule all:
    input:

rule select_rsid:
    input:
        '/sumstats/{trait}.tsv'
    output:
        '/output/{trait}_rsid.txt'
    shell:
        "gawk 'NR>1{print $1}' {input} > output"

rule grep_snps:
    input:
        '/output/{trait}_rsid.txt'
    output:
        '/output/full_list_rsid.txt'
    shell:
        "comm {input} > output"
