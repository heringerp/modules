#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { SAMTOOLS_CALMD } from '../../../../../modules/nf-core/samtools/calmd/main.nf'

workflow test_samtools_calmd {
    
    input1 = [
        [ id:'test', single_end:false ], // meta map
        file("https://github.com/nf-core/test-datasets/raw/modules/data/genomics/homo_sapiens/illumina/bam/test.paired_end.sorted.bam", checkIfExists: true)
    ]

    input2 = file("https://github.com/nf-core/test-datasets/raw/modules/data/genomics/homo_sapiens/genome/genome.fasta", checkIfExists: true)
    SAMTOOLS_CALMD ( input1, input2 )
}
