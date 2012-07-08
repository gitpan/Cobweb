use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Cobweb',
    AUTHOR              => q{Felipe Leprevost <leprevost@cpan.org>},
    VERSION_FROM        => 'lib/Cobweb.pm',
    ABSTRACT_FROM       => 'lib/Cobweb.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More'				=> 0.98,
		'Moose'						=> 2.06,
		'Try::Tiny'					=> 0.11,
		'File::HomeDir'				=> 0.99,
		'Proc::Daemon'				=> 0.14, 
		'IO::Socket::Multicast'		=> 1.12,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Cobweb-*' },
);
