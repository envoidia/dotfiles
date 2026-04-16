function fish_greeting
    set -l greetings \
        ### Song lyrics
        ## DECO*27
        # Neverland
        "Hold hands, die together? Neverland\nI'd get tangled up with you again in a heartbeat\nA space for just us two, now and forever\nThere's no world in which I'd give you away" \
        # Chimera
        "I'm a cute chimera sewn crooked <-new!!\nExpectations and pressures were the blueprint" \
        # Monitoring
        "Let your tears run free, let out your heart" \
        # Hibana
        "I've said it's incomplete so many times, hey\nTrapped inside a love I know I can't escape" \
        \
        ## KAT
        # Affection Addiction
        "I think I'm addicted, I'm addicted to love" \
        # Lucid Dreamscape
        "An everlasting dream where you set me free\nWe could be shining brighter than the stars\nSo could you hold me tighter, leave me scarred?" \
        # Self-Proclaimed Angel
        "It's funny what an angel you think you've been" \
        # Dizzy Paranoia Girl
        "Think I'm at the end of a road traveled far too long" \
        "Love is an incision that cuts deeper than a knife" \
        # Pull the Trigger
        "TAKE ONE LOOK AT ME, I'LL BE YOUR MEMENTO MORI" \
        \
        ## PinnochioP
        # I'm glad you're evil too
        "Our time is finite, yet it feels like an unending joke" \
        "Two lonely and broken souls leaning on each other's sides\nI'm glad that you're you, that I'm me, and for us two\nI'm kinda glad that you're evil too" \
        # Love Attribute
        "The more you love, the more it becomes your weakness,\nAnd yet I could not throw it away" \
        "A terrifying “I want you” — sheer coercion\nAn unheard “I hate you” — distorted affection\nThere are flowers that rotted away even after being given love" \
        "There were all kinds of love\nBut you were no longer here" \
        # Reincarnation Apple
        "Again and again, reborn and reborn\nDancing on a mountain of corpses" \
        # God-ish
        "Ignorance is bliss, the fruit of knowledge is rotten" \
        # Don't Believe in T
        "If it feels good, Even poison's fine to drink" \
        "\"Stop depending on fake love,\" they say\nDon't tell me, I beg you\nIf I don't blindly believe, I'll go crazy" \
        \
        ## tart
        # BLADEDANCE
        "underneath your blade\nwant it in the worst way\ni'm reeling, but you're tearing me apart" \
        "hooked on the breath and bloodied taste\nof something i can't keep (away from me)" \
        "lead me astray with daggers in your dead eyes" \
        # deluge
        "THE STARS DIVIDING TAKE THEIR FINAL BREATH" \
        "i had a dream about you last night\nit ended when we died" \
        \
        ## Crusher
        # ECHO
        "The echo in the mirror" \
        # Would You Rather
        "The fear of never knowing finally bit the dust" \
        "I'd rather be my own best friend than my worst enemy" \
        "I'm one day closer to being who I wanna be" \
        "Everything that happened was for the best" \
        \
        ## KIRA
        # 4BLOOD
        "Cut the cord, burn the witch and\nYou'll regret what you're missing" \
        # VOICE
        "When you look at me, who do you remember?\nBroken memories, time we spent together\nTell me honestly, do you recognize my voice?" \
        # i DO what i WANT
        "Baby I am just a Bad girl with an EGO\nCan't help living in my own world\nCall me evil" \
        \
        ## CircusP
        # Ten Thousand Stars
        "Set ablaze, I'll shine brighter than the stars" \
        # Vermillion
        "Rip it up, try again until it's clean" \
        "Can you see the blood rushing from my veins?\nIt spurts with every brush stroke, blending with the pain" \
        # Copycat
        "I've become what you like\nI am what you've wanted,\nRight!?" \
        # Better Off Worse
        "bleed out for audience approval\ntragic but perfectly on schedule" \
        "you think by now that we would've learned\nbehind every piece of art is a human to be heard." \
        # Twilight Melody
        "Together we can recreate a new start" \
        "A new constellation will lead us to boundless odyssey" \
        # Intergalactic Bound
        "There's a universe of positivity beyond the sky" \
        \
        ## Kairiki Bear
        # Bug
        "Brain about to break , I'm crazy no matter what I say!! I'm lost and drunk on darkness,\nHey! Peek-a- Peek-a-boo Hey! Peek-a-boo-hoo! X (Failed) you!" \
        # Mental Chainsaw
        "IS my mind already cracked?" \
        # Ruma
        "Scream out all your feelings and Ha-ha-hack them all to bits" \
        \
        ## Mili
        # Through Patches of Violet
        "I could be the reason why you were able to be kind" \
        # world.execute(me);
        "If I'm the only god, then you're the proof of my existence" \
        \
        ## Persona
        # Counter-strike
        "Oh, never forget to show your true colors\nOh, never forget to question destiny\nYou can be more than a puppet" \
        # Daredevil
        "Searching for something they won't ever find" \
        # I Believe
        "It's our turn to get back\nTo grab the future which we fully believe" \
        # You Are Stronger
        "You are stronger than all things that made you weak" \
        \
        ## Other
        # VENOMPHILE
        "If poison's all that you can prescribe\nThen savor the taste and catch a vibe" \
        "I'll try to be good, to the letter\nHold it back, but the venom is better!" \
        "Jab it into the vein, it don't matter\nAcid kiss, take it now or never!" \
        # salt-wound routine
        "hold my hand as veins run cold" \
        "still, morning comes\nand you can't outrun\nthe warm glow of the sun" \
        # Jitter Doll
        "What follows after rainy days: Find hope in rainbows\nWhat glimmers in a puddle deep: Find hope in afterglow\nOpen your eyes, open your eyes" \
        "Tie it in, Tie it in\nWith a cord to connect\nSee a world ruled in madness and fear\nTake it in, Take it in\nThrough your veins and again\nFeed the PArAsITe year after year" \
        "What can you see with eyes wide open?\nBut can you see with eyes wide open?" \
        # RUSSIAN ROULETTE
        "I just wanna get crazy baby\nSo play me 'till this heart gives out\nStill razor sharp, I'll play my part\nBut this might be where we fall apart, no\nI can't imagine anything more worth it" \
        # Machine Love
        "Zero, cross the great divide" \
        "Can you teach me to be real?" \
        "I want it to be true, to be like you\nMy heart sings a chorus out of tune" \
        "As long as there are stars up above\nI will always be in love" \
        # melt ice cream
        "I'll give you sweet ICE\nLove me until you die" \
        # ANTONYMPH
        "It's never too late\nTo fall in love with the world\nYour past is not today\nSo set your stride with a twirl" \
        # Pathological Facade
        "The Tower's gonna fall, and you'll silently rebuild it all" \
        # Mind Brand
        "Covered in cuts from head to toe\nA kinky kind of crazy, not enough\nCan you feel it too?\nThe kind of pain made out of real love" \
        "The memories I made of you and me, won't go away" \
        # Butcher Vanity
        "I'm still preying on a butcher's vein\nStill praying, hopeless and in vain." \
        # Rolling Girl
        "\"I will roll again today I know for sure\"" \
        # Lost One's Weeping
        "Counting days like numbers, they all pass their prime\nAnd again hypnotically swimming through time" \
        # Mesmerizer
        "If you stare directly at reality,\nyou'll end up going blind!\nSo, do it in moderation (^^ ♪" \
        # Shinitai-Chan
        "But I still couldn't die\nWith you by my side" \
        # Abnormality Dancing Girl
        "I Know, I Know That I'm Full Of 「Abnormality」\nSo I'll Go And Sew A New Identity" \
        # Hibikase
        "I don't care if it's through the screen, love me properly\nEven if I'm virtual, don't push me away" \
        # F☺️☺️lish
        "Razor blade drawings, color and ruin" \
        # Patches of Violet
        "I could be the reason why you were able to be kind" \
        # UNDEFEATABLE
        "I'm what you get when the stars collide" \
        \
        ### Misc
        # Touhou 8: Imperishable Night
        "\"You have remained long enough in this filthy world.\" Then, all the locked doors opened, untouched--" \
        # Touhou 10: Mountain of Faith
        "Tomorrow will be Special; Yesterday was Not" \
        # Touhou Spellbroken Dream Festival (Original)
        "She Dreamed a Dream of Pain; She Dreamed a Dream of Longing. But above all, she Dreamed a Dream of Hope." \
        # Touhou Fantastic Danmaku Festival 2
        "Everything Ends as Ashes" \
        # Ikaruga
        "I will not die until I achieve something. Even though the ideal is high, I never give in. Therefore, I never die with regrets." \
        # Ulysses
        "To follow knowledge like a sinking star, Beyond the utmost bound of human thought" \
        "It is not too late to seek a newer world" \
        # The Book of Earth
        "Upon the ladder of life that mounts through Time,\nFrom plants to beasts, and up, through man, to God" \
        "God uttering life, and God receiving death" \
        # Paradise Lost
        "The mind is its own place and, in itself can make a Heaven of Hell, a Hell of Heaven" \
        # The Revolt of Islam
        "The chains of earth like mist melted away" \
        # Dante's Inferno
        "Hope not ever to see Heaven. I have come to lead you to the other shore; into eternal darkness; into fire and into ice" \
        # Antoine de Saint-Exupéry
        "The machine does not isolate man from the great problems of nature but plunges him more deeply into them" \
        # SCA (computer virus)
        "Something wonderful has happened...\nFISH is alive !!!" \
        # Original
        "A SUPERNOVA AT YOUR BECK AND CALL, RIVALING THE FIST OF GOD" \
        "The Star That Blanks Out the Darkness"

    set -l i $(random 1 $(count $greetings))
    set_color brcyan
    echo -e $greetings[$i]
    set_color normal
end