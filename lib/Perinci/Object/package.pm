package Perinci::Object::package;

use 5.010;
use strict;
use warnings;

our $VERSION = '0.08'; # VERSION

use parent qw(Perinci::Object::Metadata);

sub type { "package" }

1;
# ABSTRACT: Represent package metadata

__END__
=pod

=head1 NAME

Perinci::Object::package - Represent package metadata

=head1 VERSION

version 0.08

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

