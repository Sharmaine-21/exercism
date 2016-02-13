#
# This is a SKELETON file and has been provided to enable you to get working on the
# first exercise more quickly.
#

use 5.006;
use strict;
use warnings;

package Bob;

our $VERSION = '1.000';

use Exporter 5.57 qw(import);

our @EXPORT_OK = qw(hey);

sub hey {
    my $sentence = shift(@_);


    if (($sentence =~ /[A-Z]+/) && ($sentence eq uc($sentence))) {
        return 'Whoa, chill out!';
    } elsif ($sentence =~ /.+\?$/amsxi) {
        return 'Sure.';
    } elsif ($sentence !~ /\S+/) {
        return 'Fine. Be that way!';
    } else {
        return 'Whatever.';
    }
}

1;
