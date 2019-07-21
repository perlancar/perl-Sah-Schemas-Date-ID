package Perinci::Sub::XCompletion::date_month_num_en_or_id;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use Complete::Util qw(complete_array_elem);

our %SPEC;

$SPEC{gen_completion} = {
    v => 1.1,
};
sub gen_completion {
    my %fargs = @_;

    sub {
        my %cargs = @_;

        complete_array_elem(
            array => [
                1..12,
                # english
                "january","february","march","april","may","june","july","august","september","october","november","december",
                # indonesian
                "januari","februari","maret","april","mei","juni","juli","agustus","september","oktober","november","desember",
            ],
            word => $cargs{word},
        );
    };
}

1;
# ABSTRACT: Generate completion for date::month_num

=head1 CONFIGURATION


=head1 SEE ALSO

L<Sah::Schema::date::month_num>

=cut
