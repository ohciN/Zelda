/// @description Insert description here
// You can write your code in this editor
//criando variaveis
#region variaveis
#region lados
var escolherAlldc = choose("direita","esquerda","baixo","cima")
var escolherDirdc = choose("esquerda","baixo","cima")
var escolherEsqdc = choose("direita","baixo","cima")
var escolherBaidc = choose("direita","esquerda","cima")
var escolherCimdc = choose("direita","esquerda","baixo")
#endregion

#region cantos
//cantos
 escolherInfdirdc= choose ("esquerda", "cima")
 escolherInfesqdc= choose ("direita", "cima")
 escolherSupesqdc= choose ("baixo","direita")
 escolherSupdirdc= choose ("baixo","esquerda")
#endregion



escolher1= escolherAlldc
#endregion







	#region movimentação
#region Se nn tiver encostando encostando = true

		#region lados
if !place_meeting(x+spdenemyone,y,obj_colision){
			
			encostandodir=true
			
		}
		
		if !place_meeting(x-spdenemyone,y,obj_colision){
			
			encostandoesq=true
			
		}
		
		if !place_meeting(x,y-spdenemyone,obj_colision){
			
			encostandocim=true
			
		}
		
		if !place_meeting(x,y+spdenemyone,obj_colision){
			
			encostandobai=true
		}
		#endregion
		#region Cantos
		if !place_meeting(x,y+spdenemyone,obj_colision) and !place_meeting(x+spdenemyone,y,obj_colision){
			
			baidir=true
		}
		
		if !place_meeting(x,y-spdenemyone,obj_colision) and !place_meeting(x+spdenemyone,y,obj_colision){
			
			cimadir=true
		}
		
		if !place_meeting(x,y+spdenemyone,obj_colision) and !place_meeting(x-spdenemyone,y,obj_colision){
			
			baiesq=true
		}
		
		if !place_meeting(x,y-spdenemyone,obj_colision) and !place_meeting(x-spdenemyone,y,obj_colision){
			
			cimaesq=true
		}
		#endregion
#endregion


#region se bater na parede nn ir pra direção da parede

		#region Lados
if place_meeting(x+spdenemyone,y,obj_colision) and encostandodir==true{
			escolher1= escolherDirdc
			escolhendo=true
			encostandodir=false
			
		}
		
		if place_meeting(x-spdenemyone,y,obj_colision) and encostandoesq==true{
			escolher1= escolherEsqdc
			escolhendo=true
			encostandoesq=false
			
		}
		
		if place_meeting(x,y-spdenemyone,obj_colision) and encostandocim==true{
			escolher1= escolherCimdc
			escolhendo=true
			encostandocim=false
			
		}
		
		if place_meeting(x,y+spdenemyone,obj_colision) and encostandobai==true{
			escolher1=escolherBaidc
			escolhendo=true
			encostandobai=false
		}
		
		#endregion
		#region Cantos
		if place_meeting(x,y-spdenemyone,obj_colision) and place_meeting(x-spdenemyone,y,obj_colision) and cimaesq==true{
			escolher1=escolherSupesqdc
			escolhendo=true
			cimaesq=false
		}
		
		if place_meeting(x,y+spdenemyone,obj_colision) and place_meeting(x-spdenemyone,y,obj_colision) and baiesq==true{
			escolher1=escolherInfesqdc
			escolhendo=true
			baiesq=false
		}
		
		if place_meeting(x,y+spdenemyone,obj_colision) and place_meeting(x+spdenemyone,y,obj_colision) and baidir==true{
			escolher1=escolherInfdirdc
			escolhendo=true
			baidir=false
		}
		
		if place_meeting(x,y-spdenemyone,obj_colision) and place_meeting(x+spdenemyone,y,obj_colision) and cimadir==true{
			escolher1=escolherSupdirdc
			escolhendo=true
			cimadir=false
		}

#endregion
#endregion


#region programando o andar

if escolhendo == true{
	
		
direcaoenemy = escolher1
		
		
		
		
		
escolhendo = false
	//depois de um tempor mudar de posição
	randomize()
alarm[0]=60*irandom_range(2, 3)
}
#endregion





#region definindo a velocidade e a direção 

if direcaoenemy == "direita"{
x+=spdenemyone	
}
if direcaoenemy ==  "esquerda"{
x-=spdenemyone	
}
if direcaoenemy ==  "baixo"{
y+=spdenemyone	
}
if direcaoenemy ==  "cima"{
y-=spdenemyone	
}


#endregion
#endregion






