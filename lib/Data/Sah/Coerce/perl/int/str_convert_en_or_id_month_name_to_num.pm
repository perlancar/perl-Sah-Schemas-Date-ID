package Data::Sah::Coerce::perl::int::str_convert_en_or_id_month_name_to_num;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

sub meta {
    +{
        v => 4,
        prio => 50,
    };
}

sub coerce {
    my %args = @_;

    my $dt = $args{data_term};

    my $res = {};
    my $pkg = __PACKAGE__;

    $res->{expr_match} = "!ref($dt)";
    $res->{expr_coerce} = join(
        "",
        "do { ",

        # since this is a small translation table we put it inline, but for
        # larger translation table we should move it to a separate perl module
        "\$$pkg\::month_nums ||= {",
        # english
        "  jan=>1, january=>1, ",
        "  feb=>2, february=>2, ",
        "  mar=>3, march=>3, ",
        "  apr=>4, april=>4, ",
        "  may=>5, ",
        "  jun=>6, june=>6, ",
        "  jul=>7, july=>7, ",
        "  aug=>8, august=>8, ",
        "  sep=>9, sept=>9, september=>9, ",
        "  oct=>10, october=>10, ",
        "  nov=>11, november=>11, ",
        "  dec=>12, december=>12, ",
        # indonesian
        "  jan=>1, januari=>1, ",
        "  feb=>2, peb=>2, februari=>2, pebruari=>2, ",
        "  mar=>3, maret=>3, ",
        "  apr=>4, april=>4, ",
        "  mei=>5, ",
        "  jun=>6, juni=>6, ",
        "  jul=>7, juli=>7, ",
        "  agu=>8, agt=>8, agustus=>8, ",
        "  sep=>9, sept=>9, september=>9, ",
        "  okt=>10, oktober=>10, ",
        "  nov=>11, nop=>11, november=>11, nopember=>11, ",
        "  des=>12, desember=>12, ",
        "}; ",
        "\$$pkg\::month_nums->{lc $dt} || $dt; ",
        "}",
    );

    $res;
}

1;
# ABSTRACT: Convert English/Indonesian month name (e.g. Des, april) to number (1-12)

=for Pod::Coverage ^(meta|coerce)$

=head1 DESCRIPTION

This rule can convert English/Indonesian month names like:

 Mei
 May

 july
 juli

 AUG
 Agu

to corresponding month numbers (i.e. 5, 7, 8 in the examples above).
Unrecognized strings will just be passed as-is.


=head1 SEE ALSO

L<str_convert_en_month_name_to_num|Data::Sah::Coerce::perl::int::str_convert_en_month_name_to_num>

L<str_convert_id_month_name_to_num|Data::Sah::Coerce::perl::int::str_convert_id_month_name_to_num>

L<str_convert_locale_month_name_to_num|Data::Sah::Coerce::perl::int::str_convert_locale_month_name_to_num>
