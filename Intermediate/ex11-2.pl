do "ex11-1.pl";

my($sec, $min, $hour, $mday, $mon, $year, $wday) = localtime;
$year += 1900;
my $dayName = &number_to_day_name($wday);
my $monthName = &number_to_month_name($mon);

print "Today is $dayName, $monthName $mday, $year\n";
