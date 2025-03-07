function num_approach(_from, _to, _by_amount) {
	// Moves "a" towards "b" by "amount" and returns the result
	// Nice bcause it will not overshoot "b", and works in both directions
	// Examples:
	//      speed = Approach(speed, max_speed, acceleration);
	//      hp = Approach(hp, 0, damage_amount);
	//      hp = Approach(hp, max_hp, heal_amount);
	//      x = Approach(x, target_x, move_speed);
	//      y = Approach(y, target_y, move_speed);
 
	if (_from < _to)
	{
	    _from += _by_amount;
	    if (_from > _to)
	        return _to;
	}
	else
	{
	    _from -= _by_amount;
	    if (_from < _to)
	        return _to;
	}
	return _from;


}


function map_value(_value, _current_lower_bound, _current_upper_bound, _desired_lowered_bound, _desired_upper_bound) {
    return (((_value - _current_lower_bound) / (_current_upper_bound - _current_lower_bound)) * (_desired_upper_bound - _desired_lowered_bound)) + _desired_lowered_bound;
}

function array_join(_array1, _array2) {
	for (var i = 0; i < array_length(_array2); ++i) {
		array_push(_array1, _array2[i]);
	}
	return _array1;
}

function smooth_image_angle(_smoothness) {
	var mouse_location_x = mouse_x;
	var mouse_location_y = mouse_y;
	var pd = point_direction(x, y, mouse_location_x, mouse_location_y);
	var dd = angle_difference(image_angle, pd);
	image_angle -=dd/_smoothness;
}
