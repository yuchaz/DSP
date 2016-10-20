function output=srconvert(in)
UP_FACTOR = 320;
DOWN_FACTOR = 147;

%output = simple_filter(in, UP_FACTOR, DOWN_FACTOR);
output = polyphase_filter(in, UP_FACTOR, DOWN_FACTOR);

return;