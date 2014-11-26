package 
{

	import flash.net.NetConnection;
	import flash.net.NetStream;
	import flash.media.Video;
	import flash.display.MovieClip;


	public class videoPlayer extends MovieClip
	{


		var fl_NC:NetConnection;
		var fl_NS:NetStream;

		public function videoPlayer()
		{
			// constructor code

			fl_NC = new NetConnection();
			fl_NC.connect(null);
			// 开始连接；只有使用 Flash Media Server 时才不使用 null。;

			fl_NS = new NetStream(fl_NC);
			fl_NS.client = {};

			video.attachNetStream(fl_NS);
		}
		public function playflv(evt:String):void
		{
			fl_NS.play(evt);
		}
		public function stopVideo():void
		{
			fl_NS.close()
		}

	}

}