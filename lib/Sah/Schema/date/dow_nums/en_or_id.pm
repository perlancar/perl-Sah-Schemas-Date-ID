package Sah::Schema::date::dow_nums::en_or_id;

# DATE
# VERSION

our $schema = ['array' => {
    summary => 'Array of day-of-week numbers (1-7, 1=Monday)',
    of => ['date::dow_num::en_or_id', {}, {}],
    'x.perl.coerce_rules' => ['str_comma_sep'],
    'x.completion' => ['date_dow_nums_en_or_id'],
}, {}];

1;

# ABSTRACT:

=head1 DESCRIPTION

Like the L<date::dow_nums|Sah::Schema::date::dow_nums> except the elements are
L<date::dow_num::en_or_id|Sah::Schema::date::dow_num::en_or_id> instead of
L<date::dow_num|Sah::Schema::date::dow_num>.


=head1 SEE ALSO

L<Sah::Schema::date::dow_nums>

L<Sah::Schema::date::dow_nums::id>

L<Sah::Schema::date::dow_num::en_or_id>
