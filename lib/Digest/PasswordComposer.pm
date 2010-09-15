package Digest::PasswordComposer;
# ABSTRACT: Generate unique passwords for web sites.

use strict;
use warnings;

use Exporter;
our (@ISA, @EXPORT_OK);
@ISA = qw(Exporter);
@EXPORT_OK = qw(pwdcomposer);

use Digest::MD5 qw(md5_hex);


=head1 SYNOPSIS

This module can generate unique passwords for web sites, using the same algorithm as the Password Composer Greasemonky script for Firefox.

=cut

=method pwdcomposer

=cut 

sub pwdcomposer {
  my ($domain, $pwd) = @_;
  return substr(md5_hex("$pwd:$domain"),0,8);
}

=method new

=cut

sub new {
  my ($class) = @_;

  bless { domain => '' }, $class;
}

=method domain

=cut

sub domain {
  my $self = shift;
  if (@_) { $self->{domain} = shift }
  return $self->{domain};
}

=method password

=cut

sub password {
  my $self = shift;
  return pwdcomposer($self->{domain},shift);
}

=head1 SEE ALSO

L<http://www.xs4all.nl/~jlpoutre/BoT/Javascript/PasswordComposer>

=cut

1;

