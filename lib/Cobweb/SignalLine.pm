#
#===============================================================================
#
#         FILE: SignalLine.pm
#
#  DESCRIPTION: Register the available nodes.
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Felipe da Veiga Leprevost (Leprevost, F.V.), leprevost@cpan.org
# ORGANIZATION: 
#      CREATED: 07/07/2012 11:59:39 AM
#     REVISION: ---
#===============================================================================
package Cobweb::SignalLine;
use 5.10.0;
use strict;
use warnings;
use autodie;
use Moose;
use File::HomeDir;
use File::Path qw(make_path);
use IO::Socket::Multicast;

=head1 NAME

Cobweb::SignalLine - class for detection of nodes in the network.

=head1 DESCRIPTION

CobWeb::SignalLine is the class responsible for detecting all the ode ins the networ thru
a multicast channel. All responsive nodes will be memorized in a text file located at
HOME/.cobweb directory.

=head1 ATTRIBUTES

=head2 group

is rw
isa Str
default set to 230.1.2.3

=head2 port

is rw
isa Int
default set to 6001

=head2 interface

is rw
isa Str
default set to 'eth0'

=head2 lookup

is rw
isa Str

=head1 METHODS AND MODIFIERS

=head2 start

This methos instantiate the multicast function. The responsive nodes will have their IP
stored in the nodes.cw file under the HOME/.cobweb directory.

=head2 before start modifier

This modifier is responsible for the set up of the .cobweb directory. The modifier will look
for a directory with this name, if doesnt find one, it creates a new one.

=cut

has 'group' => (
	is		=>	'rw',
	isa		=>	'Str',
	default	=>	'230.1.2.3',
);

has 'port'	=> (
	is		=>	'rw',
	isa		=>	'Int',
	default	=>	'6001',
);

has 'interface' => (
	is		=>	'rw',
	isa		=>	'Str',
	default	=>	'eth0',
);

has 'lookup' => (
	is		=>	'rw',
	isa		=>	'Str',
);


before 'start' => sub {
	my $self = shift;
	
	$self->lookup(File::HomeDir->my_home);
	unless (-e $self->lookup.'/.cobweb') {
		make_path($self->lookup.'/.cobweb');
	}
};

sub start {
	my $self = shift;
	my $beacon = IO::Socket::Multicast->new(LocalPort => $self->port);
	$beacon->mcast_add($self->group,$self->interface);
	my %cache;
	my $data;
	while(1) {
	    $beacon->recv($data,1024);
		$cache{$data} = 1 if !exists $cache{$data};
		open (my $fh2, '>', $self->lookup.'/.cobweb/nodes.cw');
		for my $k (keys %cache) {
			say $k;
			print $fh2 $k if defined $k;
		}	   
	}
}

no Moose;
1;
