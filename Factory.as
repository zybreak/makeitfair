﻿package {	import flash.events.KeyboardEvent;	import flash.ui.Keyboard;	import flash.events.Event;	import flash.display.Stage;	import flash.display.MovieClip;	import flash.geom.ColorTransform;	import flash.utils.getQualifiedClassName;	import flash.events.MouseEvent;	import Items.*;	public class Factory {		private var documentClass:DocumentClass;		private var you:MovieClip;		private var pipeline:Pipeline;		private var points:Number = 0;		public function Factory(documentClass:DocumentClass) {			this.documentClass = documentClass;			this.you = documentClass.you;			this.pipeline = documentClass.pipeline;			this.pipeline.addItems([				new Items.CardItem,				new Items.TvItem,				new Items.CameraItem,				new Items.PdaItem,				new Items.GamepadItem]);			this.you.stop();						documentClass.stage.addEventListener(KeyboardEvent.KEY_DOWN, this.keyPressed);			documentClass.stage.addEventListener(KeyboardEvent.KEY_UP, this.keyReleased);			documentClass.stage.addEventListener(Event.ENTER_FRAME, this.pipeline.process);						pipeline.addEventListener(PipelineEvent.PipelineHit, this.hit);			pipeline.addEventListener(PipelineEvent.PipelineMiss, this.miss);		}				private function hit(event:PipelineEvent) {			this.points += 10;			this.documentClass.points.text = this.points.toString();		}				private function miss(event:PipelineEvent) {			this.points /= 2;			this.documentClass.points.text = this.points.toString();		}		private function keyReleased(event:KeyboardEvent) {			var color:ColorTransform = new ColorTransform();			color.redOffset = 0;			color.greenOffset = 0;			color.blueOffset = 0;			this.documentClass.control_left.transform.colorTransform = 			this.documentClass.control_up.transform.colorTransform = 			this.documentClass.control_right.transform.colorTransform = 			this.documentClass.control_down.transform.colorTransform = color;		}		private function keyPressed(event:KeyboardEvent) {			var color:ColorTransform = new ColorTransform();			color.redOffset = 64;			color.greenOffset = 64;			color.blueOffset = 64;			var control:Part;			switch (event.keyCode) {				case Keyboard.LEFT :					control = this.documentClass.control_left;					break;				case Keyboard.UP :					control = this.documentClass.control_up;					break;				case Keyboard.RIGHT :					control = this.documentClass.control_right;					break;				case Keyboard.DOWN :					control = this.documentClass.control_down;					break;				default :					return;			}			control.transform.colorTransform = color;			this.pipeline.produced(event.keyCode);			this.you.gotoAndStop(this.you.currentFrame+5);			if (this.you.currentFrame >= this.you.totalFrames) {				this.you.gotoAndStop(1);			}		}	}}