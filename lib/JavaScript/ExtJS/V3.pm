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

=pod

=head1 NAME

JavaScript::ExtJS::V3 - Perl distribution for ExtJS 3.x sources

=head1 VERSION

ExtJS v3.4.1 (GPL)

=head1 SYNOPSIS

  use JavaScript::ExtJS::V3 '3.4.1';
  
  my $dir = JavaScript::ExtJS::V3->dir;
  print "ExtJS sources are installed in: $dir\n";

=head1 DESCRIPTION

This module contains ExtJS 3.x sources packaged for distribution on CPAN. Upon installation,
the source directory is installed into the system share dir (see L<File::ShareDir>) and made 
available via class method C<dir>. This is useful for web apps that depend on ExtJS.

=head1 METHODS

=head2 dir

Returns the ExtJS source directory as a L<Path::Class::Dir> object.

=head1 SEE ALSO

=over 4

=item * www.sencha.com

=back

=cut

