function [simple, polyphase]=srconvert(in)
UP_FACTOR = 320;
DOWN_FACTOR = 147;

simple = simple_filter(in, UP_FACTOR, DOWN_FACTOR);
polyphase = polyphase_filter(in, UP_FACTOR, DOWN_FACTOR);

return;