﻿package Items{	import Parts.*;	public class TvItem extends Item {		public function TvItem() {			super('tv', [			new Down(),			new Down(),			new Up(),			new Up(),			new Left(),			new Right()]);		}	}}