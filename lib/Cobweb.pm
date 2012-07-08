package Cobweb;

use 5.10.0;
use strict;
use warnings;

=head1 NAME

Cobweb - A complex network-based distributed job system.

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.02';


=head1 SYNOPSIS

This project will aim to be a distributed system for job farming using a different architecture than the 
usual server - worker. My objective is to create a self-maintained system that will manage the job list by itself.
Once a job list is submitted to the network, it will 'live' in the network until the jobs are finished.
The system is being develop in Linux and Windows support will be implemented as well.
Please note that the project is under initial development.

=head1 AUTHOR

Felipe Leprevost, C<< <leprevost at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-cobweb at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Cobweb>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.


=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Cobweb


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Cobweb>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Cobweb>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Cobweb>

=item * Search CPAN

L<http://search.cpan.org/dist/Cobweb/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2012 Felipe Leprevost.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.


=cut

1; # End of Cobweb
