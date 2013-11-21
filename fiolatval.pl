#! /usr/bin/perl

######################################################
# Script to extract FIO Latency Values to plot graph
# Input Format: fio <fio-config-file>
# Output: Latency Histogram & File with Latency Values 
######################################################
print "Script Started \n";
my $result=`fio $ARGV[0] --minimal --output plinput.txt`;
my $filename='plinput.txt';
open(my $fh,'<',$filename) or die "Could not open";
my @array=<$fh>;
close array;
close $fh;

my $filename1='ploutput.txt';
open(my $fh1,'>',$filename1) or die "Could not open";

foreach my $var (@array){
	(@words)=split(';',$var);
	foreach my $var2(@words){
		chop($var2);
	}
	print $fh1 "<=2us"." "."@words[99]"."\n";
	print $fh1 "4us"." "."@words[100]"."\n";
	print $fh1 "10us"." "."@words[101]"."\n";
	print $fh1 "20us"." "."@words[102]"."\n";
	print $fh1 "50us"." "."@words[103]"."\n";
	print $fh1 "100us"." "."@words[104]"."\n";
	print $fh1 "250us"." "."@words[105]"."\n";
	print $fh1 "500us"." "."@words[106]"."\n";
	print $fh1 "750us"." "."@words[107]"."\n";
	print $fh1 "1000us"." "."@words[108]"."\n";
	print $fh1 "<=2ms"." "."@words[109]"."\n";
	print $fh1 "4ms"." "."@words[110]"."\n";
        print $fh1 "10ms"." "."@words[111]"."\n";
        print $fh1 "20ms"." "."@words[112]"."\n";
        print $fh1 "50ms"." "."@words[113]"."\n";
        print $fh1 "100ms"." "."@words[114]"."\n";
        print $fh1 "250ms"." "."@words[115]"."\n";
        print $fh1 "500ms"." "."@words[116]"."\n";
        print $fh1 "750ms"." "."@words[117]"."\n";
        print $fh1 "1000ms"." "."@words[118]"."\n";
	print $fh1 "2000ms"." "."@words[119]"."\n";
}
close $fh1;
my $result1=`gnuplot fiolatplot`;

