// SYNTAX TEST "source.cql"

// a line comment
// <- comment.line.double-slash.cql

#event_simpleName=ProcessRollup2
// <- entity.name.tag.cql

@timestamp
// <- variable.language.cql

?loglevels
// <- variable.parameter.query.cql

true
// <- constant.language.cql

24h
// <- constant.numeric.time.cql

42
// <- constant.numeric.cql

count(x)
// <- entity.name.function.cql

case
// <- keyword.control.cql

"a string"
// <- string.quoted.double.cql

/powershell/i
// <- string.regexp.cql

UserName="SYSTEM"
// <- variable.other.field.cql

AND
// <- keyword.control.logical.cql

order=desc
// <- variable.parameter.cql

:= x
// <- keyword.operator.assignment.cql

| filter
// <- keyword.control.pipe.cql

groupBy([ComputerName])
//       ^^^^^^^^^^^^ variable.other.field.cql

timeChart(span=24h)
//             ^^^ constant.numeric.time.cql

Vendor.properties.ids[0]="x"
// <- variable.other.field.cql

groupBy([#event.outcome, host])
//       ^^^^^^^^^^^^^^ entity.name.tag.cql
//                       ^^^^ variable.other.field.cql
