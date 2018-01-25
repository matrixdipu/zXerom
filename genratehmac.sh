#!/bin/bash
argslist=$*

usage(){
echo " Usage :"
echo "./genratehmac.sh  -k <HMAC Key> -t <Plain Test>  "
}

while [ $# -gt 0 ]
do
        case $1 in
                "-help"|"help")
                        usage
                        exit 0
                        ;;
                "-k")
                        key=$2
                        shift 2;
                        ;;
                "-t")
                        text=$2
                        shift 2;
                        ;;
                *)
                        shift 1;
                        ;;
        esac
done



echo -n $text | openssl dgst -sha1 -hmac $key