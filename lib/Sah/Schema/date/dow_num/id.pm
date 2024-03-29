package Sah::Schema::date::dow_num::id;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [int => {
    summary => 'Day-of-week number (1-7, 1=Monday, like DateTime), coercible from Indonesian day-of-week name (Sn/SEN/senin)',
    min => 1,
    max => 7,
    'x.perl.coerce_rules' => ['From_str::convert_id_dow_name_to_num'],
    'x.completion' => ['date_dow_num_id'],
    description => <<'_',

See also related schemas that coerce from other locales, e.g.
<pm:Sah::Schema::date::dow_num> (English),
<pm:Sah::Schema::date::dow_num::en_or_id> (English or Indonesian), etc.

_
    examples => [
        {value=>'', valid=>0, summary=>"Not in 1-7"},
        {value=>0, valid=>0, summary=>"Not in 1-7"},
        {value=>1, valid=>1},
        {value=>"Sel", validated_value=>2, valid=>1},
        {value=>7, valid=>1},
        {value=>8, valid=>0, summary=>"Not in 1-7"},
    ],
}];

1;

# ABSTRACT:

=head1 DESCRIPTION

Like the L<date::dow_num|Sah::Schema::date::dow_num> schema, except with
coercion rule to convert Indonesian day-of-week name to number.


=head1 SEE ALSO

L<Sah::Schema::date::dow_num>

L<Sah::Schema::date::dow_num::en_or_id>
