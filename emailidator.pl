###https://github.com/anjaanabishek10

#####Import#####
####################################################################################################################################################

use HTTP::Request;
use LWP::UserAgent;
use IO::Select;
use HTTP::Headers;
use IO::Socket;
use HTTP::Response;
use URI::URL;

####################################################################################################################################################

#####Header#####
####################################################################################################################################################

my $ua = LWP::UserAgent->new;
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");

####################################################################################################################################################

#####Command Line Arug#####
####################################################################################################################################################

chomp($ARGV[0]);
chomp($ARGV[1]);
chomp($ARGV[2]);

####################################################################################################################################################

#####Banner#####
####################################################################################################################################################

sub banner() 

{

    system(clear);

    print "\033[1;31m███████\033[1;37m╗\033[1;31m███\033[1;37m╗   \033[1;31m███\033[1;37m╗ \033[1;31m█████\033[1;37m╗ \033[1;31m██\033[1;37m╗\033[1;31m██\033[1;37m╗     \033[1;31m██\033[1;37m╗\033[1;31m██████\033[1;37m╗  \033[1;31m█████\033[1;37m╗ \033[1;31m████████\033[1;37m╗ \033[1;31m██████\033[1;37m╗ \033[1;31m██████\033[1;37m╗\n";
    print "\033[1;31m██\033[1;37m╔════╝\033[1;31m████\033[1;37m╗ \033[1;31m████\033[1;37m║\033[1;31m██\033[1;37m╔══\033[1;31m██\033[1;37m╗\033[1;31m██\033[1;37m║\033[1;31m██\033[1;37m║     \033[1;31m██\033[1;37m║\033[1;31m██\033[1;37m╔══\033[1;31m██\033[1;37m╗\033[1;31m██\033[1;37m╔══\033[1;31m██\033[1;37m╗╚══\033[1;31m██\033[1;37m╔══╝\033[1;31m██\033[1;37m╔═══\033[1;31m██\033[1;37m╗\033[1;31m██\033[1;37m╔══\033[1;31m██\033[1;37m╗\n";
    print "\033[1;31m█████\033[1;37m╗  \033[1;31m██\033[1;37m╔\033[1;31m████\033[1;37m╔\033[1;31m██\033[1;37m║\033[1;31m███████\033[1;37m║\033[1;31m██\033[1;37m║\033[1;31m██\033[1;37m║     \033[1;31m██\033[1;37m║\033[1;31m██\033[1;37m║  \033[1;31m██\033[1;37m║\033[1;31m███████\033[1;37m║   \033[1;31m██\033[1;37m║   \033[1;31m██\033[1;37m║   \033[1;31m██\033[1;37m║\033[1;31m██████\033[1;37m╔╝\n";
    print "\033[1;31m██\033[1;37m╔══╝  \033[1;31m██\033[1;37m║╚\033[1;31m██\033[1;37m╔╝\033[1;31m██\033[1;37m║\033[1;31m██\033[1;37m╔══\033[1;31m██\033[1;37m║\033[1;31m██\033[1;37m║\033[1;31m██\033[1;37m║     \033[1;31m██\033[1;37m║\033[1;31m██\033[1;37m║  \033[1;31m██\033[1;37m║\033[1;31m██\033[1;37m╔══\033[1;31m██\033[1;37m║   \033[1;31m██\033[1;37m║   \033[1;31m██\033[1;37m║   \033[1;31m██\033[1;37m║\033[1;31m██\033[1;37m╔══\033[1;31m██\033[1;37m╗\n";
    print "\033[1;31m███████\033[1;37m╗\033[1;31m██\033[1;37m║ ╚═╝ \033[1;31m██\033[1;37m║\033[1;31m██\033[1;37m║  \033[1;31m██\033[1;37m║\033[1;31m██\033[1;37m║\033[1;31m███████\033[1;37m╗\033[1;31m██\033[1;37m║\033[1;31m██████\033[1;37m╔╝\033[1;31m██\033[1;37m║  \033[1;31m██\033[1;37m║   \033[1;31m██\033[1;37m║   ╚\033[1;31m██████\033[1;37m╔╝\033[1;31m██\033[1;37m║  \033[1;31m██\033[1;37m║\n";
    print "\033[1;37m╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝╚══════╝╚═╝╚═════╝ ╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝\n";
    print "\033[1;31mhttps://github.com/anjaanabishek10                      +-+-+-+-+-+-+-+-+-+-+-+-+-+\n";
    print "                                                        |\033[1;37mU\033[1;31m|\033[1;37mn\033[1;31m|\033[1;37m5\033[1;31m|\033[1;37me\033[1;31m|\033[1;37me\033[1;31m|\033[1;37mN\033[1;31m|\033[1;37m3\033[1;31m|\033[1;37mx\033[1;31m|\033[1;37mP\033[1;31m|\033[1;37m1\033[1;31m|\033[1;37m0\033[1;31m|\033[1;37mI\033[1;31m|\033[1;37mT\033[1;31m|\n";
    print "                                                        +-+-+-+-+-+-+-+-+-+-+-+-+-+\n";
    print "\n";
    print "\033[1;31m# \033[1;37mDISCORD  :   anjaanabishek#6186                               \033[1;31m#\n";
    print "\033[1;31m# \033[1;37mGMAIL    :   anjaanabishek10\@gmail.com                        \033[1;31m#\n";
    print "\033[1;31m# \033[1;37mINSTA    :   https://www.instagram.com/anjaan.abishek/        \033[1;31m#\n";
    print "\033[1;31m# \033[1;37mLINKEDIN :   https://www.linkedin.com/in/abishek-k-11217b1b5/ \033[1;31m#\n";
    print "\n";

}

####################################################################################################################################################

#####Help#####
####################################################################################################################################################

sub help()

{

    print "\033[1;31mUSAGE:\n";
    print "\033[1;37mperl emailidator.pl flag mail(file)\n";
    print "\n";
    print "\033[1;31mFLAG:\n";
    print "\033[1;37m-h or --help   => show the help menu\n";
    print "\033[1;37m-e or --email  => accept single email\n";
    print "\033[1;37m-f or --file   => accept file containing email\n";
    print "\n";
    print "\033[1;31mEXAMPLE:\n";
    print "\033[1;37mperl emailidator.pl -h\n";
    print "\033[1;37mperl emailidator.pl -e example\@mail.com\n";
    print "\n";

}

####################################################################################################################################################

#####Email#####
####################################################################################################################################################

sub email() 

{

    $url = "https://api.2ip.me/email.txt?email=$ARGV[1]";
    $request = $ua->get($url);
    $response = $request->content;
    $code = $request->code;

    if($code == 200)

    {

        if($response =~/true/)

        {

            print "\033[1;37m$ARGV[1] => \033[1;32mValid\n";

        }

        if($response =~/false/)

        {

            print "\033[1;37m$ARGV[1] => \033[1;31mInValid\n";

        }

    }

    else

    {

        print "\033[1;31m!!!\033[1;37mPlease Check Your Internet Connection\033[1;31m!!!"

    }

}

####################################################################################################################################################

#####Start#####
####################################################################################################################################################

if((($ARGV[0] eq "-h") || ($ARGV[0] eq "--help")) && (length($ARGV[0]) != 0) && (length($ARGV[1]) == 0))

{

    banner();
    help();

}

elsif((($ARGV[0] eq "-e") || ($ARGV[0] eq "--email")) && (length($ARGV[0]) != 0) && (length($ARGV[1]) != 0) && (length($ARGV[2]) == 0))

{

    banner();
    email();

}

else

{

    banner();
    help();

}

####################################################################################################################################################