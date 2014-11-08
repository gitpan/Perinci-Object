package Perinci::Object::ResMeta;

our $DATE = '2014-10-29'; # DATE
our $VERSION = '0.17'; # VERSION

use 5.010;
use strict;
use warnings;

use parent qw(Perinci::Object::Metadata);

sub type { "resmeta" }

1;
# ABSTRACT: Represent function/method result metadata

__END__

=pod

=encoding UTF-8

=head1 NAME

Perinci::Object::ResMeta - Represent function/method result metadata

=head1 VERSION

This document describes version 0.17 of Perinci::Object::ResMeta (from Perl distribution Perinci-Object), released on 2014-10-29.

=head1 METHODS

=head2 $riresmeta->type => str

Will return C<resmeta>.

=head1 HOMEPAGE

Please visit the project's homepage at L<https://metacpan.org/release/Perinci-Object>.

=head1 SOURCE

Source repository is at L<https://github.com/perlancar/perl-Perinci-Object>.

=head1 BUGS

Please report any bugs or feature requests on the bugtracker website L<https://rt.cpan.org/Public/Dist/Display.html?Name=Perinci-Object>

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

=head1 AUTHOR

perlancar <perlancar@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by perlancar@cpan.org.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
