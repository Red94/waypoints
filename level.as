package src.opdrachten.waypoints 
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import src.wiskunde.Punt;
	/**
	 * ...
	 * @author Rachel
	 */
	public class level extends Sprite
	{
		public var w1:MovieClip = new Pokeball();
		public var w2:MovieClip = new Pokeball();
		public var w3:MovieClip = new Pokeball();
		public var w4:MovieClip = new Pokeball();
		
		
		public function level() 
		{
			w1.x = 200;
			w1.y = 100;
			addChild(w1);
			
			w2.x = 450;
			w2.y = 50;
			addChild(w2);
			
			w3.x = 450;
			w3.y = 500;
			addChild(w3);
			
			w4.x = 750;
			w4.y = 300;
			addChild(w4);
		}
		
	}

}