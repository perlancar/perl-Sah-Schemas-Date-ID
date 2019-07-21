package Perinci::Sub::XCompletion::date_dow_num_id;

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
                1..7,
                "senin","selasa","rabu","kamis","jumat","sabtu","minggu",
            ],
            word => $cargs{word},
        );
    };
}

1;
# ABSTRACT: Generate completion for date::dow_num::id

=head1 CONFIGURATION


=head1 SEE ALSO

L<Sah::Schema::date::dow_num::id>

=cut
