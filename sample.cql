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

// Metadata fields, query parameters, and relative-time / named-parameter forms
#repo=?repo
| @timestamp > 24h
| in(UserName, values=["SYSTEM", "root"])
| timeChart(function=count(), span=1h)
| formatTime("%Y-%m-%d", field=@timestamp, timezone=Z)
