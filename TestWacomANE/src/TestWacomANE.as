package
{
	import flash.display.Sprite;
	import flash.events.Event;

	import xd.touch.WacomANE;
	
	public class TestWacomANE extends Sprite
	{
		private var _wacom:WacomANE;
		
		public function TestWacomANE()
		{
			_wacom = new WacomANE;
			_wacom.addEventListener("aMousefl",onFoo);
			}
		private function onFoo(e:Event):void {
			trace("onFoo",e.type);
			
			var pen:* = _wacom.penData;
			
			for(var key:String in pen) {
				trace(key, pen[key]);
			}
			trace(pen.onAirDesktop);
			
//			var bytes:ByteArray = _wacom.penData();
//			bytes.endian = Endian.LITTLE_ENDIAN;
//			trace(bytes.length);
//			bytes.position = 0;
//			bytes.readInt();			
//			bytes.readInt();
//			bytes.readInt();
//			var where:Point= new Point(bytes.readDouble(), bytes.readDouble());
//			trace(where);
//			trace(bytes.length);
			
		}
	}
}