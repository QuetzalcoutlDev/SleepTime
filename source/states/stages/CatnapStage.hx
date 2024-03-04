package states.stages;

import states.stages.objects.*;
import objects.Character;

class CatnapStage extends BaseStage
{
	// If you're moving your stage from PlayState to a stage file,
	// you might have to rename some variables if they're missing, for example: camZooming -> game.camZooming

	var catnapHumo:BGSprite;
	var catnapHumoRojo:BGSprite;
	var catnapVignette:BGSprite;
	var catnapLuz:BGSprite;
	var black:BGSprite;
	var luz:BGSprite;

	override function create()
	{
		var bg:BGSprite = new BGSprite('catnapStageBG', -600, -400, 1.0, 1.0);
		add(bg);

		if(!ClientPrefs.data.lowQuality) {
			catnapHumo = new BGSprite("humo", -600, -400, 1.0, 1.0);
			catnapHumo.updateHitbox();
			add(catnapHumo);

			catnapLuz = new BGSprite("luz", -600, -400, 1.0, 1.0);
			catnapLuz.updateHitbox();
			add(catnapLuz);
	
		}
	}
	
	override function createPost()
	{
		game.camGame.visible = false;
	}

	// override function update(elapsed:Float)
	// {
	// 	// Code here
	// }

	
	// override function countdownTick(count:BaseStage.Countdown, num:Int)
	// {
	// 	switch(count)
	// 	{
	// 		case THREE: //num 0
	// 		case TWO: //num 1
	// 		case ONE: //num 2
	// 		case GO: //num 3
	// 		case START: //num 4
	// 	}
	// }

	// // Steps, Beats and Sections:
	// //    curStep, curDecStep
	// //    curBeat, curDecBeat
	// //    curSection

	override function stepHit()
	{
		if(curStep == 1){
			game.camGame.visible = true;
		}

		if(curStep == 1552){

			black = new BGSprite(null, -600, -400, 0, 0);
			black.makeGraphic(Std.int(FlxG.width * 2), Std.int(FlxG.height * 2), FlxColor.BLACK);
			black.visible = true;
			add(black);
		}

		if(curStep == 1568){
			black.visible = false;

			luz = new BGSprite("luzAmarilla", -600, -500, 1.0, 1.0);
			luz.alpha = 0.85;
			luz.blend = ADD;
			add(luz);
		}
	}
	
	// override function beatHit()
	// {
	// 	// Code here
	// }
	// override function sectionHit()
	// {
	// 	// Code here
	// }

	// // Substates for pausing/resuming tweens and timers
	// override function closeSubState()
	// {
	// 	if(paused)
	// 	{
	// 		//timer.active = true;
	// 		//tween.active = true;
	// 	}
	// }

	// override function openSubState(SubState:flixel.FlxSubState)
	// {
	// 	if(paused)
	// 	{
	// 		//timer.active = false;
	// 		//tween.active = false;
	// 	}
	// }

	// // For events
	// override function eventCalled(eventName:String, value1:String, value2:String, flValue1:Null<Float>, flValue2:Null<Float>, strumTime:Float)
	// {
	// 	switch(eventName)
	// 	{
	// 		case "My Event":
	// 	}
	// }
	// override function eventPushed(event:objects.Note.EventNote)
	// {
	// 	// used for preloading assets used on events that doesn't need different assets based on its values
	// 	switch(event.event)
	// 	{
	// 		case "My Event":
	// 			//precacheImage('myImage') //preloads images/myImage.png
	// 			//precacheSound('mySound') //preloads sounds/mySound.ogg
	// 			//precacheMusic('myMusic') //preloads music/myMusic.ogg
	// 	}
	// }
	// override function eventPushedUnique(event:objects.Note.EventNote)
	// {
	// 	// used for preloading assets used on events where its values affect what assets should be preloaded
	// 	switch(event.event)
	// 	{
	// 		case "My Event":
	// 			switch(event.value1)
	// 			{
	// 				// If value 1 is "blah blah", it will preload these assets:
	// 				case 'blah blah':
	// 					//precacheImage('myImageOne') //preloads images/myImageOne.png
	// 					//precacheSound('mySoundOne') //preloads sounds/mySoundOne.ogg
	// 					//precacheMusic('myMusicOne') //preloads music/myMusicOne.ogg

	// 				// If value 1 is "coolswag", it will preload these assets:
	// 				case 'coolswag':
	// 					//precacheImage('myImageTwo') //preloads images/myImageTwo.png
	// 					//precacheSound('mySoundTwo') //preloads sounds/mySoundTwo.ogg
	// 					//precacheMusic('myMusicTwo') //preloads music/myMusicTwo.ogg
					
	// 				// If value 1 is not "blah blah" or "coolswag", it will preload these assets:
	// 				default:
	// 					//precacheImage('myImageThree') //preloads images/myImageThree.png
	// 					//precacheSound('mySoundThree') //preloads sounds/mySoundThree.ogg
	// 					//precacheMusic('myMusicThree') //preloads music/myMusicThree.ogg
	// 			}
	// 	}
	// }
}