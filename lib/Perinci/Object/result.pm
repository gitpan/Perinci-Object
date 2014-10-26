package Perinci::Object::result;

use 5.010;
use strict;
use warnings;

our $VERSION = '0.12'; # VERSION

use parent qw(Perinci::Object::Metadata);

sub type { "result" }

1;
# ABSTRACT: Represent function/method result metadata

__END__

=pod

=encoding UTF-8

=head1 NAME

Perinci::Object::result - Represent function/method result metadata

=head1 VERSION

version 0.12

=head1 DESCRIPTION

=head1 FUNCTIONS


None are exported by default, but they are exportable.

=head1 HOMEPAGE

Please visit the project's homepage at L<https://metacpan.org/release/Perinci-Object>.

=head1 SOURCE

Source repository is at L<https://github.com/sharyanto/perl-Perinci-Object>.

=head1 BUGS

Please report any bugs or feature requests on the bugtracker website L<https://rt.cpan.org/Public/Dist/Display.html?Name=Perinci-Object>

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
