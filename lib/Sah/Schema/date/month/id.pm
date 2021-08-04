package Sah::Schema::date::month::id;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [cistr => {
    summary => 'Month number/name (abbreviated or full, in Indonesian)',
    in => [
        1..12,
        qw/jan feb mar apr mei jun jul agu sep okt nov des/,
        qw/januari februari maret april juni juli agustus september oktober november desember/,
    ],
    description => <<'_',

Note that name is not coerced to number; use
<pm:Sah::Schema::date::month_num::id> for that.

See also related schemas for other locales, e.g.
<pm:Sah::Schema::date::month::en> (English),
<pm:Sah::Schema::date::month::en_or_id> (English/Indonesian), etc.

_
    examples => [
        {value=>'', valid=>0, summary=>'Empty string'},
        {value=>'jan', valid=>1},
        {value=>'FEBRUARI', valid=>1},
        {value=>'march', valid=>0, summary=>'English'},
        {value=>0, valid=>0, summary=>'Not a name'},
        {value=>1, valid=>1},
        {value=>12, valid=>1},
        {value=>13, valid=>0, summary=>'Not a name'},
    ],
}];

1;

# ABSTRACT:
