package {
	import flash.display.MovieClip;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	import flash.events.Event;

	public class Factory {
		
		private var down:Down;

		public function Factory() {
			this.down = new  Down();
			this.down.x = 0;
			this.down.y = -130;
			
			belt.addChild(this.down);
			
			stage.addEventListener(KeyboardEvent.KEY_DOWN, this.keyPressed);
			stage.addEventListener(KeyboardEvent.KEY_UP, this.keyReleased);
			stage.addEventListener(Event.ENTER_FRAME, this.enterFrame);
		}
		
		private function enterFrame(event:Event) {
			this.down.y += 5;
			if (this.down.y > 100) {
				this.down.y = -130;
			}
		}
		
		private function keyReleased(event:KeyboardEvent) {
		}

		private function keyPressed(event:KeyboardEvent) {
			switch (event.keyCode) {
				case Keyboard.LEFT:
					break;
				case Keyboard.UP:
					this.down.y -= 10;
					break;
				case Keyboard.RIGHT:
					break;
				case Keyboard.DOWN:
					this.down.y += 10;
					break;
				default:
					return;
			}
		}
	}
}
