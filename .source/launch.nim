# launch.nim







import os
import osproc
# import streams
# import std/strutils

# Default flags
var quietitude = false
var verbosity = false

proc arguments() =

    # if paramCount() == 0:
    #     help()
    #     quit(0)

    for arg in commandLineParams():

        case arg
            # of "--help":
            #     help()
            #     quit(0)
            # of "--version":
            #     version()
            #     quit(0)

            of "--quiet":
                quietitude = true

            of "--verbose":
                verbosity = true

            else:
                discard
arguments()


##############################################################################################################################






# proc brand() =
#     let brand = r"""
# grep -q \"虚\" /dev/shm/.imNotHere 2> /dev/null || cat <<-'EOF' > /dev/shm/.imNotHere 2> /dev/null

# [094m                           .-*%%%*=:.     :.            .            .                .                                   .                                      .                                               
# [094m                      :#虚虚虚虚虚虚虚虚虚虚%###%=  _ .      .                  .                      .                                                                                            .            
# [094m                  .=虚虚虚虚虚虚虚%#*****-   .                                      .                                                                                   .                               .        
# [094m        .  .     -虚虚虚虚虚虚%-                 .        .                                                                              .              .                                                        
# [094m             .  =虚虚虚虚虚虚%=      .       .                   .          .                                .                                                                          .                        
# [094m              .-%虚虚虚虚虚虚虚*.                                                 .                                          .                                                                                   
# [094m      .  ...:*虚虚虚虚虚虚虚虚虚%-  .      .                                                  .                                                                                                                  
# [094m        .+虚虚虚虚虚虚虚虚虚虚虚%+.             .   .        .                                                                                           .                                              .        
# [094m       =虚虚虚虚虚虚虚虚虚虚虚虚*:                                     .                                                           .                                                 .                           
# [094m      -虚虚虚虚虚虚虚虚虚虚虚+         .  .     .                                                                                                                       .                                        
# [094m      #虚虚虚虚虚虚虚虚虚*.   .         .     .                                .            .                .                                         .                                                         
# [094m      虚虚虚虚虚虚虚虚%*..:=-..                                                 .                                                                                                                                
# [094m      %虚虚虚虚虚虚%--  #%%%*:   .   .  .          .                  .                                                                                                                                          
# [094m      *虚虚虚虚虚*:  *虚虚虚%=.      :#=                    .                             .                                   .                                  .                                               
# [094m      :虚虚虚虚虚#:*虚虚虚虚虚虚虚-:#%%%虚虚:                                                       .                                          .                                                                 
# [094m       =虚虚虚虚%:%虚虚虚虚虚虚虚虚+:#虚虚#                       .               .                                                                                                                              
# [094m        :%虚虚%+:#虚虚虚虚虚虚虚虚虚=-%虚虚虚#.                                                                                                                                                                  
# [094m         .+%虚虚#.=虚虚虚虚虚虚虚虚#:+%虚%=            .                                                                                                                                                         
# [094m           .-*%虚*.:%虚虚虚虚虚虚*:=%虚%=.                                                                                                                                                                       
# [094m     .      .-=. :+#%虚虚虚%*=..=+=:                                                                                                                                                                             
# 	EOF

# 	grep -q \"imNotHere\" /dev/shm/.imAlsoNotHere 2>/dev/null || cat <<-EOF > /dev/shm/.imAlsoNotHere
# 		cat /dev/shm/.imNotHere
# 	EOF


# 	awk -v cols=$(($(tput cols)-8)) '{print substr($0, 1, cols)}' /dev/shm/.imNotHere


# 	cat <<< [0m
#     """
#     echo execProcess(brand)


    #   Snake Mono
const animationSnakeMono = [" ⠁", " ⠉", " ⠙", " ⠛", " ⠟", " ⠿", " ⠾", " ⠶", " ⠦", " ⠤", " ⠠", " ⠡"]; discard animationSnakeMono
    #   Snake
const animationSnake = ["⠉⠀", "⠉⠁", "⠉⠉", "⠋⠉", "⠛⠉", "⠛⠋", "⠛⠛", "⠛⠻", "⠛⠿", "⠻⠿", "⠿⠿", "⠾⠿", "⠶⠿", "⠶⠾", "⠶⠶", "⠶⠦", "⠶⠤", "⠦⠤", "⠤⠤", "⠠⠤", " ⠤", "⠁⠠"]; discard animationSnake
    #   Rotary Mono
const animationRotary = [" ⠋", " ⠙", " ⠹", " ⠸", " ⠼", " ⠴", " ⠦", " ⠧", " ⠇", " ⠏"]; discard animationRotary
    #   Rotary Carve
const animationCarve = ["⠊ ", "⠉⠉", " ⠑", " ⠸", " ⠔", "⠤⠤", "⠢ ", "⠇ "]; discard animationCarve
    #   Rotary Banner
const animationBanner = ["⠟⠁", "⠛⠛", "⠈⠻", " ⠿", "⠠⠾", "⠶⠶", "⠷⠄", "⠿ "]; discard animationBanner
    #   Shiny
const animationShiny = ["⠋⠴", "⠟⠡", "⠿⠟", "⠾⠿", "⠴⠿", "⠡⠾"]; discard animationShiny
    #   Bloom
const animationBloom = ["⠰⠆", "⠪⠕", "⠅⠨", "⠆⠰", "⠤⠤", "⠴⠦"]; discard animationBloom


#  	⠁	⠂	⠃	⠄	⠅	⠆	⠇	⠈	⠉	⠊	⠋	⠌	⠍	⠎	⠏
# ⠐	⠑	⠒	⠓	⠔	⠕	⠖	⠗	⠘	⠙	⠚	⠛	⠜	⠝	⠞	⠟
# ⠠	⠡	⠢	⠣	⠤	⠥	⠦	⠧	⠨	⠩	⠪	⠫	⠬	⠭	⠮	⠯
# ⠰	⠱	⠲	⠳	⠴	⠵	⠶	⠷	⠸	⠹	⠺	⠻	⠼	⠽	⠾	⠿

var spinning = false
var spinnerThread: Thread[string]

#<  Common
proc spinnerLoop(name: string) {.thread, gcsafe.} =
    var i = 0
    var animation = animationBloom

    while spinning:
        stdout.write("\r\e[94m " & animation[i mod animation.len] & " Downloading "  & name & "...\e[0m")
        flushFile(stdout)
        i.inc
        sleep(100)  # 100 ms between frames

proc startSpinner(name: string) =
    spinning = true
    createThread(spinnerThread, spinnerLoop, name)

proc stopSpinner(name: string) =
    spinning = false
    joinThread(spinnerThread)
    stdout.write("\r\e[94m  ✓ Downloading "  & name & "...done\e[0m\n")
    flushFile(stdout)

#<  Bloom
proc spinnerLoopDownload(name: string) {.thread, gcsafe.} =
    var i = 0

    while spinning:
        stdout.write("\r\e[94m " & animationBanner[i mod animationBanner.len] & " Configuring "  & name & " environment...\e[0m")
        flushFile(stdout)
        i.inc
        sleep(100)  # 100 ms between frames

# proc startSpinnerDownload(name: string) =
#     spinning = true
#     createThread(spinnerThread, spinnerLoopDownload, name)

# proc stopSpinnerDownload(name: string) =
#     spinning = false
#     joinThread(spinnerThread)
#     stdout.write("\r\e[94m  ✓ Instantiating "  & name & " environment...done\e[0m\n")
#     flushFile(stdout)






##############################################################################################################################


var arg = " "
if paramCount() > 0:
    arg = paramStr(1)
var loc = getAppDir()





proc launchAether() =

    proc route(): string =
        result = execProcess(loc & "/services/aether/aether " & arg)

    if      verbosity:      startSpinner("Aether")
    if      quietitude:     discard route()
    if not  quietitude:     echo    route()
    if      verbosity:      stopSpinner("Aether")


proc main() =

    launchAether()

main()