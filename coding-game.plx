#!/usr/bin/perl

#episode 2
#title: the coding game

use warnings;
use strict;
use autodie;
binmode STDOUT, ":encoding(UTF-8)";

my $objective = 750000; #target total
my $init_depo = 10000;  #starting amount
my $year_depo = 15000;  #yearly deposit target
my $years = 0;          #So it begins... 
my $succeeded  = v9786; #yess!
my $diedTrying = v9760; #ohno!
my $years_left = int(rand(81)); # How many years until death? No one knows!

print $years_left, "\n";

sub getRich {
        while ($years < $years_left) {
                my $annualRate = rand(5); #every year, we just don't know!
                $years++;
                my $interest = int (($annualRate / 100) * $init_depo * 100) / 100;
                $init_depo += $interest;
                $init_depo += $year_depo;

                if ($init_depo >= $objective) {
                        last;
                } else {
                        printf ("$years\t%.4f\t $init_depo \n ", $annualRate);
        	}

        }
   return $init_depo;
   print $init_depo, "\n\n";
}

if (getRich() >= $objective){
        print "\n\nTotal:\t", getRich(), "\n";
        print $succeeded, "\n";
    } else {
        print "\n\nTotal:\t", getRich(), "\n";
        print $diedTrying, "\n";
    }

#getRich or die trying

