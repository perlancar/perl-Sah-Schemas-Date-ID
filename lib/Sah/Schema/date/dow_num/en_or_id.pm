package Sah::Schema::date::dow_num::en_or_id;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [int => {
    summary => 'Day-of-week number (1-7, 1=Monday, like DateTime), coercible from English/Indonesian day-of-week name (Mo/Sn/MON/SEN/monday/senin)',
    min => 1,
    max => 7,
    'x.perl.coerce_rules' => ['From_str::convert_en_or_id_dow_name_to_num'],
    'x.completion' => ['date_dow_num_en_or_id'],
    description => <<'_',

See also related schemas that coerce from other locales, e.g.
<pm:Sah::Schema::date::dow_num> (English), <pm:Sah::Schema::date::dow_num::id>
(Indonesian), etc.

_
    examples => [
        {value=>'', valid=>0, summary=>"Not in 1-7"},
        {value=>0, valid=>0},
        {value=>1, valid=>1},
        {value=>"Tue", validated_value=>2, valid=>1},
        {value=>"SEL", validated_value=>2, valid=>1},
        {value=>7, valid=>1},
        {value=>8, valid=>0, summary=>"Not in 1-7"},
    ],
}];

1;

# ABSTRACT:

=head1 DESCRIPTION

Like the L<date::dow_num|Sah::Schema::date::dow_num> schema, except with
coercion rule to convert English/Indonesian day-of-week name to number.


=head1 SEE ALSO

L<Sah::Schema::date::dow_num>

L<Sah::Schema::date::dow_num::id>
