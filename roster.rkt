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

(define (random-hacker)
  (list-ref hackers (random (length hackers))))

(define (random-hackers count)
  (take (shuffle hackers) count))

; i would call this "list-random-hackers" but it doesn't return a list
;  it prints out the contents of a randomized list of hackers with newlines 
(define (show-random-hackers count)
  (printf (apply string-append
                 (map (curryr string-append "\n") (random-hackers count)))))
