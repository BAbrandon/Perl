BEGIN{
loneAC   = 0 
runnerAC = 0
ringerAC = 0 
ringAC   = 0

loneGC   = 0
runnerGC = 0
ringerGC = 0
ringGC   = 0

utsaLone   = 0
utsaRunner = 0
utsaRinger = 0
utsaRing   = 0

utsadLone   = 0
utsadRunner = 0
utsadRinger = 0
utsadRing   = 0

timeLone   = 0
timeRunner = 0
timeRinger = 0
timeRing   = 0

startTime  = 0
endTime    = 0
}
{
if($6 == "lonestar.jpl.utsa.edu"){
	if($7 == "group"){
		if($8 == "utsa.cs.2413"){
		utsaLone += $9
		}
		if($8 == "utsa.cs.2413.d"){
		utsadLone += $9
		}
	}
	if($7 == "exit"){
	loneAC += $9
	loneGC += $11
	}
	if($7 == "times"){
	timeLone += $13
	}

}
if($6 == "runner.jpl.utsa.edu"){
        if($7 == "group"){
                if($8 == "utsa.cs.2413"){
                utsaRunner += $9
                }
                if($8 == "utsa.cs.2413.d"){
                utsadRunner += $9
                }
        }
        if($7 == "exit"){
        runnerAC += $9
        runnerGC += $11
        }
        if($7 == "times"){
        timeRunner += $13
        }
}
if($6 == "ringer.cs.utsa.edu"){

        if($7 == "group"){
                if($8 == "utsa.cs.2413"){
                utsaRinger += $9
                }
                if($8 == "utsa.cs.2413.d"){
                utsadRinger += $9
                }
        }
        if($7 == "exit"){
        ringerAC += $9
        ringerGC += $11
        }
        if($7 == "times"){
        timeRinger += $13
        }

}
if($6 ~ /ring[0-9][0-9]/){

        if($7 == "group"){
                if($8 == "utsa.cs.2413"){
                utsaRing += $9
                }
                if($8 == "utsa.cs.2413.d"){
                utsadRing += $9
                }
        }
        if($7 == "exit"){
        ringAC += $9
        ringGC += $11
        }
        if($7 == "times"){
        timeRing += $13
        }

}

if(NR == 1)
startTime = $1 " " $2" "$3
}
END{
endTime = $1 " " $2 " "$3 
printf "%16s %30s","","News Reader Summary\n\n"

printf "%-16s %-16s %-16s %-16s %-16s\n","","lonestar","runner","ringer","rings"
printf "%-16s %-16s %-16s %-16s %-16s\n","Articles:",loneAC,runnerAC,ringerAC,ringAC
printf "%-16s %-16s %-16s %-16s %-16s\n","Groups:",loneGC,runnerGC,ringerGC,ringGC
printf "%-16s %-16s %-16s %-16s %-16s\n","Cs2413:",utsaLone,utsaRunner,utsaRinger,utsaRing
printf "%-16s %-16s %-16s %-16s %-16s\n","Cs2413.d:",utsadLone,utsadRunner,utsadRinger,utsadRing
printf "%-16s %-16s %-16s %-16s %-16s\n","User Time:",timeLone,timeRunner,timeRinger,timeRing

print "Start Time = " startTime"\t\tEnd Time = " endTime

} 
