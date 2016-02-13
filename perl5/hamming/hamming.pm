use 5.18.2;
use strict;
use warnings;


package Hamming;

our $VERSION = '1.000';

use Exporter 5.57 qw(import);

our @EXPORT_OK = qw(compute);

sub compute {
    my ($dna1, $dna2) = @_;

    my @s1 = split(//, $dna1);
    my @s2 = split(//, $dna2);

    my $dist = 0;

    my $cmp = @s1 < @s2 ? scalar(@s1) : scalar(@s2);

    for(my $i=0; $i < scalar($cmp); $i++) {
        unless ($s1[$i] eq $s2[$i]) {
            $dist++;
        }
    }
    return $dist;
}
