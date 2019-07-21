package Perinci::Sub::XCompletion::date_month_nums_id;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use Complete::Util qw(complete_comma_sep);

our %SPEC;

$SPEC{gen_completion} = {
    v => 1.1,
};
sub gen_completion {
    my %fargs = @_;

    sub {
        my %cargs = @_;

        complete_comma_sep(
            elems => [
                1..12,
                "januari","februari","maret","april","mei","juni","juli","agustus","september","oktober","november","desember",
            ],
            word => $cargs{word},
        );
    };
}

1;
# ABSTRACT: Generate completion for date::month_nums

=head1 CONFIGURATION


=head1 SEE ALSO

L<Sah::Schema::date::month_nums>

=cut
