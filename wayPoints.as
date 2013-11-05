package src.opdrachten.waypoints 
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import src.wiskunde.Punt;
	import src.wiskunde.Wvector;
	import flash.events.Event;
	/**
	 * ...
	 * @author Rachel
	 */
	public class wayPoints extends MovieClip
	{
		public var bal:Punt = new Punt();
		public var level1:level = new level();
		public var vector:Wvector = new Wvector();
		public var pikas:Array = [];
		public var pika:MovieClip = new Pika();
		public var aantal:int = 5;
		public var hoek:Number = 0;
		public var Turret:MovieClip = new turret();
		
		public function wayPoints() 
		{
			//bal.tekenPunt(10, 0xff0000);
			
			addChild(level1);
			level1.addChild(pika);
			
			pika.x = level1.w1.x;
			pika.y = level1.w1.y;
			
			Turret.x = stage.stageWidth / 2;
			Turret.y = stage.stageHeight / 2;
			addChild(Turret);
			
			//for (var i:int = 0; i < aantal; i++) 
			//{
				//
				//
				//pikas.push(pika);
				//pikas[i].x = i * pika.width;
				//pikas[i].y = 40;
				//
				//addChild(pikas[i]);
			//}
			
			
			this.addEventListener(Event.ENTER_FRAME, loop);
			
		}
		
		private function loop(e:Event):void 
		{
			vector.dx = level1.w2.x - pika.x;
			vector.dy = level1.w2.y - pika.y;
			if (vector.r < 2.5)
			{
				removeEventListener(Event.ENTER_FRAME, loop);
				this.addEventListener(Event.ENTER_FRAME, loop2);
			}
			vector.r = 5;
			pika.x += vector.dx;
			pika.y += vector.dy;
			
			
			hoek = Math.atan2(vector.dy, vector.dx);
			pika.rotation = hoek * 180 / Math.PI;
			
			pika.scaleX = 1;
			
			var mdx:Number = pika.x - Turret.x;
		   var mdy:Number = pika.y - Turret.y;
		   var rad:Number = Math.atan2 (mdx, mdy);
		   var deg:Number = rad * -180 / Math.PI;
		   Turret.rotation = deg;
		}
		
		private function loop2(e:Event):void 
		{
			vector.dx = level1.w3.x - pika.x;
			vector.dy = level1.w3.y - pika.y;
			if (vector.r < 2.5)
			{
				removeEventListener(Event.ENTER_FRAME, loop2);
				this.addEventListener(Event.ENTER_FRAME, loop3);
			}
			vector.r = 5;
			pika.x += vector.dx;
			pika.y += vector.dy;
			
			hoek = Math.atan2(vector.dy, vector.dx);
			pika.rotation = hoek * 60 / Math.PI;
			
		   var mdx:Number = pika.x - Turret.x;
		   var mdy:Number = pika.y - Turret.y;
		   var rad:Number = Math.atan2 (mdx, mdy);
		   var deg:Number = rad * -180 / Math.PI;
		   Turret.rotation = deg;
			
			
		}
		
		private function loop3(e:Event):void 
		{
			vector.dx = level1.w4.x - pika.x;
			vector.dy = level1.w4.y - pika.y;
			if (vector.r < 2.5)
			{
				removeEventListener(Event.ENTER_FRAME, loop3);
				this.addEventListener(Event.ENTER_FRAME, loop4);
			}
			vector.r = 5;
			pika.x += vector.dx;
			pika.y += vector.dy;
			
			hoek = Math.atan2(vector.dy, vector.dx);
			pika.rotation = hoek * 90 / Math.PI;
			
			var mdx:Number = pika.x - Turret.x;
		   var mdy:Number = pika.y - Turret.y;
		   var rad:Number = Math.atan2 (mdx, mdy);
		   var deg:Number = rad * -180 / Math.PI;
		   Turret.rotation = deg;
		}
		
		private function loop4(e:Event):void 
		{
			vector.dx = level1.w1.x - pika.x;
			vector.dy = level1.w1.y - pika.y;
			if (vector.r < 2.5)
			{
				removeEventListener(Event.ENTER_FRAME, loop4);
				this.addEventListener(Event.ENTER_FRAME, loop);
			}
			vector.r = 5;
			pika.x += vector.dx;
			pika.y += vector.dy;
			
			hoek = Math.atan2(vector.dy, vector.dx);
			pika.rotation = hoek / 180 * Math.PI;
			
			pika.scaleX = -1;
			
			var mdx:Number = pika.x - Turret.x;
		 	var mdy:Number = pika.y - Turret.y;
		   var rad:Number = Math.atan2 (mdx, mdy);
		   var deg:Number = rad * -180 / Math.PI;
		   Turret.rotation = deg;
		}
		
		
	}

}