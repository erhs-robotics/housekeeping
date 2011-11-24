#! /usr/bin/env racket
#lang racket

(define hackers
  '("adamclaassen"
    "blakstar000"
    "bsnsj425"
    "Chetlanl"
    "Mariana"
    "MichaelStevens"
    "minnie1266"
    "noobguy"
    "nyaculak"
    "ozzloy"
    "ShoutenM"
    "YuRArea53"
    "Vozw"
    "wertmensah11"))
(define last "blah")
(define hacker "blah")
(define (random-hacker)
  (set! hacker (list-ref hackers (random (length hackers))))
  (if (equal? last hacker)
      (random-hacker)
      (printf hacker))
  (set! last hacker))
(define (list-random-hacker num)
    (for ([i num]) (random-hacker) (printf "\n"))
    )
  
