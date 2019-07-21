package Sah::Schema::date::month_nums::en_or_id;

# DATE
# VERSION

our $schema = ['array' => {
    summary => 'Array of month numbers',
    of => ['date::month_num::en_or_id', {}, {}],
    'x.perl.coerce_rules' => ['str_comma_sep'],
}, {}];

1;

# ABSTRACT:

=head1 DESCRIPTION

Like the L<date::month_nums|Sah::Schema::date::month_nums> except the elements
are L<date::month_num::id|Sah::Schema::date::month_num::en_or_id> instead of
L<date::month_num|Sah::Schema::date::month_num>.


=head1 SEE ALSO

L<Sah::Schema::date::month_nums>

L<Sah::Schema::date::month_nums::id>

L<Sah::Schema::date::month_num::en_or_id>
