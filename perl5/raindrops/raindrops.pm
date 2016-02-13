use 5.18.2;
use strict;
use warnings;

package Raindrops;

our $VERSION = '1.000';

use Exporter 5.57 qw(import);

our @EXPORT_OK = qw(convert);

sub convert {
    my $input = shift(@_);
    my $drops = '';

    if ($input % 3 == 0) {
        $drops = $drops . "Pling";
    }
    if ($input % 5 == 0) {
        $drops = $drops . "Plang";
    }
    if ($input % 7 == 0) {
        $drops = $drops . "Plong";
    }
    if (length($drops) == 0) {
        $drops = "$input";
    }

    return $drops;
}
