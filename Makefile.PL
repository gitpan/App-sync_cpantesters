
use strict;
use warnings;

 BEGIN { require 5.006; } 

use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'App::sync_cpantesters',
                       'DISTNAME' => 'App-sync_cpantesters',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'Marcel Gruenauer <marcel@cpan.org>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'Sync CPAN testers failure reports to local directories',
                       'EXE_FILES' => [
                                        'bin/sync_cpantesters'
                                      ],
                       'VERSION' => '1.100710',
                       'PREREQ_PM' => {
                                        'Scalar::Util' => '0',
                                        'English' => '0',
                                        'Pod::Usage' => '0',
                                        'File::Spec' => '0',
                                        'HTML::TreeBuilder' => '0',
                                        'HTML::FormatText' => '0',
                                        'Carp' => '0',
                                        'Test::More' => '0',
                                        'File::Find' => '0',
                                        'LWP::UserAgent::ProgressBar' => '0',
                                        'Web::Scraper' => '0',
                                        'File::Temp' => '0',
                                        'File::Path' => '0',
                                        'Getopt::Attribute' => '0',
                                        'Cwd' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



