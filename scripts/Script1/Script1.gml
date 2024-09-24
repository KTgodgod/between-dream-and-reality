function TransitionPlaceSequence(to_x,to_y,_type) {
	if (layer_exists("transition")) layer_destroy("transition")
	var top_layer = layer_create(-9999,"transition")
	layer_sequence_create(top_layer,to_x,to_y,_type);
}