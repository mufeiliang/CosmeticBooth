package 
{

	import com.greensock.TweenLite;
	
	import flash.display.MovieClip;
	import flash.system.fscommand;

	public class view extends MovieClip
	{
		var url:String;
		var open:Boolean = true;
		var dataFLv:Array;
		var id:int = -1;
		var max:Number;
		var tempdat:Array;
		var videoUrl:Array;
		var setPlayer:Player;
		public function view()
		{
			
			fscommand("fullscreen", "true");
			init();
			videoUrl=[];
			setPlayer=new Player(dataFLv);
			addChild(setPlayer);
		
		}
		public function init():void
		{
			dataFLv = [];
			dataFLv.push("video/ABSOLUT VODKA-4人同乐-互动游戏桌样例.flv");
			dataFLv.push("video/ARTcapitals互动画廊.flv");
			dataFLv.push("video/Benz-梅赛德斯奔驰E系列推广互动.flv");
			dataFLv.push("video/Dunhill-登喜路多点触摸桌.flv");
			dataFLv.push("video/Dunhill-登喜路展品互动.flv");
			dataFLv.push("video/Ello-Sneak Peak-2013-5.flv");
			dataFLv.push("video/ShapeUpHouse-移动探测互动广告.flv");
			dataFLv.push("video/Swatch数码涂鸦互动墙.flv");
			user.visible = false;

		}
		public function playVideo(evt:String):void
		{
			url = evt;
			if (open)
			{
				logo.gotoAndPlay("end");
				open = ! open;
			}

		}

		private function showVideo():void
		{

		}

		private function stopVideo():void
		{
		
		}
		public function checkData(dat:Array):void
		{
			tempdat = [];
			for (var  i:int=1; i<dat.length; i++)
			{
				//trace(dat[0]);
				max = dat[0];
				//trace(Math.abs(dat[i] - max))
				if (Math.abs(dat[i] - max) < 200)
				{
					tempdat.push(i-1);
				}
			}
			//trace("判断对等:",change())
			
			if(!change())
			{
				setPlayer.checkData(tempdat);
				setPlayer.init();
				cloneDate()
				
				
			}
			
		}
		private function cloneDate():void{
			
			videoUrl=[]
                 for(var i:int=0;i<tempdat.length;i++){
					 videoUrl.push(tempdat[i])
				 
					 }			
			
			}
		private function findvideo()
		{	
			
		}
		
		private function change():Boolean
		{
			var tmp:Boolean=true
			if(tempdat.length!=videoUrl.length)
			{
				tmp=false
			}
			else 
			{	
				for(var i:int=0;i<tempdat.length;i++)
				{
					trace("dat:",tempdat[i],videoUrl[i])
					if(tempdat[i]!=videoUrl[i])
					{
						 tmp=false
						 break;	 
					}
				}
		   }
				
			return tmp

	}

	}
}