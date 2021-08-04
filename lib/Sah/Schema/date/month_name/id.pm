package Sah::Schema::date::month_name::id;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [cistr => {
    summary => 'Month name (abbreviated or full, in Indonesian)',
    in => [
        qw/jan feb mar apr mei jun jul agu sep okt nov des/,
        qw/januari februari maret april juni juli agustus september oktober november desember/,
    ],
    description => <<'_',

See also related schemas for other locales, e.g.
<pm:Sah::Schema::date::month_name::en> (English),
<pm:Sah::Schema::date::month_name::en_or_id> (English/Indonesian), etc.

_
    examples => [
        {value=>'', valid=>0, summary=>'Empty string'},
        {value=>'jan', valid=>1},
        {value=>'FEBRUARI', valid=>1},
        {value=>'march', valid=>0, summary=>'English'},
        {value=>0, valid=>0, summary=>'Not a name'},
        {value=>1, valid=>0, summary=>'Not a name'},
        {value=>12, valid=>0, summary=>'Not a name'},
        {value=>13, valid=>0, summary=>'Not a name'},
    ],
}];

1;

# ABSTRACT:
