﻿package  {	import flash.display.MovieClip;		public class DocumentClass extends MovieClip {		private var factory:Factory;				public function DocumentClass() {		}		public function startFactory() {			stage.focus = stage;						this.factory = new Factory(this);		}	}	}