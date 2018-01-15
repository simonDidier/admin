#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

for (0..5){
system qq % echo "blabla$_">fich.$_ %;
system qq % echo "10.179.3.5$_">>fich.$_ %;
system qq % echo "fin$_">>fich.$_ %;
}
for (6..9){
system qq % echo "blabla$_">fich.$_ %;
system qq % echo "189.172.3.5$_">>fich.$_ %;
system qq % echo "fin$_">>fich.$_ %;
}





















