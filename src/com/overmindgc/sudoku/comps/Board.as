package com.overmindgc.sudoku.comps
{
	import com.overmindgc.sudoku.utils.Consts;
	
	import spark.components.Group;
	
	public class Board extends Group
	{
		public function Board()
		{
			super();
			//画大面板边框
			this.graphics.lineStyle(3,Consts.boardColor,1);
			this.graphics.drawRect(0,0,Consts.boardWH,Consts.boardWH);
			
			//画栅格
			this.graphics.lineStyle(1,Consts.boardColor,1);
			for(var hi:int=0; hi<9; hi++)
			{
				this.graphics.moveTo(0,Consts.squareWH * (hi + 1));
				this.graphics.lineTo(Consts.boardWH,Consts.squareWH * (hi + 1));
			}
			for(var vi:int=0; vi<9; vi++)
			{
				this.graphics.moveTo(Consts.squareWH * (vi + 1),0);
				this.graphics.lineTo(Consts.squareWH * (vi + 1),Consts.boardWH);
			}
			
			//画分组框
			this.graphics.lineStyle(3,Consts.boardColor,1);
			var groupWidth:Number = Consts.boardWH / 3;
			for(var gi:int=0; gi<3; gi++)
			{
				for(var gj:int=0; gj<3; gj++)
				{
					this.graphics.drawRect(groupWidth*gj,groupWidth*gi,Consts.boardWH / 3,Consts.boardWH / 3);
				}
			}
		}
	}
}