package Sah::Schema::date::month_nums::en_or_id;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ['array' => {
    summary => 'Array of required month numbers, coercible from English/Indonesian full/abbreviated month names',
    of => ['date::month_num::en_or_id', {req=>1}],
    'x.perl.coerce_rules' => ['From_str::comma_sep'],
    description => <<'_',

See also related schemas for other locales, e.g.
<pm:Sah::Schema::date::month_nums> (English),
<pm:Sah::Schema::date::month_nums::id> (Indonesian), etc.

_
    examples => [
        {value=>'', valid=>1, validated_value=>[]},
        {value=>'jan', valid=>1, validated_value=>[1]},
        {value=>'AGU', valid=>1, validated_value=>[8]},
        {value=>'aug', valid=>1, validated_value=>[8]},
        {value=>0, valid=>0, summary=>'Has number not in 1-12'},
        {value=>[1,undef], valid=>0, summary=>'Has undef'},
        {value=>"1,agu", valid=>1, validated_value=>[1,8]},
        {value=>"1,foo", valid=>0, summary=>'Has unknown month name'},
        {value=>[1,"agu"], valid=>1, validated_value=>[1,8]},
        {value=>"1,12", valid=>1, validated_value=>[1,12]},
        {value=>"1,12,13", valid=>0, summary=>'Has number not in 1-12'},
        {value=>[1,12,13], valid=>0, summary=>'Has number not in 1-12'},
    ],
}];

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
