﻿package Items{	import Parts.*;	public class GamepadItem extends Item {		public function GamepadItem() {			super('gamepad', [			new Up(),			new Left(),			new Up(),			new Down(),			new Left(),			new Right(),			new Up]);		}	}}