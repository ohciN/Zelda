/// @description Insert description here
// You can write your code in this editor
image_angle+=10
image_xscale=3
image_yscale=3



if voltando==true{
mp_potential_step(obj_link.x,obj_link.y,spdboomerang,false)	
}
if place_meeting(x,y,obj_link) and voltando==true{
instance_destroy()	
}

if obj_link.drcboomerang=="drcbaixo" and voltando==false{
y+=spdboomerang
}

else if obj_link.drcboomerang=="drccima" and voltando==false{
y-=spdboomerang
}

else if obj_link.drcboomerang=="drcesquerda" and voltando==false{
x-=spdboomerang
}

else if obj_link.drcboomerang=="drcdireita" and voltando==false{
x+=spdboomerang
}

if place_meeting(x,y,obj_colision) or place_meeting(x,y,obj_gate){
voltando=true	
}


