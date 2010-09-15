#!perl -T

use Test::More tests => 2;

BEGIN {
  use_ok('Digest::PasswordComposer', qw(pwdcomposer))
}


is(Digest::PasswordComposer::pwdcomposer('perl.org','password'), 'b1d63a25');

