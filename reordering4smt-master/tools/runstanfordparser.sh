 

WORKDIR=`dirname $0`

if [ $# != 1 ]
then
	echo "Usage: $0 inputfile "
	exit 1
else
	sh $WORKDIR/lexparser.sh $1 |tee $1.parsed
	echo "runstanfordparser.sh: output file @ $1.parsed"
	echo "Have a nice day !"
fi
