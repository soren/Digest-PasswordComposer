use strict;
use warnings;
package Digest::PasswordComposer;
# ABSTRACT: Generate unique passwords for web sites.

=head1 SYNOPSIS

This module can generate unique passwords for web sites, using the same algorithm as the Password Composer Greasemonky script for Firefox.

=cut

sub pwdcomposer {
    my ($domain, $pwd) = shift;
    return "$domain:$pwd";
}

=head1 SEE ALSO

L<http://www.xs4all.nl/~jlpoutre/BoT/Javascript/PasswordComposer>

1;
