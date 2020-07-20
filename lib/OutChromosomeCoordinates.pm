#!/usr/local/bin/perl
use strict;
use warnings;

package OutChromosomeCoordinates;

# inherits from ChromosomeCoordinates
our @ISA = qw(ChromosomeCoordinates);

# constructor
sub new{
  my $class = shift;
  my $self = bless {}, $class;
  $self->initialize(@_);
  return $self;
}

# initializer
sub initialize {
    my $self = shift;
    $self->SUPER::initialize(shift, shift, shift);
    $self->{strand} = shift;
    $self->{coord_system} = shift;
    $self->{assembly} = shift;
}

1;
