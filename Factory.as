﻿package {	import flash.display.MovieClip;	import flash.events.KeyboardEvent;	public class Factory extends MovieClip {		public function Factory() {			stage.addEventListener(KeyboardEvent.KEY_DOWN, this.keyPressed);		}		private function keyPressed(event:KeyboardEvent) {			switch (event.keyCode) {				case 37 :					trace('LEFT');					break;				case 38 :					trace('UP');					break;				case 39 :					trace('RIGHT');					break;				case 40 :					trace('DOWN');					break;			}		}	}}