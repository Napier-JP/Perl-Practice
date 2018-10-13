#!perl
use strict;
use warnings;
use utf8;

my @userInput = <STDIN>;
@userInput = reverse @userInput;

print @userInput;