use 5.18.2;
use strict;
use warnings;

package Grains;

our $VERSION = '1.000';

use Exporter 5.57 qw(import);

our @EXPORT_OK = qw(square total);

sub square {
    my $n = shift(@_);

    return (2 ** ($n - 1));
}

sub total {
    use bigint;
    my $total = 0;

    for (my $i = 1; $i <= 64; $i++) {
        $total += square($i);
    }
    return $total;
}

1;
