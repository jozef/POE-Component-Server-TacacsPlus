package Net::TacacsPlus;

=head1 NAME

Net::TacacsPlus - Tacacs+ library

=head1 SYNOPSYS

	use Net::TacacsPlus qw{ tacacs_client };
	
	my $client = tacacs_client(
		'host' => 'tacacs.server',
		'key'  => 'secret',
	);

=head1 DESCRIPTION

For now tacacs client authentication implemented. See L<Net::TacacsPlus::Client>.

=cut

our $VERSION = '1.02';

use Net::TacacsPlus::Client;

use Exporter;
use 5.006;

@ISA = ('Exporter');
@EXPORT_OK = ('tacacs_client');

=head1 FUNCTIONS

=over 4

=item tacacs_client(@arg)

Returns L<Net::TacacsPlus::Client> object created with @arg. 

=cut

sub tacacs_client {
	my @arg = @_;
	
	return Net::TacacsPlus::Client->new(@arg);
}

=back

=cut

1;


=head1 AUTHOR

Jozef Kutej - jozef.kutej@hp.com

=head1 BUGS

not known

=head1 SEE ALSO

tac-rfc.1.76.txt

=cut
