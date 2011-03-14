
use strict;
use warnings;

BEGIN { require 5.006; }

use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'Sync CPAN testers failure reports to local directories',
  'AUTHOR' => 'Marcel Gruenauer <marcel@cpan.org>',
  'BUILD_REQUIRES' => {
    'Carp' => '0',
    'English' => '0',
    'File::Temp' => '0',
    'Scalar::Util' => '0',
    'Test::More' => '0.94'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'App-sync_cpantesters',
  'EXE_FILES' => [
    'bin/sync_cpantesters'
  ],
  'LICENSE' => 'perl',
  'NAME' => 'App::sync_cpantesters',
  'PREREQ_PM' => {
    'Cwd' => '0',
    'File::Find' => '0',
    'File::Path' => '0',
    'File::Spec' => '0',
    'Getopt::Attribute' => '0',
    'HTML::FormatText' => '0',
    'HTML::TreeBuilder' => '0',
    'LWP::UserAgent::ProgressBar' => '0',
    'Pod::Usage' => '0',
    'Web::Scraper' => '0',
    'open' => '0'
  },
  'VERSION' => '1.110730',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



