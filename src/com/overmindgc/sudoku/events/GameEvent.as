package com.overmindgc.sudoku.events
{
	import flash.events.Event;
	
	public class GameEvent extends Event
	{
		public static const startGame:String = "startGame";
		
		public static const pauseGame:String = "pauseGame";
		
		public static const completeGame:String = "completeGame";
		
		public static const restartGame:String = "restartGame";
		
		public static const backToGameList:String = "backToGameList";
		
		/**打开选择数字面板*/
		public static const openSelectNum:String = "openSelectNum";
		/**选择完数字处理*/
		public static const selectNum:String = "selectNum";
		
		
		public var data:*;
		
		public function GameEvent(type:String, data:*=null, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.data = data;
		}
		
		override public function clone():Event
		{
			return new GameEvent(type,data,bubbles,cancelable);
		}
	}
}