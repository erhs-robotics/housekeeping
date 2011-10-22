var d = new Date()
var time = d.getHours()
if (time<10)
	{
	document.write("<b>Good morning.  </b>");
	}
else if (time>=10 && time<16)
	{
	document.write("<b>Good day.  </b>");
	}
else
	{
	document.write("<b>Hello World!  </b>");
	}
document.write("<b>\nThe time is currently " + d + "</b>")