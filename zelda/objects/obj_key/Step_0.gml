/// @description Insert description here
// You can write your code in this editor
depth=1000
image_xscale=3
image_yscale=3
if !instance_exists(obj_enemy){
	usarkey=true



}

if usarkey==true{
depth=-1000
if place_meeting(x,y,obj_link){
obj_link.comkey=true
instance_destroy()
}

}


