package com.trebuchet.controllers
{
	import com.core.interfaces.IEvent;
	import com.core.mvc.ApplicationContext;
	import com.core.mvc.Controller;
	import com.core.util.GraphicsUtils;
	import com.physics.PhysicsContext;
	import com.trebuchet.events.GameEvent;
	import com.trebuchet.helpers.GameEditorBuilder;
	import com.trebuchet.views.EditorView;
	import com.trebuchet.views.GameViewBase;

	public class GameEditorViewController extends Controller
	{
		private var _view:EditorView;
		private var _gameEditorBuilder:GameEditorBuilder;
		private var _physicsContext:PhysicsContext;
		
		public function GameEditorViewController(_context:ApplicationContext)
		{
			super(_context);
			this._view = _viewNavigator.getViewByName(GameViewBase.EDITOR_VIEW) as EditorView;
			//this._physicsContext = new PhysicsContext(this._view, GameConfig.GAME_BOUNDS);
			//this._gameEditorBuilder = new GameEditorBuilder(_view,_physicsContext);
			//GraphicsUtils.drawGrid(_context.canvas, 50,50);
			GraphicsUtils.drawGrid(_view, 50,50);
			
				//_view.drawLine(new Point(100,100), new Point(400 ,700));
			// enable debug mode
			//_physicsContext.debug(true); 
			//_physicsContext.world.enableGrid(true);
		}
		
		override public function update(e:IEvent):void
		{
			switch(e.type)
			{
				case GameEvent.START_EDITOR_EVENT:
					loadEditor();
					break;
				default:
					break;
			}
		}
		
		private function loadEditor():void
		{
			//_physicsContext.start();
		}
	}
}