/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
var hitenemy = instance_place(x + hsp, y +vsp, obj_skeleton)

if(hitenemy && !invincible)
{

	 if(hitenemy)
	 {
		if (bbox_bottom > hitenemy.bbox_top)
		{

			vsp = -jump_speed * 0.5;
			if (x < hitenemy.x)
			{
			hsp = 20;
			}
		
		}
	 invincible = true;
	 alarm[0] = 30;
  }
}
hp -=15;

























