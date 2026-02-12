function fish_greeting
    set -l greetings \
        "Hold my hand as veins run cold" \
        "\"You have remained long enough in this filthy world.\" Then, all the locked doors opened, untouched--" \
        "I think I'm addicted, I'm addicted to love" \
        "To follow knowledge like a sinking star, Beyond the utmost bound of human thought" \
        "She Dreamed a Dream of Pain; She Dreamed a Dream of Longing. But above all, she Dreamed a Dream of Hope." \
        "Our time is finite, yet it feels like an unending joke" \
        "What follows after rainy days: Find hope in rainbows\nWhat glimmers in a puddle deep: Find hope in afterglow\nOpen your eyes, open your eyes" \
        "Oh, never forget to show your true colors\nOh, never forget to question destiny\nYou can be more than a puppet" \
        "It's our turn to get back\nTo grab the future which we fully believe" \
        "I'm a cute chimera sewn crooked <-new!!" \
        "Again and again, reborn and reborn\nDancing on a mountain of corpses" \
        "It's never too late\nTo fall in love with the world\nYour past is not today\nSo set your stride with a twirl" \
        "Hold hands, die together? Neverland\nI'd get tangled up with you again in a heartbeat\nA space for just us two, now and forever\nThere's no world in which I'd give you away" \
        "The Tower's gonna fall, and you'll silently rebuild it all" \
        "Covered in cuts from head toe\nA kinky kind of crazy, not enough\nCan you feel it too?\nThe kind of pain made out of real love" \
        "It's funny what an angel you think you've been" \
        "Think I'm at the end of a road traveled far too long" \
        "Brain about to break , I'm crazy no matter what I say!! I'm lost and drunk on darkness,\nHey! Peek-a- Peek-a-boo Hey! Peek-a-boo-hoo! X (Failed) you!" \
        "Set ablaze, I'll shine brighter than the stars" \
        "The echo in the mirror" \
        "Rip it up, try again until it's clean" \
        "Can you see the blood rushing from my veins?\nIt spurts with every brush stroke, blending with the pain" \
        "Tell me honestly, do you recognize my voice?" \
        "Two lonely and broken souls leaning on each other's sides\nI'm glad that you're you, that I'm me, and for us two\nI'm kinda glad that you're evil too" \
        "Cut the cord, burn the witch and\nYou'll regret what you're missing" \
        "Ignorance is bliss, the fruit of knowledge is rotten" \
        "I've become what you like\nI am what you've wanted,\nRight!?" \
        "Everything Ends as Ashes" \
        "I will not die until I achieve something. Even though the ideal is high, I never give in. Therefore, I never die with regrets." \
        "Something wonderful has happened...\nFISH is alive !!!"

    set -l idx (random 1 (count $greetings))
    set_color brcyan
    echo -e $greetings[$idx]
    set_color normal
end