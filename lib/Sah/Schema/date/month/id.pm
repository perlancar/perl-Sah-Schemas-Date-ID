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
    examples => [
        {value=>'', valid=>0},
        {value=>'jan', valid=>1},
        {value=>'FEBRUARI', valid=>1},
        {value=>'march', valid=>0, summary=>'English'},
        {value=>0, valid=>0},
        {value=>1, valid=>1},
        {value=>12, valid=>1},
        {value=>13, valid=>0},
    ],
}, {}];

1;

# ABSTRACT:
