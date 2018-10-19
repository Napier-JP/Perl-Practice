use strict;
use warnings;
use utf8;
use File::Find;
use Time::Local;

my $target_dow = 1;
my @starting_directories = (".");

my $seconds_per_day = 24 * 60 * 60;
my($sec, $min, $hour, $day, $mon, $yr, $dow) = localtime;
my $start = timelocal(0, 0, 0, $day, $mon, $yr);

while ($dow != $target_dow) {
    $start -= $seconds_per_day;
    if (--$dow < 0) {
	$dow += 7;
    }
}
my $stop = $start + $seconds_per_day;

my($gather, $yield)  = &gather_mtime_between($start, $stop);
find($gather, @starting_directories);
my @files = $yield->(  );

for my $file (@files) {
    my $mtime = (stat $file)[9];
    my $when = localtime $mtime;
    print "$when: $file\n";
}

sub gather_mtime_between{
    my ($begin, $end) = @_;
    my @files;
    my $gatherer = sub{
	my $timestamp = (stat $_)[9];    
	if($timestamp >= $begin && $timestamp <= $end){
	    push @files, $File::Find::name;
	}
    };
    my $fetcher = sub {@files};
    ($gatherer, $fetcher);
}
