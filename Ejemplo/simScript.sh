#!/bin/bash 
# 
# Script para aprender a enviar un job.
# Probar la utilizacion de R en paralelo
#
# Opciones SGE 
#
#$ -N simBifactorial 
#$ -pe impi 8
#$ -cwd 
#$ -l h_rt=00:10:00 
# MPIR_HOME, importo variables de entorno del SGE
#$ -V

module load gcc-6.3.0
/share/apps/R-3.4.1/bin/Rscript correrSimulaciones.R 3 1.5 1 0 lognormal "~/Ejemplo/" 1 4 50
