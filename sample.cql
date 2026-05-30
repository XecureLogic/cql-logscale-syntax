// Sample CQL for verifying highlighting
#event_simpleName=ProcessRollup2
| ImageFileName=/powershell\.exe/i
| CommandLine=/encodedcommand/i AND NOT UserName="SYSTEM"
| fileName := lower(ImageFileName)
| case {
    FileName=/net1?\.exe/ | weight := "10" ;
    *                     | weight := "1"
  }
| groupBy([ComputerName], function=count(as=hits))
| sort(hits, order=desc, limit=20)
