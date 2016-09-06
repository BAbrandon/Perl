BEGIN{
sRC=0 
cRC=0
qRC=0
sAC=0
cAC=0
qAC=0
sCC=0
cCC=0
qCC=0
startDate=""
endDate=""

}
{

if($5 == "swrinde"){
	if($4 == "-"){
	++sRC
	}
	else{
	++sAC
	if($4 == "c")
	sCC+=36437
	}
}
else if ($5 == "news.cais.net"){
        if($4 == "-"){
        cRC++
        }
	else{
        cAC++
        if($4 == "c")
        cCC++
        }
}

else if($5 == "?") {
        if($4 == "-"){
        qRC++
        }
	else{
        qAC++
        if($4 == "c")
        qCC++
        }
}

if(NR == 1)
startDate = $1 " " $2 " " $3
}
END{
endDate = $1" " $2 " " $3
printf "%16s %30s","","Incoming News Feed Summary\n\n"

printf "%-16s %-16s %-16s %-16s\n", "","accepted","rejected","canceled" 
printf "%-16s %-16d %-16d %-16d\n", "swrindle:",sAC,sRC,sCC
printf "%-16s %-16s %-16s %-16s\n", "news.cais.net:",cAC,cRC,cCC
printf "%-16s %-16s %-16s %-16s\n", "?:",qAC,qRC,qCC

printf"%30s %30s","","Incoming News Feed Summary\n\n"
print"Start Time " startDate "	End Time = " endDate "\n"
}

