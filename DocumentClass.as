﻿package  {
	
	import flash.display.MovieClip;
	
	
	public class DocumentClass extends MovieClip {
		public function DocumentClass() {
			// constructor code
		}
		
		public function gotoFactory() {
			trace(this.scenes);
			gotoAndPlay('start', 'Factory');
			trace(this.name);
		}
	}
	
}

