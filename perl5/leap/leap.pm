use 5.18.2;
use strict;
use warnings;

package Leap;

our $VERSION = '1.000';

use Exporter 5.57 qw(import);

our @EXPORT_OK = qw(is_leap);

sub is_leap {
    my $year = shift(@_);

    if ($year % 400 == 0) {
        return 1;
    } elsif (($year % 4 == 0) && ($year % 100 != 0)) {
        return 1;
    } else {
        return 0;
    }
}

1;
