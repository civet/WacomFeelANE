package xd.touch
{
	import flash.display.Screen;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageDisplayState;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.geom.Rectangle;
	
	import xd.util.ScreenUtils;
	
	public class DeviceManagerClient extends Sprite
	{
		protected var _devMgr:DeviceManager = DeviceManager.instance;
		
		
		
		public function DeviceManagerClient()
		{
			addEventListener(Event.ADDED_TO_STAGE, privateInit);
		}

		private function privateInit(e:Event):void {
			removeEventListener(Event.ADDED_TO_STAGE, privateInit);
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			DeviceManager.instance.registerWindow(stage.nativeWindow);
			// positioning the window appropriately for the wacom + resizing
			
			var s:Screen = ScreenUtils.find(1920,1200);
			if(s) {
				DeviceManager.instance.bounds = s.bounds;
			}
			
			
			var b:Rectangle = DeviceManager.instance.bounds;
			if(b) {
				stage.nativeWindow.bounds = b; 
				if(DeviceManager.instance.fullscreen)
					stage.displayState = StageDisplayState.FULL_SCREEN_INTERACTIVE;
			}
			
				
				clientInit(e);
			stage.nativeWindow.visible = true;
		}
		protected function clientInit(e:Event):void {
			
		}
		
	}
}