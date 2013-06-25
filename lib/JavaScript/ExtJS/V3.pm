package JavaScript::ExtJS::V3;

# ABSTRACT: Perl distribution for ExtJS 3.x sources
our $VERSION = '3.4.1';

use File::ShareDir qw(dist_dir);
use Path::Class;

sub dir {
  my $dist = shift || __PACKAGE__;
  $dist =~ s/\:\:/\-/g;
  return Path::Class::dir(dist_dir($dist),'ext-3.4.1');
}

1;