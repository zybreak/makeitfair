﻿package Items{	import Parts.*;	public class PdaItem extends Item {		public function PdaItem() {			super('pda', [			new Down(),			new Down(),			new Up(),			new Up(),			new Left(),			new Right()]);		}	}}