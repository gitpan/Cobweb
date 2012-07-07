#
#===============================================================================
#
#         FILE: 01-beacon.t
#
#  DESCRIPTION: sigalLine test file.
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Felipe da Veiga Leprevost (Leprevost, F.V.), leprevost@cpan.org
# ORGANIZATION: Fiocruz
#      VERSION: 1.0
#      CREATED: 07/07/2012 12:59:01 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;

use Test::More tests => 3;                      # last test to print

diag( "Beggining Cobweb::SignalLine tests in $^O with Perl $], $^X" );

use_ok( 'Cobweb::SignalLine', "Bail out!" );

can_ok( 'Cobweb::SignalLine', 'new' );
can_ok( 'Cobweb::SignalLine', 'start' );
