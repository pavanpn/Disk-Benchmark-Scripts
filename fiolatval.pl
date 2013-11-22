#! /usr/bin/perl

print "FIO Started \n";
my $result=`fio randread --output rrresults.txt`;
my $out=`rm -rf /root/test`;

my $result=`fio randwrite --output rwresults.txt`;
my $out=`rm -rf /root/test`;

my $result=`fio seqread --output srresults.txt`;
my $out=`rm -rf /root/test`;

my $result=`fio seqwrite --output swresults.txt`;
my $out=`rm -rf /root/test`;

my $filename = 'filebench.txt';
open(my $fh, '>>', $filename) or die "Could not open file '$filename' $!";

print "Filebench Started \n";
my $result=`filebench -f /root/Scripts/varmail.f`;
my $out=`rm -rf /root/FTest/`;
print $fh "$result";

my $result=`filebench -f /root/Scripts/fileserver.f`;
my $out=`rm -rf /root/FTest/`;
print $fh "$result";

my $result=`filebench -f /root/Scripts/webserver.f`;
my $out=`rm -rf /root/FTest/`;
print $fh "$result";
close $fh;