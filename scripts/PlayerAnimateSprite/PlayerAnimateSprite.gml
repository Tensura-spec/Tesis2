function PlayerAnimateSprite() 
{
	
var _cardinalDirection = floor(direction/90);
var _totalFrames = sprite_get_number(sprite_index) / 4;
image_index = localFrame + (_cardinalDirection * _totalFrames);
localFrame += sprite_get_number(sprite_index) / FRAME_RATE;

if (localFrame >= _totalFrames)
{
	animationEnd = true;
	localFrame -= _totalFrames;
}else animationEnd = false;	
}