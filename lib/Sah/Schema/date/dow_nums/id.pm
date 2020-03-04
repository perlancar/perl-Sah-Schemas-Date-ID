package Sah::Schema::date::dow_nums::id;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ['array' => {
    summary => 'Array of day-of-week numbers (1-7, 1=Monday)',
    of => ['date::dow_num::id', {}, {}],
    'x.perl.coerce_rules' => ['From_str::comma_sep'],
    'x.completion' => ['date_dow_nums_id'],
    examples => [
        {value=>'', valid=>1, validated_value=>[]},
        {value=>0, valid=>0},
        {value=>1, valid=>1, validated_value=>[1]},
        {value=>"1,7", valid=>1, validated_value=>[1,7]},
        {value=>[1,7], valid=>1},
        {value=>"1,7,8", valid=>0},
        {value=>[1,7,8], valid=>0},
    ],
}, {}];

1;

# ABSTRACT:

=head1 DESCRIPTION

Like the L<date::dow_nums|Sah::Schema::date::dow_nums> except the elements are
L<date::dow_num::id|Sah::Schema::date::dow_num::id> instead of
L<date::dow_num|Sah::Schema::date::dow_num>.


=head1 SEE ALSO

L<Sah::Schema::date::dow_nums>

L<Sah::Schema::date::dow_nums::en_or_id>

L<Sah::Schema::date::dow_num::id>
