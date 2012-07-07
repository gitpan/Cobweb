#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'Cobweb' ) || print "Bail out!\n";
}

diag( "Testing Cobweb $Cobweb::VERSION, Perl $], $^X" );
