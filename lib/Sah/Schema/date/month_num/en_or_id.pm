package Sah::Schema::date::month_num::en_or_id;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [int => {
    summary => 'Month number',
    min => 1,
    max => 12,
    'x.perl.coerce_rules' => ['From_str::convert_en_or_id_month_name_to_num'],
    examples => [
        {value=>'', valid=>0},
        {value=>'jan', valid=>1, validated_value=>1},
        {value=>'AGU', valid=>1, validated_value=>8},
        {value=>'aug', valid=>1, validated_value=>8},
        {value=>0, valid=>0},
        {value=>1, valid=>1},
        {value=>12, valid=>1},
        {value=>13, valid=>0},
    ],
}, {}];

1;

# ABSTRACT:

=head1 DESCRIPTION

Like the L<date::month_num|Sah::Schema::date::month_num> schema, except with
coercion rule to convert English/Indonesian month name to number.


=head1 SEE ALSO

L<Sah::Schema::date::month_num>

L<Sah::Schema::date::month_num::id>
