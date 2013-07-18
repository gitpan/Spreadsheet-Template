package Spreadsheet::Template::Processor::Identity;
BEGIN {
  $Spreadsheet::Template::Processor::Identity::AUTHORITY = 'cpan:DOY';
}
{
  $Spreadsheet::Template::Processor::Identity::VERSION = '0.01';
}
use Moose;
# ABSTRACT: render a template file with no processing at all

with 'Spreadsheet::Template::Processor';


sub process {
    my $self = shift;
    my ($contents, $vars) = @_;
    return $contents;
}

__PACKAGE__->meta->make_immutable;
no Moose;


1;

__END__

=pod

=head1 NAME

Spreadsheet::Template::Processor::Identity - render a template file with no processing at all

=head1 VERSION

version 0.01

=head1 SYNOPSIS

  my $template = Spreadsheet::Template->new(
      processor_class => 'Spreadsheet::Template::Processor::Identity',
  );

=head1 DESCRIPTION

This class implements L<Spreadsheet::Template::Processor>, and just passes
through the JSON data without modification.

=for Pod::Coverage   process

=head1 AUTHOR

Jesse Luehrs <doy@tozt.net>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2013 by Jesse Luehrs.

This is free software, licensed under:

  The MIT (X11) License

=cut
