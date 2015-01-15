// Playground - noun: a place where people can play

for i in 0...119{print(
    i>109 ?
        i>117 ?
            "🎁":
            " ":
        i==9 ?
            "🌟":
            i%11==10 ?
                "\n":
                i%11<(10-(i/10)) ?
                    " ":
                    i%17==1 ?
                        "🎅":
                        "🎄")}
