package Perinci::Object::variable;

use 5.010;
use strict;
use warnings;

our $VERSION = '0.09'; # VERSION

use parent qw(Perinci::Object::Metadata);

sub type { "variable" }

1;
# ABSTRACT: Represent variable metadata

__END__
=pod

=head1 NAME

Perinci::Object::variable - Represent variable metadata

=head1 VERSION

version 0.09

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

