if (interactable && obj_player_o.state == player_state.normal && collision_circle(x,y,radius,obj_player_o,false,true)) {
		check_icon.visible = true;
		ready_to_interact = true;
}
else {
		check_icon.visible = false;
		ready_to_interact = false;
	}
	
if (!collision_circle(x,y,radius,obj_player_o,false,false)) {
	start_dialog = false;
}