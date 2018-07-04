BEGIN {
	FS="[=]|[ ]|[/]";
	latest_ts=current_time;
	ip="";
	high_ping="";
	dropped="";
}
{
	if(NF == 12 && $4 == "from")
	{
		latest_ts=$1;
		print $1"/"$11 >> ip".times";
	} else if (NF == 13)
	{
		latest_ts=$1;
		print $1"/"$12 >> ip".times";
	} else if (NF == 12 && $4 != "from")
	{
		if($10 >= 300.0 || $9 >= 50.0 || $8 >= 30.0)
		{
			high_ping = "HIGH_PING";
		} else
		{
			high_ping = "";
		}
		print latest_ts"/"$8"/"$9"/"$10"/"high_ping >> ip".summary";
	} else if (NF == 10)
	{
		if($1 == $4)
		{
			dropped="";
		} else
		{
			dropped="DROPPED";
		}
		print latest_ts"/"$1"/"$4"/"dropped >> ip".dropped";
	} else if (NF == 7)
	{
		ip=$2;
	}
}

