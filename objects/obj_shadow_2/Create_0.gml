visible = false;
ready = false;
start_dialog = false;
timer = 0;

text= "";

dialog_list=["You left them.",
"left them to die, didn’t you?",
"They were praying for help, screaming your name.",
"And you just left them there.",
"Left them for your own goods.",
"Maybe you couldn’t do anything,"," or you didn’t do anything?",
"You were just like this.",
"Standing there, not doing anything.",
"...",
"And you can’t do nothing.",
" "
];
dialog_line = 0;
dialog_line_total = array_length(dialog_list) - 1;

dialog_list_extra = [
"...",
"...it’s just not worth trying.",
" "
];
dialog_line_extra = 0;
dialog_line_extra_total = array_length(dialog_list_extra) - 1;
extra_line = false;
dialog_end = false;