package Finnigan::SampleInfo;

use strict;
use warnings;

use Finnigan;
use base 'Finnigan::Decoder';


sub decode {
  my ($class, $stream) = @_;

  my $fields = [
		"unknown_long[1]"    => ['V',      'UInt32'],
		"unknown_long[2]"    => ['V',      'UInt32'],
		"first scan number"  => ['V',      'UInt32'],
		"last scan number"   => ['V',      'UInt32'],
		"inst log length"    => ['V',      'UInt32'],
		"unknown_long[3]"    => ['V',      'UInt32'],
		"unknown_long[4]"    => ['V',      'UInt32'],
		"scan index addr"    => ['V',      'UInt32'],
		"data addr"          => ['V',      'UInt32'],
		"inst log addr"      => ['V',      'UInt32'],
		"error log addr"     => ['V',      'UInt32'],
		"unknown_long[5]"    => ['V',      'UInt32'],
		"ion current"        => ['d',      'Float64'],
		"low mz"             => ['d',      'Float64'],
		"high mz"            => ['d',      'Float64'],
		"scan start time"    => ['d',      'Float64'],
		"scan end time"      => ['d',      'Float64'],
		"unknown area"       => ['C56',    'RawBytes'],
		"tag[1]"             => ['U0C88',  'UTF16LE'],
		"tag[2]"             => ['U0C40',  'UTF16LE'],
		"tag[3]"             => ['U0C320', 'UTF16LE'],
	       ];

  my $self = Finnigan::Decoder->read($stream, $fields);

  return bless $self, $class;
}

sub first_scan {
  shift->{data}->{"first scan"}->{value};
}

sub last_scan {
  shift->{data}->{"first scan"}->{value};
}

1;
__END__

=head1 NAME

Finnigan::SampleInfo -- decoder for SampleInfo, the primary file index structure

=head1 SYNOPSIS

  use Finnigan;
  my $file_info = Finnigan::SampleInfo->decode(\*INPUT);
  say $file_info->first_scan;
  say $file_info->last_scan;
  $file_info->dump;

=head1 DESCRIPTION

SampleInfo is a static (fixed-size) binary preamble to RunHeader
containing data stream lengths and addresses, as well as some
unidentified data. Every data stream in the file, except for the list
of ScanHeader records, has its address stored in SampleInfo.

The address of the ScanHeader stream is stored in the parent
structure, RunHeader.

=head2 EXPORT

None

=head1 SEE ALSO

Finnigan::RunHeader

=head1 AUTHOR

Gene Selkov, E<lt>selkovjr@gmail.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2010 by Gene Selkov

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.


=cut
