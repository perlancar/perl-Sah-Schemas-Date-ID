package Sah::Schema::date::month_name::id;

# DATE
# VERSION

our $schema = [cistr => {
    summary => 'Month name (abbreviated or full, in Indonesian)',
    in => [
        qw/jan feb mar apr mei jun jul agu sep okt nov des/,
        qw/januari februari maret april juni juli agustus september oktober november desember/,
    ],
}, {}];

1;

# ABSTRACT:
