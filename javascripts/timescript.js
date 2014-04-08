var Days = new Array('Sunday','Monday','Tuesday','Wednesday',
	'Thursday','Friday','Saturday');
var Months = new Array('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August',
	'September', 'October', 'November', 'December');
var today = new Date();
var Year = takeYear(today);
var Month = Months[today.getMonth()];
var DayName = Days[today.getDay()];
var Day = leadingZero(today.getDate());

var Minutes = leadingZero(today.getMinutes());
var Seconds = leadingZero(today.getSeconds());

var Hours = today.getHours();
var ampm = "AM";
if (Hours == 0) 
   Hours = 12;
   
if (Hours > 11)
	ampm = "PM";
	
if (Hours > 12)
	Hours -= 12;
	
Hours = leadingZero(Hours);



function takeYear(theDate)
{
	x = theDate.getYear();
	var y = x % 100;
	y += (y < 38) ? 2000 : 1900;
	return y;
}

function leadingZero(nr)
{
	if (nr < 10) nr = "0" + nr;
	return nr;
}

function writetime()
{
 	document.write (Hours + ":" + Minutes + ":" + Seconds + " " + ampm ); 
}

function writedate()
{
 	document.write (Month + " " + Day + ", " + Year);
}

function writeday()
{
  	document.write (DayName);
}