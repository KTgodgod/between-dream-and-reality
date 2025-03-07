global.debug = true;

dbgview = dbg_view("Debug View", true, 20, 160, 300);

dbg_section("view info");
show_hitbox = true;
show_name = true;
show_target = true;
dbg_checkbox(ref_create(self, "show_hitbox"));
dbg_checkbox(ref_create(self, "show_name"));
dbg_checkbox(ref_create(self, "show_target"));

check_bbox_list = [];
var _elem = layer_get_all_elements("interact_object");
for (var i = 0; i < array_length(_elem); ++i) {
	if (layer_get_element_type(_elem[i]) == layerelementtype_instance)
     {
         var _ins = layer_instance_get_instance(_elem[i]);
		 array_push(check_bbox_list, _ins);
     }
}


dbg_section("event progress");

var _prog = global.progress;
for (var i = 0; i < array_length(_prog); ++i) {
	dbg_checkbox(ref_create(_prog[i], "state"), _prog[i].name);
	dbg_same_line();
	dbg_text(_prog[i].text);
}

for (var i = 0; i < array_length(_prog); ++i) {
	if _prog[i].name = "event 1" {
		_prog[i].state = true;
	}
}
_prog[1].state = true;


show_debug_overlay(global.debug);

text = [
"F1 to toggle debug view",
"esc to open esc menu"
];