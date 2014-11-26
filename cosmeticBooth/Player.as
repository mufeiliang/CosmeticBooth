package{
	import com.greensock.TweenLite;
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class Player extends MovieClip{
		private var player:videoPlayer
		private var PlayerData:Array
		private var videoID:Array
		private var urldat:Array
		private var timerdel:int=2

		public function Player(UrlData:Array)
		{
			this.alpha=0
			urldat=UrlData
			PlayerData=[]
			addEventListener(Event.ADDED_TO_STAGE,tracking)
			
		}
		private function tracking(evt:Event):void{
		
//			trace(stage.width)
		}
		public function checkData(tempdat:Array):void
		{
			PlayerData=tempdat;
			trace(PlayerData)
			init();
		}
		public  function init():void
		{
			videoID=[]
			removevideo()
			addVideoPlayer()
			showThis(true)
		}
		private function addVideoPlayer():void{
			
			for(var i:int=0;i<PlayerData.length;i++){
			
			var tempvideo=new videoPlayer()
				addChild(tempvideo)
				tempvideo.name="video"+i
				videoID.push(tempvideo.name)
			var tempMin=5;
			var _width= stage.stageWidth/(PlayerData.length)-tempMin
				tempvideo.width=_width
			tempvideo.x= (i+0.5)*_width-stage.stageWidth
			tempvideo.y=stage.stageHeight/2

			tempvideo.playflv(urldat[int(PlayerData[i])])
			}
		}
		
		private function playering():void{
		
			
		 
		}
		private function removevideo():void{
			
			for(var i:int=0;i<videoID.length;i++){
				
				var temp=getChildByName("video"+i)
				temp.stopVideo()
	
			}
			videoID=[]
			
			
		}
		private function showThis(evt:Boolean):void{
		
			if(evt){
			TweenLite.to(this, timerdel, {alpha:1});
			}else{
			TweenLite.to(this, timerdel, {alpha:0});
			}
		
		}
	}
}