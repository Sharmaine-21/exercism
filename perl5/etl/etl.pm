use 5.18.2;
use strict;
use warnings;


package ETL;

our $VERSION = '1.000';

use Exporter 5.57 qw(import);

our @EXPORT_OK = qw(compute);

sub transform {
    my $data = shift;

    my %xform;

    foreach my $i (keys %$data) {
       map { $xform{lc $_} = $i} @{$data->{$i}};
    }
    return \%xform;

}

1;
