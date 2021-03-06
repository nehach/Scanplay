package physics
{
	import Box2D.Collision.b2Bound;
	import Box2D.Collision.Shapes.b2PolygonShape;
	import Box2D.Dynamics.b2BodyDef;
	import Box2D.Dynamics.b2FixtureDef;
	import flash.display.Bitmap;
	import flash.display.GradientType;
	import flash.display.Graphics;
	import flash.display.SpreadMethod;
	import flash.display.Sprite;
	import Box2D.Dynamics.b2Body;
	import Box2D.Common.Math.b2Vec2;
	import flash.events.MouseEvent;
	import flash.geom.Matrix;
	import objects.RedditPost;
	import ui.PostDetails;
	/**
	 * ...
	 * @author ScanPlayGames
	 */
	public class Block2D extends PhysicsObject
	{
		//stuff for making my block
		private  var boxDef:b2PolygonShape;
		private  var bodyDef:b2BodyDef;
		private  var fixtureDef:b2FixtureDef;
		
		public function Block2D( _x:Number, _y:Number, _width:Number = 50, _height:Number = 50) 
		{
			super();		
			buttonMode = true;
			
			//create my block
			boxDef     = new b2PolygonShape();
			bodyDef    = new b2BodyDef();
			fixtureDef = new b2FixtureDef();

			//set the box information
			boxDef.SetAsBox((_width / 2) /PhysicsWorld.GetScale(), (_height / 2) /PhysicsWorld.GetScale());
			bodyDef.type = b2Body.b2_dynamicBody;

			fixtureDef.shape       = boxDef;
			fixtureDef.density     = .05;
			fixtureDef.friction    = 0.3;
			fixtureDef.restitution = 0.1;
			

			//create the body
			body = PhysicsWorld.CreateBody(bodyDef);
			body.CreateFixture(fixtureDef);
			body.SetPosition(new b2Vec2(_x / PhysicsWorld.GetScale(), _y / PhysicsWorld.GetScale()));
		
			//set the starting position
			x = GetBodyX();
			y = GetBodyY();
			rotation = body.GetAngle() * ( 180 / Math.PI);	
			
			PhysicsWorld.Subscribe(this);
		}		
		
		public override function Update():void
		{			
			x =GetBodyX();
			y =GetBodyY();
			rotation = body.GetAngle() * ( 180 / Math.PI);
			
		}
	}
}