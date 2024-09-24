visible = false;
ready = false;
start_dialog = false;
timer = 0;

text= "";

dialog_list=["It was all your fault.",
"You belong to here.",
"Rotting, decaying, just like me.",
"I knew it.",
"Cause I am you.",
"And you...",
"...are me.",
" "
];
dialog_line = 0;
dialog_line_total = array_length(dialog_list) - 1;

dialog_list_extra=[
"...",
"...",
" "
];
dialog_line_extra = 0;
dialog_line_extra_total = array_length(dialog_list_extra) - 1;
extra_line = false;
dialog_end = false;