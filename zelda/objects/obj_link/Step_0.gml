 /// @description Insert description here
// You can write your code in this editor
#region movimento
//definindo teclas

nenhumatecla = keyboard_check(vk_nokey) 

direita= keyboard_check(ord("D")) 


esquerda= keyboard_check(ord("A"))


cima = keyboard_check(ord("W")) 


baixo= keyboard_check(ord("S"))



direitaatr= keyboard_check(ord("D")) 


esquerdaatr= keyboard_check(ord("A"))


cimaatr = keyboard_check(ord("W")) 


baixoatr= keyboard_check(ord("S"))




atirar= keyboard_check_pressed(ord("E"))
//se apertar teclas


if nenhumatecla{
	
}


if direita and !place_meeting(x+spd,y,obj_colision) and !place_meeting(x+spd,y,obj_gate){
	x+=spd

}


if esquerda and !place_meeting(x-spd,y,obj_colision) and !place_meeting(x-spd,y,obj_gate){

	x-=spd
}


if cima and !place_meeting(x,y-spd,obj_colision) and !place_meeting(x,y-spd,obj_gate){

	y-=spd
}



if baixo and !place_meeting(x,y+spd,obj_colision) and !place_meeting(x,y+spd,obj_gate){

	y+=spd
}
if keyboard_check(vk_nokey) and atirar{
	drcboomerang="drcbaixo"
}




#endregion



#region ataque
if instance_exists(obj_boomerang){
atirar=noone	
	
}else{
	atirar= keyboard_check_pressed(ord("E"))
}

if direitaatr and atirar{
	x+=spd
	drcboomerang="drcdireita"
}


if esquerdaatr and atirar{

	drcboomerang="drcesquerda"
}


if cimaatr and atirar{

	drcboomerang="drccima"
}



if baixoatr and atirar{

	drcboomerang="drcbaixo"
}
if keyboard_check(vk_nokey) and atirar{
	drcboomerang="drcbaixo"
}




if atirar and instance_number(obj_boomerang)<1{
	instance_create_depth(x,y,0,obj_boomerang)

	if obj_boomerang.voltando==false{
	alarm[0]=120
	}
	}

#endregion



#region morrendo
if place_meeting(x,y,obj_enemy) and ptomardano==true{
	life--;
	tomandodando="tomoudano"
	ptomardano=false
	alarm[1]=60
}

 
if life <=0{
	stado="morto"
}
/*
if tomandodando=="tomoudano"{
sprite_index=spr_link_demaged

}else if tomandodando=="nada"{
sprite_index=spr_link	
}
else if tomandodando=="vidabaixa"{
sprite_index=spr_link_lowlife	
}


if tomandodando!="tomoudano" and life>=2{
	tomandodando="nada"
}else if life==1{
	tomandodando="vidabaixa"
}


if tomandodando==false{
sprite_index=spr_link	
}
if tomandodando==true and image_index>=23 and tomandodando=="tomoudano"{
if life>=2{
tomandodando="nada"	
}else if life==1 {
	tomandodando="vidabaixa"
	
}

}
*/

if stado == "morto"{
instance_destroy()	
}
#endregion