package Finnigan::ScanEventPreamble;

use strict;
use warnings;

use Finnigan;
use base 'Finnigan::Decoder';


sub decode {
  my ($class, $stream, $version) = @_;

  my @common_fields = (
		       "unknown byte[0]"   => ['C',    'UInt8'],
		       "unknown byte[1]"   => ['C',    'UInt8'],
		       "corona"            => ['C',    'UInt8'],
		       "detector"          => ['C',    'UInt8'],
		       "polarity"          => ['C',    'UInt8'],
		       "scan mode"         => ['C',    'UInt8'],
		       "ms power"          => ['C',    'UInt8'],
		       "scan type"         => ['C',    'UInt8'],
		       "unknown byte[8]"   => ['C',    'UInt8'],
		       "unknown byte[9]"   => ['C',    'UInt8'],
		       "dependent"         => ['C',    'UInt8'],
		       "ionization"        => ['C',    'UInt8'],
		       "unknown byte[12]"  => ['C',    'UInt8'],
		       "unknown byte[13]"  => ['C',    'UInt8'],
		       "unknown byte[14]"  => ['C',    'UInt8'],
		       "unknown byte[15]"  => ['C',    'UInt8'],
		       "unknown byte[16]"  => ['C',    'UInt8'],
		       "unknown byte[17]"  => ['C',    'UInt8'],
		       "unknown byte[18]"  => ['C',    'UInt8'],
		       "unknown byte[19]"  => ['C',    'UInt8'],
		       "unknown byte[20]"  => ['C',    'UInt8'],
		       "unknown byte[21]"  => ['C',    'UInt8'],
		       "unknown byte[22]"  => ['C',    'UInt8'],
		       "unknown byte[23]"  => ['C',    'UInt8'],
		       "unknown byte[24]"  => ['C',    'UInt8'],
		       "unknown byte[25]"  => ['C',    'UInt8'],
		       "unknown byte[26]"  => ['C',    'UInt8'],
		       "unknown byte[27]"  => ['C',    'UInt8'],
		       "unknown byte[28]"  => ['C',    'UInt8'],
		       "unknown byte[29]"  => ['C',    'UInt8'],
		       "unknown byte[30]"  => ['C',    'UInt8'],
		       "unknown byte[31]"  => ['C',    'UInt8'],
		       "wideband"          => ['C',    'UInt8'],
		       "unknown byte[33]"  => ['C',    'UInt8'],
		       "unknown byte[34]"  => ['C',    'UInt8'],
		       "unknown byte[35]"  => ['C',    'UInt8'],
		       "unknown byte[36]"  => ['C',    'UInt8'],
		       "unknown byte[37]"  => ['C',    'UInt8'],
		       "unknown byte[38]"  => ['C',    'UInt8'],
		       "unknown byte[39]"  => ['C',    'UInt8'],
		       "analyzer"          => ['C',    'UInt8'],
		      );

  my %specific_fields;
  $specific_fields{8} = [],
  $specific_fields{57} = [
		       "unknown byte[41]"  => ['C',    'UInt8'],
		       "unknown byte[42]"  => ['C',    'UInt8'],
		       "unknown byte[43]"  => ['C',    'UInt8'],
		       "unknown byte[44]"  => ['C',    'UInt8'],
		       "unknown byte[45]"  => ['C',    'UInt8'],
		       "unknown byte[46]"  => ['C',    'UInt8'],
		       "unknown byte[47]"  => ['C',    'UInt8'],
		       "unknown byte[48]"  => ['C',    'UInt8'],
		       "unknown byte[49]"  => ['C',    'UInt8'],
		       "unknown byte[50]"  => ['C',    'UInt8'],
		       "unknown byte[51]"  => ['C',    'UInt8'],
		       "unknown byte[52]"  => ['C',    'UInt8'],
		       "unknown byte[53]"  => ['C',    'UInt8'],
		       "unknown byte[54]"  => ['C',    'UInt8'],
		       "unknown byte[55]"  => ['C',    'UInt8'],
		       "unknown byte[56]"  => ['C',    'UInt8'],
		       "unknown byte[57]"  => ['C',    'UInt8'],
		       "unknown byte[58]"  => ['C',    'UInt8'],
		       "unknown byte[59]"  => ['C',    'UInt8'],
		       "unknown byte[60]"  => ['C',    'UInt8'],
		       "unknown byte[61]"  => ['C',    'UInt8'],
		       "unknown byte[62]"  => ['C',    'UInt8'],
		       "unknown byte[63]"  => ['C',    'UInt8'],
		       "unknown byte[64]"  => ['C',    'UInt8'],
		       "unknown byte[65]"  => ['C',    'UInt8'],
		       "unknown byte[66]"  => ['C',    'UInt8'],
		       "unknown byte[67]"  => ['C',    'UInt8'],
		       "unknown byte[68]"  => ['C',    'UInt8'],
		       "unknown byte[69]"  => ['C',    'UInt8'],
		       "unknown byte[70]"  => ['C',    'UInt8'],
		       "unknown byte[71]"  => ['C',    'UInt8'],
		       "unknown byte[72]"  => ['C',    'UInt8'],
		       "unknown byte[73]"  => ['C',    'UInt8'],
		       "unknown byte[74]"  => ['C',    'UInt8'],
		       "unknown byte[75]"  => ['C',    'UInt8'],
		       "unknown byte[76]"  => ['C',    'UInt8'],
		       "unknown byte[77]"  => ['C',    'UInt8'],
		       "unknown byte[78]"  => ['C',    'UInt8'],
		       "unknown byte[79]"  => ['C',    'UInt8'],
			 ];

  $specific_fields{62} = [
		       "unknown byte[41]"  => ['C',    'UInt8'],
		       "unknown byte[42]"  => ['C',    'UInt8'],
		       "unknown byte[43]"  => ['C',    'UInt8'],
		       "unknown byte[44]"  => ['C',    'UInt8'],
		       "unknown byte[45]"  => ['C',    'UInt8'],
		       "unknown byte[46]"  => ['C',    'UInt8'],
		       "unknown byte[47]"  => ['C',    'UInt8'],
		       "unknown byte[48]"  => ['C',    'UInt8'],
		       "unknown byte[49]"  => ['C',    'UInt8'],
		       "unknown byte[50]"  => ['C',    'UInt8'],
		       "unknown byte[51]"  => ['C',    'UInt8'],
		       "unknown byte[52]"  => ['C',    'UInt8'],
		       "unknown byte[53]"  => ['C',    'UInt8'],
		       "unknown byte[54]"  => ['C',    'UInt8'],
		       "unknown byte[55]"  => ['C',    'UInt8'],
		       "unknown byte[56]"  => ['C',    'UInt8'],
		       "unknown byte[57]"  => ['C',    'UInt8'],
		       "unknown byte[58]"  => ['C',    'UInt8'],
		       "unknown byte[59]"  => ['C',    'UInt8'],
		       "unknown byte[60]"  => ['C',    'UInt8'],
		       "unknown byte[61]"  => ['C',    'UInt8'],
		       "unknown byte[62]"  => ['C',    'UInt8'],
		       "unknown byte[63]"  => ['C',    'UInt8'],
		       "unknown byte[64]"  => ['C',    'UInt8'],
		       "unknown byte[65]"  => ['C',    'UInt8'],
		       "unknown byte[66]"  => ['C',    'UInt8'],
		       "unknown byte[67]"  => ['C',    'UInt8'],
		       "unknown byte[68]"  => ['C',    'UInt8'],
		       "unknown byte[69]"  => ['C',    'UInt8'],
		       "unknown byte[70]"  => ['C',    'UInt8'],
		       "unknown byte[71]"  => ['C',    'UInt8'],
		       "unknown byte[72]"  => ['C',    'UInt8'],
		       "unknown byte[73]"  => ['C',    'UInt8'],
		       "unknown byte[74]"  => ['C',    'UInt8'],
		       "unknown byte[75]"  => ['C',    'UInt8'],
		       "unknown byte[76]"  => ['C',    'UInt8'],
		       "unknown byte[77]"  => ['C',    'UInt8'],
		       "unknown byte[78]"  => ['C',    'UInt8'],
		       "unknown byte[79]"  => ['C',    'UInt8'],

		       "unknown byte[80]"  => ['C',    'UInt8'],
		       "unknown byte[81]"  => ['C',    'UInt8'],
		       "unknown byte[82]"  => ['C',    'UInt8'],
		       "unknown byte[83]"  => ['C',    'UInt8'],
		       "unknown byte[84]"  => ['C',    'UInt8'],
		       "unknown byte[85]"  => ['C',    'UInt8'],
		       "unknown byte[86]"  => ['C',    'UInt8'],
		       "unknown byte[87]"  => ['C',    'UInt8'],
		       "unknown byte[88]"  => ['C',    'UInt8'],
		       "unknown byte[89]"  => ['C',    'UInt8'],
		       "unknown byte[90]"  => ['C',    'UInt8'],
		       "unknown byte[91]"  => ['C',    'UInt8'],
		       "unknown byte[92]"  => ['C',    'UInt8'],
		       "unknown byte[93]"  => ['C',    'UInt8'],
		       "unknown byte[94]"  => ['C',    'UInt8'],
		       "unknown byte[95]"  => ['C',    'UInt8'],
		       "unknown byte[96]"  => ['C',    'UInt8'],
		       "unknown byte[97]"  => ['C',    'UInt8'],
		       "unknown byte[98]"  => ['C',    'UInt8'],
		       "unknown byte[99]"  => ['C',    'UInt8'],
		       "unknown byte[100]" => ['C',    'UInt8'],
		       "unknown byte[101]" => ['C',    'UInt8'],
		       "unknown byte[102]" => ['C',    'UInt8'],
		       "unknown byte[103]" => ['C',    'UInt8'],
		       "unknown byte[104]" => ['C',    'UInt8'],
		       "unknown byte[105]" => ['C',    'UInt8'],
		       "unknown byte[106]" => ['C',    'UInt8'],
		       "unknown byte[107]" => ['C',    'UInt8'],
		       "unknown byte[108]" => ['C',    'UInt8'],
		       "unknown byte[109]" => ['C',    'UInt8'],
		       "unknown byte[110]" => ['C',    'UInt8'],
		       "unknown byte[111]" => ['C',    'UInt8'],
		       "unknown byte[112]" => ['C',    'UInt8'],
		       "unknown byte[113]" => ['C',    'UInt8'],
		       "unknown byte[114]" => ['C',    'UInt8'],
		       "unknown byte[115]" => ['C',    'UInt8'],
		       "unknown byte[116]" => ['C',    'UInt8'],
		       "unknown byte[117]" => ['C',    'UInt8'],
		       "unknown byte[118]" => ['C',    'UInt8'],
		       "unknown byte[119]" => ['C',    'UInt8'],
			 ];

  $specific_fields{63} = [
		       "unknown byte[41]"  => ['C',    'UInt8'],
		       "unknown byte[42]"  => ['C',    'UInt8'],
		       "unknown byte[43]"  => ['C',    'UInt8'],
		       "unknown byte[44]"  => ['C',    'UInt8'],
		       "unknown byte[45]"  => ['C',    'UInt8'],
		       "unknown byte[46]"  => ['C',    'UInt8'],
		       "unknown byte[47]"  => ['C',    'UInt8'],
		       "unknown byte[48]"  => ['C',    'UInt8'],
		       "unknown byte[49]"  => ['C',    'UInt8'],
		       "unknown byte[50]"  => ['C',    'UInt8'],
		       "unknown byte[51]"  => ['C',    'UInt8'],
		       "unknown byte[52]"  => ['C',    'UInt8'],
		       "unknown byte[53]"  => ['C',    'UInt8'],
		       "unknown byte[54]"  => ['C',    'UInt8'],
		       "unknown byte[55]"  => ['C',    'UInt8'],
		       "unknown byte[56]"  => ['C',    'UInt8'],
		       "unknown byte[57]"  => ['C',    'UInt8'],
		       "unknown byte[58]"  => ['C',    'UInt8'],
		       "unknown byte[59]"  => ['C',    'UInt8'],
		       "unknown byte[60]"  => ['C',    'UInt8'],
		       "unknown byte[61]"  => ['C',    'UInt8'],
		       "unknown byte[62]"  => ['C',    'UInt8'],
		       "unknown byte[63]"  => ['C',    'UInt8'],
		       "unknown byte[64]"  => ['C',    'UInt8'],
		       "unknown byte[65]"  => ['C',    'UInt8'],
		       "unknown byte[66]"  => ['C',    'UInt8'],
		       "unknown byte[67]"  => ['C',    'UInt8'],
		       "unknown byte[68]"  => ['C',    'UInt8'],
		       "unknown byte[69]"  => ['C',    'UInt8'],
		       "unknown byte[70]"  => ['C',    'UInt8'],
		       "unknown byte[71]"  => ['C',    'UInt8'],
		       "unknown byte[72]"  => ['C',    'UInt8'],
		       "unknown byte[73]"  => ['C',    'UInt8'],
		       "unknown byte[74]"  => ['C',    'UInt8'],
		       "unknown byte[75]"  => ['C',    'UInt8'],
		       "unknown byte[76]"  => ['C',    'UInt8'],
		       "unknown byte[77]"  => ['C',    'UInt8'],
		       "unknown byte[78]"  => ['C',    'UInt8'],
		       "unknown byte[79]"  => ['C',    'UInt8'],

		       "unknown byte[80]"  => ['C',    'UInt8'],
		       "unknown byte[81]"  => ['C',    'UInt8'],
		       "unknown byte[82]"  => ['C',    'UInt8'],
		       "unknown byte[83]"  => ['C',    'UInt8'],
		       "unknown byte[84]"  => ['C',    'UInt8'],
		       "unknown byte[85]"  => ['C',    'UInt8'],
		       "unknown byte[86]"  => ['C',    'UInt8'],
		       "unknown byte[87]"  => ['C',    'UInt8'],
		       "unknown byte[88]"  => ['C',    'UInt8'],
		       "unknown byte[89]"  => ['C',    'UInt8'],
		       "unknown byte[90]"  => ['C',    'UInt8'],
		       "unknown byte[91]"  => ['C',    'UInt8'],
		       "unknown byte[92]"  => ['C',    'UInt8'],
		       "unknown byte[93]"  => ['C',    'UInt8'],
		       "unknown byte[94]"  => ['C',    'UInt8'],
		       "unknown byte[95]"  => ['C',    'UInt8'],
		       "unknown byte[96]"  => ['C',    'UInt8'],
		       "unknown byte[97]"  => ['C',    'UInt8'],
		       "unknown byte[98]"  => ['C',    'UInt8'],
		       "unknown byte[99]"  => ['C',    'UInt8'],
		       "unknown byte[100]" => ['C',    'UInt8'],
		       "unknown byte[101]" => ['C',    'UInt8'],
		       "unknown byte[102]" => ['C',    'UInt8'],
		       "unknown byte[103]" => ['C',    'UInt8'],
		       "unknown byte[104]" => ['C',    'UInt8'],
		       "unknown byte[105]" => ['C',    'UInt8'],
		       "unknown byte[106]" => ['C',    'UInt8'],
		       "unknown byte[107]" => ['C',    'UInt8'],
		       "unknown byte[108]" => ['C',    'UInt8'],
		       "unknown byte[109]" => ['C',    'UInt8'],
		       "unknown byte[110]" => ['C',    'UInt8'],
		       "unknown byte[111]" => ['C',    'UInt8'],
		       "unknown byte[112]" => ['C',    'UInt8'],
		       "unknown byte[113]" => ['C',    'UInt8'],
		       "unknown byte[114]" => ['C',    'UInt8'],
		       "unknown byte[115]" => ['C',    'UInt8'],
		       "unknown byte[116]" => ['C',    'UInt8'],
		       "unknown byte[117]" => ['C',    'UInt8'],
		       "unknown byte[118]" => ['C',    'UInt8'],
		       "unknown byte[119]" => ['C',    'UInt8'],

		       "unknown byte[120]" => ['C',    'UInt8'],
		       "unknown byte[121]" => ['C',    'UInt8'],
		       "unknown byte[122]" => ['C',    'UInt8'],
		       "unknown byte[123]" => ['C',    'UInt8'],
		       "unknown byte[124]" => ['C',    'UInt8'],
		       "unknown byte[125]" => ['C',    'UInt8'],
		       "unknown byte[126]" => ['C',    'UInt8'],
		       "unknown byte[127]" => ['C',    'UInt8'],
			 ];

  die "don't know how to parse version $version" unless $specific_fields{$version};
  my $self = Finnigan::Decoder->read($stream, [@common_fields, @{$specific_fields{$version}}]);

  return bless $self, $class;
}

sub list {
  my $self = shift;

  my %name = (
	      2 => "corona",
	      3 => "detector",
	      4 => "polarity",
	      5 => "scan mode",
	      6 => "ms power",
	      7 => "scan type",
	      
	      10 => "dependent",
	      11 => "ionization",
	      
	      32 => "wideband",
	      40 => "analyzer",
	     );

  my @list;
  foreach my $i (0 .. keys(%{$self->{data}}) - 1) {
    my $key = $name{$i} ? $name{$i} : "unknown byte[$i]";
    $list[$i] = $self->{data}->{$key}->{value};
  }
  return @list;
}

sub corona {
  shift->{data}->{"corona"}->{value};
}

sub detector {
  shift->{data}->{"detector"}->{value};
}

sub analyzer {
  shift->{data}->{"analyzer"}->{value};
}

1;
__END__

=head1 NAME

Finnigan::ScanEventPreamble -- a decoder for ScanEventPreamble, the byte array in ScanEvent

=head1 SYNOPSIS

  use Finnigan;
  my $p = Finnigan::ScanEventPreamble->decode(\*INPUT);
  say join(" ", $p->list);
  say p->analyzer;

=head1 DESCRIPTION

This fixed-size structure is a byte array at the head of ScanEvent. It
contains various boolean flags an enumerated types with a small number
of values. For example, it's 41st byte contains the analyzer type in
all versions:

%ANALYZER = (
  0 => "ITMS",
  1 => "TQMS",
  2 => "SQMS",
  3 => "TOFMS",
  4 => "FTMS",
  5 => "Sector",
  6 => "undefined"
);

The of the values in ScanEventPreamble remain unknown.

The structure seems to have grown historically; to the 41 bytes in
v.57, 39 more are added in v.62, and 8 further bytes are added in
v.63.


=head2 EXPORT

None

=head1 SEE ALSO

Finnigan::ScanEvent

=head1 AUTHOR

Gene Selkov, E<lt>selkovjr@gmail.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2010 by Gene Selkov

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.


=cut
