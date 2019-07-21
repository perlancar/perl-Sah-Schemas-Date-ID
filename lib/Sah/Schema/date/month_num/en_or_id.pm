package Sah::Schema::date::month_num::en_or_id;

# DATE
# VERSION

our $schema = [int => {
    summary => 'Month number',
    min => 1,
    max => 12,
    'x.perl.coerce_rules' => ['str_convert_en_or_id_month_name_to_num'],
}, {}];

1;

# ABSTRACT:

=head1 DESCRIPTION

Like the L<date::month_num|Sah::Schema::date::month_num> schema, except with
coercion rule to convert English/Indonesian month name to number.


=head1 SEE ALSO

L<Sah::Schema::date::month_num>

L<Sah::Schema::date::month_num::id>
