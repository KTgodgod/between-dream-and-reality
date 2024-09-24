visible = false;
ready = false;
start_dialog = false;
timer = 0;

text= "";

dialog_list=["You can’t get rid of me.",
"It’s already too late.",
"That was your choice.",
"You knew it already.",
"You can never escape from me.",
"Just like how you can’t escape from them.",
"Just like how they can’t escape from you.",
"It is same for you, and them...",
"...there is no easy way out.",
" "
]
dialog_line = 0;
dialog_line_total=array_length(dialog_list) - 1;

dialog_list_extra=[
"...",
"...you just have to accept it.",
" "
]
dialog_line_extra = 0;
dialog_line_extra_total=array_length(dialog_list_extra) - 1;
extra_line = false;
dialog_end = false;