﻿package Lib.Sound 
{
	import flash.media.Sound;
	import flash.media.SoundLoaderContext;
	import flash.net.URLRequest;
	
	/**
	 * ...
	 * @author ScanPlay Games
	 */
	public class SplatterSound extends Sound
	{
		public var Name:String = "SplatterSound";
		
		public function SplatterSound(stream:URLRequest = null, context:SoundLoaderContext = null) 
		{
			super(stream, context);
			
		}
		
	}

}