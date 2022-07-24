rule all:
    input:
        "/output/ls.txt"

rule get_ls_manual:
    input:
        "/output/first_line.txt",
    output:
        "/output/ls.txt"
    shell:
        "cat {input} <(man ls) >> {output}"

rule create_file:
    output:
        "/output/first_line.txt",
    shell:
        #the three " indicate a multiline script!
        "echo 'This is the man page for ls:' > {output}"
