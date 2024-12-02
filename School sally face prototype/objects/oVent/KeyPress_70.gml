if (point_in_circle (oPlayer.x,oPlayer.y,x,y,64)) && global.ScrewDriver = true
{	
	with(oPlayer)
	{
		if(hascontrol)
		{
			hascontrol = false;
			SlideTransition(TRANS_MODE.GOTO,other.target);
		}
	}
}


