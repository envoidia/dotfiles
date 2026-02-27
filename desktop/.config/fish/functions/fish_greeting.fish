function fish_greeting
    set -l greetings \
        "hold my hand as veins run cold" \
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
        "Covered in cuts from head to toe\nA kinky kind of crazy, not enough\nCan you feel it too?\nThe kind of pain made out of real love" \
        "It's funny what an angel you think you've been" \
        "Think I'm at the end of a road traveled far too long" \
        "Brain about to break , I'm crazy no matter what I say!! I'm lost and drunk on darkness,\nHey! Peek-a- Peek-a-boo Hey! Peek-a-boo-hoo! X (Failed) you!" \
        "Set ablaze, I'll shine brighter than the stars" \
        "The echo in the mirror" \
        "Rip it up, try again until it's clean" \
        "Can you see the blood rushing from my veins?\nIt spurts with every brush stroke, blending with the pain" \
        "Two lonely and broken souls leaning on each other's sides\nI'm glad that you're you, that I'm me, and for us two\nI'm kinda glad that you're evil too" \
        "Cut the cord, burn the witch and\nYou'll regret what you're missing" \
        "Ignorance is bliss, the fruit of knowledge is rotten" \
        "I've become what you like\nI am what you've wanted,\nRight!?" \
        "Everything Ends as Ashes" \
        "I will not die until I achieve something. Even though the ideal is high, I never give in. Therefore, I never die with regrets." \
        "Something wonderful has happened...\nFISH is alive !!!" \
        "still, morning comes\nand you can't outrun\nthe warm glow of the sun" \
        "I'm still preying on a butcher's vein\nStill praying, hopeless and in vain." \
        "I've said it's incomplete so many times, hey\nTrapped inside a love I know I can't escape" \
        "Tie it in, Tie it in\nWith a cord to connect\nSee a world ruled in madness and fear\nTake it in, Take it in\nThrough your veins and again\nFeed the PArAsITe year after year" \
        "What can you see with eyes wide open?\nBut can you see with eyes wide open?" \
        "An everlasting dream where you set me free\nWe could be shining brighter than the stars\nSo could you hold me tighter, leave me scarred?" \
        "When you look at me, who do you remember?\nBroken memories, time we spent together\nTell me honestly, do you recognize my voice?" \
        "The memories I made of you and me, won't go away" \
        "\"I will roll again today I know for sure\"" \
        "The more you love, the more it becomes your weakness,\nAnd yet I could not throw it away" \
        "A terrifying “I want you” — sheer coercion\nAn unheard “I hate you” — distorted affection\nThere are flowers that rotted away even after being given love" \
        "There were all kinds of love\nBut you were no longer here" \
        "Counting days like numbers, they all pass their prime\nAnd again hypnotically swimming through time" \
        "Zero, cross the great divide" \
        "Can you teach me to be real?" \
        "I want it to be true, to be like you\nMy heart sings a chorus out of tune" \
        "If you stare directly at reality,\nyou'll end up going blind!\nSo, do it in moderation (^^ ♪" \
        "But I still couldn't die\nWith you by my side" \
        "I Know, I Know That I'm Full Of 「Abnormality」\nSo I'll Go And Sew A New Identity" \
        "There's a universe of positivity beyond the sky" \
        "Together we can recreate a new start" \
        "A new constellation will lead us to boundless odyssey" \
        "I don't care if it's through the screen, love me properly\nEven if I'm virtual, don't push me away" \
        "The fear of never knowing finally bit the dust" \
        "I'd rather be my own best friend than my worst enemy" \
        "I'm one day closer to being who I wanna be" \
        "Everything that happened was for the best" \
        "bleed out for audience approval\ntragic but perfectly on schedule" \
        "you think by now that we would've learned\nbehind every piece of art is a human to be heard."

    set -l i (random 1 (count $greetings))
    set_color brcyan
    echo -e $greetings[$i]
    set_color normal
end