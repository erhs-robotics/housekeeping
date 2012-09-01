var d=new Date();
var theDay=d.getDay();
document.write("<br><b>It is currently ")
switch (theDay)
{
case 0:
  document.write("Sunday.  The weekend is almost over.")
  break;
case 1:
  document.write("Monday.  Mondays suck.");
  break;
case 2:
  document.write("Tuesday.  At least it's not Monday");
  break;
case 3:
  document.write("Wednesday.  Halfway through the week");
  break;
case 4:
  document.write("Thursday.  Weekend is almost here.");
  break;
case 5:
  document.write("Friday.  FINALLY!!!");
  break;
case 6:
  document.write("Saturday.  YAY!");
  break;
default:
  document.write("Error:  Can't determine day of the week");
  break;
}
