package Perinci::Object::EnvResult;

use 5.010;
use strict;
use warnings;

our $VERSION = '0.09'; # VERSION

sub new {
    my ($class, $res) = @_;
    $res //= [0, "", undef];
    my $obj = \$res;
    bless $obj, $class;
}

sub new_ok {
    my $class = shift;
    my $res = [200, "OK"];
    if (@_) {
        push @$res, $_[0];
    }
    $class->new($res);
}

sub status {
    my ($self, $new) = @_;
    if (defined $new) {
        die "Status must be an integer between 100 and 555" unless
            int($new) eq $new && $new >= 100 && $new <= 555;
        my $old = ${$self}->[0];
        ${$self}->[0] = $new;
        return $old;
    }
    ${$self}->[0];
}

sub message {
    my ($self, $new) = @_;
    if (defined $new) {
        die "Extra must be a string" if ref($new);
        my $old = ${$self}->[1];
        ${$self}->[1] = $new;
        return $old;
    }
    ${$self}->[1];
}

# avoid 'result' as this is ambiguous (the enveloped one? the naked one?). even
# avoid 'enveloped' (the payload being enveloped? the enveloped result
# (envelope+result inside)?)

sub payload {
    my ($self, $new) = @_;
    if (defined $new) {
        my $old = ${$self}->[2];
        ${$self}->[2] = $new;
        return $old;
    }
    ${$self}->[2];
}

sub meta {
    my ($self, $new) = @_;
    if (defined $new) {
        die "Extra must be a hashref" unless ref($new) eq 'HASH';
        my $old = ${$self}->[3];
        ${$self}->[3] = $new;
        return $old;
    }
    ${$self}->[3];
}

sub is_success {
    my ($self) = @_;
    my $status = ${$self}->[0];
    $status >= 200 && $status <= 299;
}

sub as_struct {
    my ($self) = @_;
    ${$self};
}

1;
# ABSTRACT: Represent enveloped result


__END__
=pod

=head1 NAME

Perinci::Object::EnvResult - Represent enveloped result

=head1 VERSION

version 0.09

=head1 SYNOPSIS

 use Perinci::Object::Result;
 use Data::Dump; # for dd()

 my $rires = Perinci::Object::Result->new([200, "OK", [1, 2, 3]]);
 dd $rires->is_success, # 1
    $rires->status,     # 200
    $rires->message,    # "OK"
    $rires->payload,    # [1, 2, 3]
    $rires->meta,       # undef
    $rires->as_struct;  # [200, "OK", [1, 2, 3]]

 # setting status, message, result, extra
 $rires->status(404);
 $rires->message('Not found');
 $rires->payload(undef);
 $rires->meta({errno=>-100});

 # shortcut: create a new OK result ([200, "OK"] or [200, "OK", $payload])
 $rires = Perinci::Object::Result->new_ok();
 $rires = Perinci::Object::Result->new_ok(42);

=head1 DESCRIPTION

This class provides an object-oriented interface for enveloped result (see
L<Rinci::function> for more details).

=head1 METHODS

=head2 new($res) => OBJECT

Create a new object from $res enveloped result array.

=head2 $ssres->status

Get or set status (the 1st element).

=head2 $ssres->message

Get or set message (the 2nd element).

=head2 $ssres->payload

Get or set the actual payload (the 3rd element).

=head2 $ssres->meta

Get or set result metadata (the 4th element).

=head2 $ssres->as_struct

Return the represented data structure.

=head2 $ssres->is_success

True if status is between 200-299.

=head1 SEE ALSO

L<Perinci::Object>

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
