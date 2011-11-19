#! /usr/bin/env racket
#lang racket

(define hackers
  '(adamclaassen
    area53liz
    blakstar000
    bsnsj425
    Chetlanl
    erhs-53
    LinuxArchitect
    Mariana
    MichaelStevens
    minnie1266
    noobguy
    nyaculak
    ozzloy
    ShoutenM
    YuRArea53
    Vozw
    wertmensah11))

(define (random-hacker)
  (list-ref hackers (random (length hackers))))
