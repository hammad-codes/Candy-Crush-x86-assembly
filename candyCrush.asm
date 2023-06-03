.MODEL small
.STACK 8000h

;-----------------------------------------------
;              MACROS ARE DEFINED HERE         |
;-----------------------------------------------


;-------------- Draw pixel macro --------------
    drawpixel macro a

    mov ah,0ch
    mov al,a
    mov bx,0
    int 10h
    endM
;-------------- Draw pixel ends -----------------

;-------------- Draw Horizontal Line macro ------
    drawhorizontalline macro x1,y1,x2,a

    mov cx,x1
    mov dx,y1   
        .while cx<x2
            drawpixel a
            inc cx
        .endw
    endM
;-------------- Draw Horizontal Line ends------

;-------------- Draw Vertical Line macro ------
    drawverticalline macro x1,y1,y2,a

    mov cx,x1
    mov dx,y1   
        .while dx<y2
            drawpixel a
            inc dx
        .endw
    endM
;-------------- Draw Vertical Line ends----------

    drawslantedline macro x1,y1,x2,y2,a

        mov cx,x1
        mov dx,y1

        .while cx>x2
            drawpixel a
            dec cx
            inc dx
        .endw
       

    endM

;----------- Draw Square candy macro ------------
    DrawSquareCandy macro xcord, ycord

    mov cx,xcord
    mov dx,ycord
    mov color,0
    add cx,15
    add dx,15
    push cx
    push dx
        mov gridCounter,0
        .while gridCounter<30
        push cx
            mov counter,0
            .while counter<30
                drawpixel color
                inc color
                .if color==15
                    mov color,0
                .endif
                inc cx
                inc counter
            .endw
            
            pop cx
            inc dx
            inc gridCounter
        .endw
    endM
;--------- Draw Square candy macro ends here ------

;----------- Draw Rhombus candy macro ------------
    
;--------- Draw Rhombus candy macro ends here ------

    DrawRhombusCandy macro xcord, ycord

    mov cx,xcord
    mov dx,ycord
    ;mov color,6
    add cx,30
    add dx,7
    push cx
    push dx

    mov counter,0
        .while counter<21
            drawpixel color
            inc counter
            inc dx
            dec cx
        .endw

        mov counter,0
        .while counter<21
            drawpixel color
            inc counter
            dec dx
            inc cx
        .endw

        mov counter,0
        .while counter<21
            drawpixel color
            inc counter
            inc dx
            inc cx
        .endw

        mov counter,0
        .while counter<21
            drawpixel color
            inc counter
            inc dx
            dec cx
        .endw

        mov counter,0
        .while counter<21
            drawpixel color
            inc counter
            dec dx
            dec cx
        .endw
    endM

;----------- Draw Scary candy macro ----------------
    DrawScaryCandy macro xcord, ycord

    mov cx,xcord
    mov dx,ycord

    mov color,3

    add cx,30
    add dx,7

    push cx
    push dx

    mov counter,0
        .while counter<11
            drawpixel color
            inc counter
            inc dx
            dec cx
        .endw

        mov counter,0
        .while counter<11
            drawpixel color
            inc counter
            ;dec dx
            dec cx
        .endw

        mov counter,0
        .while counter<11
            drawpixel color
            inc counter
            inc dx
            inc cx
        .endw

        mov counter,0
        .while counter<11
            drawpixel color
            inc counter
            inc dx
            dec cx
        .endw

        mov counter,0
        .while counter<11
            drawpixel color
            inc counter
            dec dx
            inc cx
        .endw

    pop dx
    pop cx

    mov counter,0
        .while counter<11
            drawpixel color
            inc counter
            inc dx
            inc cx
        .endw

    mov counter1,cx
    add counter1,11
        drawhorizontalline cx,dx,counter1,color

    mov counter,0
        .while counter<11
            drawpixel color
            inc counter
            inc dx
            dec cx
        .endw

        mov counter,0
        .while counter<11
            drawpixel color
            inc counter
            inc dx
            inc cx
        .endw

        mov counter,0
        .while counter<45
            drawpixel color
            inc counter
            dec cx
        .endw

    mov cx,xcord
    mov dx,ycord

    add cx,23
    sub dx,7

    drawpixel 3
    add dx,1
    drawpixel 3

    add dx,1
    drawpixel 3

    add dx,1
    drawpixel 3

    sub cx,7
    sub dx,12

    drawpixel 5

    add cx,14

    drawpixel 5

    endM
;----------- Draw Scary candy ends  ------------

;----------- Draw choclate candy macro ----------
    DrawChoclateCandy macro xcord, ycord

    mov cx,xcord
    mov dx,ycord
    mov xcor,cx
    mov ycor,dx

    mov color,1111b

    push cx
    push dx
    add cx,10
    add dx,10
    
        mov gridCounter,0
        .while gridCounter<15
        push cx
            mov counter,0
            .while counter<40
                drawpixel color
                inc cx
                inc counter
            .endw
            
            pop cx
            inc dx
            inc gridCounter
        .endw


    pop dx
    pop cx
    mov color,1111b
    add cx,10
    add dx,35
    push cx
    push dx
         mov gridCounter,0
        .while gridCounter<15
        push cx
            mov counter,0
            .while counter<40
                drawpixel color
                inc cx
                inc counter
            .endw
            
            pop cx
            inc dx
            inc gridCounter
        .endw


    mov cx,xcor
    mov dx,ycor
    add cx,10
    add dx,10
    mov color,4
    mov gridCounter,0
        .while gridCounter<20
        push dx
            mov counter,0
            .while counter<40
                drawpixel color
                inc dx
                inc counter
            .endw
            
            pop dx
            add cx,2
            inc gridCounter
        .endw

        mov cx,xcor
        mov dx,ycor

        add cx,30
        add dx,10

    mov color,13

    drawRhombusCandy xcor,ycor
        
    

    endM
;----------- Draw Choclate candy Ends ----------

;----------- Draw Triangular candy macro ----------
    DrawTriangularCandy macro xcord, ycord

    mov cx,xcord
    mov dx,ycord

   

    add cx,15
    add dx,45

    mov counter1,cx
    add counter1,30

    mov counter,0

    .while counter<30
        push cx
        drawhorizontalline cx,dx,counter1,4
        pop cx
        dec dx
        dec counter1
        inc counter
    .endw

    endM
;----------- Draw Triangular candy Ends ----------

;----------- Draw Black candy macro ------

    DrawBlackCandy macro xcord,ycord

        mov cx,xcord
        mov dx,ycord
        inc dx
        inc dx
        inc cx

        mov counter1,59
        .while counter1>0
            mov counter,57
            push dx
            .while counter>0
                drawpixel 0
                inc dx
                dec counter
            .endw
            pop dx
            inc cx
            dec counter1
        .endw
    endM

;----------- Draw Black candy Ends -------

;----------- Draw actual candy macro ----------
    DrawActualCandy macro xcord, ycord

    mov cx,xcord
    mov dx,ycord

    mov xcor,cx
    mov ycor,dx
    
    ;draws upperleft triangle
    add cx,5
    add dx,30

    mov color,4

    mov counter1,cx
    add counter1,10

    mov counter,0

    .while counter<10
        push cx
        drawhorizontalline cx,dx,counter1,11
        pop cx
        dec dx
        dec counter1
        inc counter
    .endw

     ;draws lowerleft triangle

    mov cx,xcor
    mov dx,ycor
    add cx,5
    add dx,30

    mov color,4

    mov counter1,cx
    add counter1,10

    mov counter,0

    .while counter<10
        push cx
        drawhorizontalline cx,dx,counter1,11
        pop cx
        inc dx
        dec counter1
        inc counter
    .endw

     ;draws rectangle

     mov cx,xcor
     mov dx,ycor
     add cx,15
     add dx,20
     mov color,11

         mov gridCounter,0
        .while gridCounter<20
        push cx
            mov counter,0
            .while counter<30
                drawpixel color
                inc cx
                inc counter
            .endw
            
            pop cx
            inc dx
            inc gridCounter
        .endw

       ;draws lines in rect

      mov cx,xcor
     mov dx,ycor
     add cx,15
     add dx,20
     mov color,13

         mov gridCounter,0
        .while gridCounter<10
        push cx
            mov counter,0
            .while counter<30
                drawpixel color
                inc cx
                inc counter
            .endw
            
            pop cx
            add dx,2
            inc gridCounter
        .endw
    
 
     ;draws red rectangle

     mov cx,xcor
     mov dx,ycor
     add cx,45
     add dx,20
     mov color,11

         mov gridCounter,0
        .while gridCounter<20
        push cx
            mov counter,0
            .while counter<10
                drawpixel color
                inc cx
                inc counter
            .endw
            
            pop cx
            inc dx
            inc gridCounter
        .endw
    
    
    ;draws upperright tri

    mov cx,xcor
    mov dx,ycor
    add cx,45
    add dx,20

    mov color,0

    mov counter1,cx
    add counter1,10

    mov counter,0

    .while counter<10
        push cx
        drawhorizontalline cx,dx,counter1,0
        pop cx
        inc dx
        dec counter1
        inc counter
    .endw

    ;draws lowerleft tri

    mov cx,xcor
    mov dx,ycor

    add cx,45
    add dx,40

    mov color,0

    mov counter1,cx
    add counter1,10

    mov counter,0

    .while counter<10
        push cx
        drawhorizontalline cx,dx,counter1,0
        pop cx
        dec dx
        dec counter1
        inc counter
    .endw


    endM
;----------- Draw Actual candy Ends ----------

;-----------  Draw BOMB candy  -----------------
DrawBombCandy macro xcord, ycord

    mov cx,xcord
    mov dx,ycord

	add cx,5
	sub dx,5

	mov xcor,cx
	mov ycor,dx

    add cx,30
    add dx,10

	mov counter1,cx

	mov counter,0
	.while counter < 10
		drawpixel 1111b
		dec cx
		drawpixel 1111b
		dec cx
		drawpixel 1111b
		
		inc dx
		drawpixel 1111b
		inc dx
		drawpixel 1111b
		inc dx
		drawpixel 1111b
		inc counter
	.endw

	 mov cx,xcor
	 mov dx,ycor	

	 add cx,32
	 add dx,12

	 mov counter,0
	.while counter < 10
		drawpixel 1011b
		dec cx
		drawpixel 1011b
		dec cx
		drawpixel 1011b
		inc dx
		drawpixel 1011b
		inc dx
		drawpixel 1011b
		inc dx
		drawpixel 1011b
		inc counter
	.endw

	 mov cx,xcor
	 mov dx,ycor

	add cx,34
	add dx,14

	 mov counter,0
	.while counter < 10
		drawpixel 1001b
		dec cx
		drawpixel 1001b
		dec cx
		drawpixel 1001b
		inc dx
		drawpixel 1001b
		inc dx
		drawpixel 1001b
		inc dx
		drawpixel 1001b
		inc counter
	.endw

	mov cx,xcor
	mov dx,ycor

	add cx,36
	add dx,16

	 mov counter,0
	.while counter < 10
		drawpixel 1101b
		dec cx
		drawpixel 1101b
		dec cx
		drawpixel 1101b
		inc dx
		drawpixel 1101b
		inc dx
		drawpixel 1101b
		inc dx
		drawpixel 1101b
		inc counter
	.endw
	mov cx,xcor
	mov dx,ycor

	add cx,38
	add dx,18

	 mov counter,0
	.while counter < 10
		drawpixel 1000b
		dec cx
		drawpixel 1000b
		dec cx
		drawpixel 1000b
		inc dx
		drawpixel 1000b
		inc dx
		drawpixel 1000b
		inc dx
		drawpixel 1000b
		inc counter
	.endw
	mov cx,xcor
	mov dx,ycor

	add cx,40
	add dx,20

	 mov counter,0
	.while counter < 10
		drawpixel 0001b
		dec cx
		drawpixel 0001b
		dec cx
		drawpixel 0001b
		inc dx
		drawpixel 0001b
		inc dx
		drawpixel 0001b
		inc dx
		drawpixel 0001b
		inc counter
	.endw
	mov cx,xcor
	mov dx,ycor

	add cx,42
	add dx,22

	 mov counter,0
	.while counter < 10
		drawpixel 0011b
		dec cx
		drawpixel 0011b
		dec cx
		drawpixel 0011b
		inc dx
		drawpixel 0011b
		inc dx
		drawpixel 0011b
		inc dx
		drawpixel 0011b
		inc counter
	.endw
	mov cx,xcor
	mov dx,ycor

	add cx,44
	add dx,24

	 mov counter,0
	.while counter < 10
		drawpixel 0100b
		dec cx
		drawpixel 0100b
		dec cx
		drawpixel 0100b
		inc dx
		drawpixel 0100b
		inc dx
		drawpixel 0100b
		inc dx
		drawpixel 0100b
		inc counter
	.endw

	mov cx,xcor
	mov dx,ycor

    add cx,46
    add dx,26

	mov counter1,cx

	mov counter,0
	.while counter < 10
		drawpixel 1111b
		dec cx
		drawpixel 1111b
		dec cx
		drawpixel 1111b
		inc dx
		drawpixel 1111b
		inc dx
		drawpixel 1111b
		inc dx
		drawpixel 1111b
		inc counter
	.endw

	

   

    endM

;----------- Draw BOMB candy ENDS-------------

;----------- Draw Grid Macro ----------------------
    DrawGrid macro

    newWindow

    mov cx,20
    mov dx,60

    mov gridCounter,8
    mov cx,20
    .while gridCounter>0

        mov dx,40
        .while dx<460
        drawpixel 13
        inc dx
        .endw 
        add cx,60
    dec gridCounter
    .endw 

    ;Horizontal Lines
    mov gridCounter,11
    mov dx,40
    .while gridCounter>0

        mov cx,20
        .while cx<440
        drawpixel 13
        inc cx
        .endw 
        add dx,60
    dec gridCounter
    .endw

    endM
;------------------------------
;       Make Box Macro
    MakeBox macro boxx,boxy
        mov cx,boxx
        mov dx,boxy
        
        mov counter1,60
        .while counter1>0
            drawpixel 13
            inc cx
            dec counter1
        .endw

        mov counter1,60
        .while counter1>0
            drawpixel 13
            inc dx
            dec counter1
        .endw

        mov counter1,60
        .while counter1>0
            drawpixel 13
            dec cx
            dec counter1
        .endw

        mov counter1,60
        .while counter1>0
            drawpixel 13
            dec dx
            dec counter1
        .endw

    endM
;------------------------------
    ;----------- Level - 2 Grid Macro ----------------------
    DrawGrid_2 macro

    newWindow

    mov cx,20
    mov dx,60

    mov gridCounter,8
    mov cx,20
    .while gridCounter>0

        mov dx,40
        .while dx<460
        drawpixel 13
        inc dx
        .endw 
        add cx,60
    dec gridCounter
    .endw 

    ;Horizontal Lines
    mov gridCounter,11
    mov dx,40
    .while gridCounter>0

        mov cx,20
        .while cx<440
        drawpixel 13
        inc cx
        .endw 
        add dx,60
    dec gridCounter
    .endw

    endM
;-------------- Level - 3 Grid --------------
        DrawGrid_3 macro

    newWindow

    DisplayScore        ;Displays The Score and name of the user.


    mov cx,20
    mov dx,60

    mov gridCounter,4
    mov cx,20
    .while gridCounter>0

        mov dx,40
        .while dx<220
        drawpixel 13
        inc dx
        .endw 
        add cx,60
    dec gridCounter
    .endw 

    ;Horizontal Lines
    mov gridCounter,4
    mov dx,40
    .while gridCounter>0

        mov cx,20
        .while cx<200
        drawpixel 13
        inc cx
        .endw 
        add dx,60
    dec gridCounter
    .endw
    ;-------- 2nd Part ------------
    mov gridCounter,4
    mov cx,260
    .while gridCounter>0

        mov dx,40
        .while dx<220
        drawpixel 13
        inc dx
        .endw 
        add cx,60
    dec gridCounter
    .endw 

    ;Horizontal Lines
    mov gridCounter,4
    mov dx,40
    .while gridCounter>0

        mov cx,260
        .while cx<440
        drawpixel 13
        inc cx
        .endw 
        add dx,60
    dec gridCounter
    .endw
    ;-------- 3RD Part ------------
    mov gridCounter,4
    mov cx,20
    .while gridCounter>0

        mov dx,280
        .while dx<460
        drawpixel 13
        inc dx
        .endw 
        add cx,60
    dec gridCounter
    .endw 

    ;Horizontal Lines
    mov gridCounter,4
    mov dx,280
    .while gridCounter>0

        mov cx,20
        .while cx<200
        drawpixel 13
        inc cx
        .endw 
        add dx,60
    dec gridCounter
    .endw
    ;--------- 4th Part ;---------
    mov gridCounter,4
    mov cx,260
    .while gridCounter>0

        mov dx,280
        .while dx<460
        drawpixel 13
        inc dx
        .endw 
        add cx,60
    dec gridCounter
    .endw 

    ;Horizontal Lines
    mov gridCounter,4
    mov dx,280
    .while gridCounter>0

        mov cx,260
        .while cx<440
        drawpixel 13
        inc cx
        .endw 
        add dx,60
    dec gridCounter
    .endw

    endM
    
;----------- Draw Grid Macro Ends Here ---------
    LoadingScreen macro 
    mov ah,02h
    mov bx,0
    mov dh,12   ; setting the Cursor
    mov dl,8
    int 10h

    lea dx,Loading   ;Displaying the string
    mov ah,09h 
    int 21h

    endM

    LoadingScreen2 macro number
    mov ah,02h
    mov bx,0
    mov dh,12   ; setting the Cursor
    mov dl,55
    int 10h
    
    mov cx,number
    mov Multvar,cx

    call DisplayMult
    ;DisplayNums number
    ; mov dx,number
    ; add dl,48
    ; mov ah,02h
    ; int 21H

    endM
;-----------  Window-1 Macro -------------
    Window1 macro

    newWindow

    mov color,5
    mov cx,20
    mov dx,50

    mov counter1,600
        .while dx<440
                mov cx,20
                drawhorizontalline cx,dx,counter1,color
                inc color
                .if color==14
                mov color,1
                .endif
                add dx,20
                mov cx,50000
                delayx:
                loop delayx
                mov cx,50000
                delayy:
                loop delayy
                mov cx,50000
        .endw
; REMOVING THE LINES
mov dx,190

    mov counter1,600
        .while dx<440
                mov cx,20
                .if dx<300
                drawhorizontalline cx,dx,counter1,0
                .endif
                add dx,20
                mov cx,65500
                delay1:
                loop delay1
        .endw


    mov ah,02h
    mov bx,0
    mov dh,12   ; Code for setting the Cursor to the Middle of the Screen
    mov dl,26
    int 10h

    lea dx,intro_string ;Displaying the Intro String
        mov ah,09h 
    int 21h


    mov ah,02h
    mov bx,0
    mov dh,14   ; Code for setting the Cursor to the Middle of the Screen
    mov dl,26
    int 10h
    
    lea dx,EnterName ;Displaying the Enter Name String
        mov ah,09h 
    int 21h

    mov ah,02h
    mov bx,0
    mov dh,16   ; Code for setting the Cursor At Middle of the Screen
    mov dl,34
    int 10h

    mov si,offset UserName
    
    inputname:
    inc userNameSize
        mov ah,01h
        int 21h
        mov [si],al
        inc si
        cmp al,13
    jne inputname

endM
;-----------  Window-1 Ends -----------------

;-----------  Window-2 Macro ----------------
    Window2 macro

    newWindow

    drawverticalline 20,40,480,5

    drawverticalline 70,80,480,5

    drawverticalline 120,120,480,5


    drawverticalline 620,40,480,5

    drawverticalline 570,80,480,5

    drawverticalline 520,120,480,5


    drawhorizontalline 20,40,620,5

    drawhorizontalline 70,80,570,5

    drawhorizontalline 120,120,520,5


    mov ah,02h
    mov bx,0
    mov dh,2   ; setting the Cursor
    mov dl,30
    int 10h

    lea dx,WelcomeStr   ;Displaying the string
    mov ah,09h 
    int 21h

    lea dx,UserName 
    mov ah,09h 
    int 21h

    mov ah,02h
    mov bx,0
    mov dh,5   ; setting the Cursor
    mov dl,26
    int 10h

    lea dx,intro_string
    mov ah,09h 
    int 21h

    mov ah,02h
    mov bx,0
    mov dh,7   ; setting the Cursor
    mov dl,35
    int 10h

    lea dx,Rules
    mov ah,09h 
    int 21h

    mov ah,02h
    mov bx,0
    mov dh,9   ; setting the Cursor
    mov dl,16
    int 10h

    lea dx,Rule1
    mov ah,09h 
    int 21h

    mov ah,02h
    mov bx,0
    mov dh,11   ; setting the Cursor
    mov dl,16
    int 10h

    lea dx,Rule2
    mov ah,09h 
    int 21h

    mov ah,02h
    mov bx,0
    mov dh,13   ; setting the Cursor
    mov dl,16
    int 10h

    lea dx,Rule3
    mov ah,09h 
    int 21h

    mov ah,02h
    mov bx,0
    mov dh,14   ; setting the Cursor
    mov dl,16
    int 10h

    lea dx,Rule4
    mov ah,09h 
    int 21h

    mov ah,02h
    mov bx,0
    mov dh,16   ; setting the Cursor
    mov dl,16
    int 10h

    lea dx,Rule5
    mov ah,09h 
    int 21h

    mov ah,02h
    mov bx,0
    mov dh,20   ; setting the Cursor
    mov dl,29
    int 10h

    lea dx,PressKey
    mov ah,09h
    int 21h

    mov ah,02h
    mov bx,0
    mov dh,22   ; setting the Cursor
    mov dl,29
    int 10h

    lea dx,PressKey1
    mov ah,09h
    int 21h

    mov ah,02h
    mov bx,0
    mov dh,24   ; setting the Cursor
    mov dl,29
    int 10h

    lea dx,PressKey2
    mov ah,09h
    int 21h

    mov ah,02h
    mov bx,0
    mov dh,26   ; setting the Cursor
    mov dl,29
    int 10h

    lea dx,PressKey3
    mov ah,09h
    int 21h

    mov ah,02h
    mov bx,0
    mov dh,0   ; setting the Cursor
    mov dl,0
    int 10h

    mov ah,01h
    int 21h
    sub al,48
    mov level,al
endM
;-----------  Window-2 Ends -----------------

;-----------  Window-3 Macro ----------------

Window3 macro
    
    PopulateCandies
    DrawGrid     
    PopulateBoard

endM

;-----------  Window-3 Ends -----------------

;-----------  Randomizer Macro -------------

Randomizer macro
    
    MOV AH, 00h  ; interrupts to get system time        
    INT 1AH      ; CX:DX now hold number of clock ticks since midnight      

    mov  ax, dx
    xor  dx, dx
    mov  cx, 7    
    div  cx       ; here dx contains the remainder of the division - from 0 to 9

    mov Random , dl

endM

;-----------  Randomizer Ends -------------
; ;----------------------------------------------------------
; ;	procedure to Display Score and Moves
; ;----------------------------------------------------------	
    DisplayScore macro

    mov ah,02h
    mov bx,0
    mov dh,4   ; setting the Cursor
    mov dl,60
    int 10h

    lea dx,Player   ;Displaying the string
    mov ah,09h 
    int 21h

    mov ah,02h
    mov bx,0
    mov dh,4   ; setting the Cursor
    mov dl,70
    int 10h

    lea dx,UserName   ;Displaying the string
    mov ah,09h 
    int 21h

    mov ah,02h
    mov bx,0
    mov dh,8  ; setting the Cursor
    mov dl,65
    int 10h

    lea dx,Moves   ;Displaying the string
    mov ah,09h 
    int 21h

    mov ah,02h
    mov bx,0
    mov dh,10  ; setting the Cursor
    mov dl,64
    int 10h

    ; DisplayNums No_of_moves
    mov cx,No_of_moves
    mov Multvar,cx
    call DisplayMult

    ;For setting the cursor
    mov ah,02h
    mov bx,0
    mov dh,10  ;x-axis
    mov dl,67 ;y-axis
    int 10h
    ;string output
    lea dx,TotalMoves   ;Displaying the string
    mov ah,09h 
    int 21h

    mov ah,02h
    mov bx,0
    mov dh,15  ; setting the Cursor
    mov dl,63
    int 10h

    lea dx,Scores  ;Displaying the string
    mov ah,09h 
    int 21h

    mov ah,02h
    mov bx,0
    mov dh,15  ; setting the Cursor
    mov dl,72
    int 10h

    mov cx,score
    mov Multvar,cx
    call DisplayMult

    mov ah,02h
    mov bx,0
    mov dh,0  ; setting the Cursor
    mov dl,0
    int 10h
    
    endM

;----------------------------------------------------------
;---------------------------------------------
    AddDelay macro delayamount
    
            mov cx,delayamount
            .while cx>0
                    dec cx
            .endw
    endM
;---------------------------------------------
;-----------  Populate Candies Macro -------------

    PopulateCandies macro

        newWindow
        LoadingScreen
        mov counter1,53

            mov candycounter,0
            mov si,0
            mov cx,0
        .while cx<49
            push cx


                AddDelay 65500
            Randomizer
                AddDelay 20000
                LoadingScreen2 counter1
                inc counter1
                inc di

            mov al,Random
            mov candytypesArray[si],al
                mov dl,candytypesArray[si]  ;Displaying the random Numbers
                
                ; add dl,48
                ; mov ah,02h
                ; int 21h
            
            inc candycounter
            inc si
            pop cx
            inc cx
        .endw
        newWindow
    endM


    PopulateCandiesAgain macro

			mov ah,02h
			mov bx,0
			mov dh,1   ; setting the Cursor
			mov dl,25
			int 10h

			lea dx,Crushing   ;Displaying the string
			mov ah,09h 
			int 21h		
			
            mov candycounter,0
            mov si,0
            mov cx,0
        .while cx<49
            push cx


                AddDelay 30000
            Randomizer
                ;AddDelay 20000
                inc di

            mov al,Random
            mov candytypesArray[si],al
                mov dl,candytypesArray[si]  ;Displaying the random Numbers
            inc candycounter
            inc si
            pop cx
            inc cx
        .endw
        newWindow
        DrawGrid
    endM
;-----------  Populate Candies Ends --------------

;-----------  Populate Board Macro -------------

PopulateBoard macro 

DisplayScore

mov counter,0
mov PopulateCounter2,0
mov candycounter,0
mov di,offset YCordArray
mov si,offset XCordArray
push si
.while PopulateCounter2<7
;-------------------------------------
        
        mov si,offset XCordArray
        mov PopulateCounter1,0
        ;-------------------------------------
            .while PopulateCounter1<7
                
                ;Randomizer
                push si
                mov si,offset candytypesArray
                add si,candycounter
                mov bl,[si]
                inc candycounter
                mov Random,bl
                pop si

                mov cx,0
                mov dx,0
                mov cx,[si]
                mov dx,[di]
                .if Random == 0

                    mov xcor,cx
                    mov ycor,dx
                    mov color,6
                    DrawRhombusCandy cx,dx
                    mov cx,xcor
                    mov dx,ycor
                    add cx,5
                    DrawRhombusCandy cx,dx
                    mov cx,xcor
                    mov dx,ycor
                    sub cx,4
                    DrawRhombusCandy cx,dx
                    
                .endif

                .if Random == 1
                    DrawActualCandy cx,dx
                .endif

                .if Random == 2
                    DrawSquareCandy cx,dx
                .endif

                .if Random == 3
                    DrawChoclateCandy cx,dx
                .endif

                .if Random==4
                    DrawTriangularCandy cx,dx
                .endif

                .if Random==5
                    DrawScaryCandy cx,dx
                .endif
                .if Random==6
                DrawBombCandy cx,dx
                .endif

            add si,2
            inc PopulateCounter1
        .endw
        ;-------------------------------------
    inc PopulateCounter2
    add di,2
;-------------------------------------
.endw

endM
;-----------  Populate Board Ends --------------

;-----------  Populate Board Macro -------------

populate_3 macro 

mov si,offset candytypesArray
mov al,12
mov [si+3],al
mov [si+10],al
mov [si+17],al

mov [si+21],al
mov [si+22],al
mov [si+23],al
mov [si+24],al
mov [si+25],al
mov [si+26],al
mov [si+27],al

mov [si+31],al
mov [si+38],al
mov [si+45],al


mov counter,0
mov PopulateCounter2,0
mov candycounter,0
mov di,offset YCordArray
mov si,offset XCordArray
push si
.while PopulateCounter2<7
;-------------------------------------
        
        mov si,offset XCordArray
        mov PopulateCounter1,0
        ;-------------------------------------
            .while PopulateCounter1<7
                
                ;Randomizer
                push si
                mov si,offset candytypesArray
                add si,candycounter
                mov bl,[si]
                inc candycounter
                mov Random,bl
                pop si

                mov cx,0
                mov dx,0
                mov cx,[si]
                mov dx,[di]
                .if Random == 0

                    mov xcor,cx
                    mov ycor,dx
                    mov color,6
                    DrawRhombusCandy cx,dx
                    mov cx,xcor
                    mov dx,ycor
                    add cx,5
                    DrawRhombusCandy cx,dx
                    mov cx,xcor
                    mov dx,ycor
                    sub cx,4
                    DrawRhombusCandy cx,dx
                    
                .endif

                .if Random == 1
                    DrawActualCandy cx,dx
                .endif

                .if Random == 2
                    DrawSquareCandy cx,dx
                .endif

                .if Random == 3
                    DrawChoclateCandy cx,dx
                .endif

                .if Random==4
                    DrawTriangularCandy cx,dx
                .endif

                .if Random==5
                    DrawScaryCandy cx,dx
                .endif
                .if Random==6
                DrawBombCandy cx,dx
                .endif

            add si,2
            inc PopulateCounter1
        .endw
        ;-------------------------------------
    inc PopulateCounter2
    add di,2
;-------------------------------------
.endw

endM
;-----------  Populate Board Ends --------------

;-----------  Populate Board Macro -------------

populate_2 macro 

DisplayScore

mov si,offset candytypesArray
mov al,12
mov [si],al
mov [si+3],al
mov [si+6],al

mov [si+7],al
mov [si+13],al
mov [si+21],al
mov [si+27],al
mov [si+35],al
mov [si+41],al
mov [si+42],al

mov [si+45],al
mov [si+48],al


mov counter,0
mov PopulateCounter2,0
mov candycounter,0
mov di,offset YCordArray
mov si,offset XCordArray
push si
.while PopulateCounter2<7
;-------------------------------------
        
        mov si,offset XCordArray
        mov PopulateCounter1,0
        ;-------------------------------------
            .while PopulateCounter1<7
                
                ;Randomizer
                push si
                mov si,offset candytypesArray
                add si,candycounter
                mov bl,[si]
                inc candycounter
                mov Random,bl
                pop si

                mov cx,0
                mov dx,0
                mov cx,[si]
                mov dx,[di]
                .if Random == 0
                push cx
                push dx
                MakeBox cx,dX
                pop dx
                pop cx
                    mov xcor,cx
                    mov ycor,dx
                    mov color,6
                    DrawRhombusCandy cx,dx
                    mov cx,xcor
                    mov dx,ycor
                    add cx,5
                    DrawRhombusCandy cx,dx
                    mov cx,xcor
                    mov dx,ycor
                    sub cx,4
                    DrawRhombusCandy cx,dx
                    
                .endif

                .if Random == 1
                push cx
                push dx
                MakeBox cx,dX
                pop dx
                pop cx
                    DrawActualCandy cx,dx
                .endif

                .if Random == 2
                push cx
                push dx
                MakeBox cx,dX
                pop dx
                pop cx
                    DrawSquareCandy cx,dx
                .endif

                .if Random == 3
                push cx
                push dx
                MakeBox cx,dX
                pop dx
                pop cx
                    DrawChoclateCandy cx,dx
                .endif

                .if Random==4
                push cx
                push dx
                MakeBox cx,dX
                pop dx
                pop cx
                    DrawTriangularCandy cx,dx
                .endif

                .if Random==5
                push cx
                push dx
                MakeBox cx,dX
                pop dx
                pop cx
                    DrawScaryCandy cx,dx
                .endif
                .if Random==6
                push cx
                push dx
                MakeBox cx,dX
                pop dx
                pop cx
                DrawBombCandy cx,dx
                .endif

            add si,2
            inc PopulateCounter1
        .endw
        ;-------------------------------------
    inc PopulateCounter2
    add di,2
;-------------------------------------
.endw

endM
;-----------  Populate Board Ends --------------


;----------------------------------------------------------
;	procedure to create a window
;----------------------------------------------------------			
	newWindow macro
		mov ah, 0
		mov al, 12h
		int 10h
	endM


;----------------------------------------------------------
;                Phase - 1 ENDS HERE
;----------------------------------------------------------

;----------------------------------------------------------
;                Phase - 2 STARTS HERE
;----------------------------------------------------------

;----------------------------------------------------------
;              Get BoxNum in which mouse is clicked
;----------------------------------------------------------
    GetBoxNum macro
         
                mov ax,3
                int 33h
                mov Mousexcord,cx
                mov Mouseycord,dx

                add Mousexcord,20
                mov ax,Mousexcord
                mov bl,Boxsize
                div bl
                mov BoxCol,al

                    ; mov dl,BoxCol
                    ; add dl,48
                    ; mov ah,02h  ;Display box number
                    ; int 21h
                    

                mov ax,0
                
                add Mouseycord,40
                mov ax,Mouseycord
                mov bl,Boxsize
                div bl
                mov BoxRow,al
                ; ; mov dl,BoxRow
                ; ; add dl,48
                ; ; mov ah,02h  ;Display box number
                ; ; int 21h

                dec BoxRow
                mov al,BoxRow
                mov bl,7
                mul bl

                mov BoxNum,al
                mov al,BoxCol
                add BoxNum,al
                    ; mov dl,BoxNum ;//Display Box Numb
                    ; add dl,48
                    ; mov ah,02h
                    ; int 21h
    endM

;----------------------------------------------------------
;               Get Box Num Ends
;----------------------------------------------------------

;----------------------------------------------------------
;               Display Digits

    
;               Display Digits
;----------------------------------------------------------


;----------------------------------------------------------
;                 Play Game Macro starts
;----------------------------------------------------------
    playgame macro

    ;  ------------- MOUSE SETTINGS -------------
        mov ax,7
        mov cx,20
        mov dx,435  ;Setting Horizontal Limits for Mouse
        int 33h

        mov ax,8
        mov cx,40
        mov dx,445  ;Setting Vertical Limits for Mouse
        int 33h

        mov ax,1    ;Show Mouse Position
        int 33h


        mov cx,320  ;Set Mouse Position
        mov dx,240
        int 33h

    
    ;--------------- Getting Input of 2 Mouse Clicks ---------------
        .while No_of_moves<15
            mov ax,1    ;Show Mouse
            int 33h
            
            mov ax,0
            .while ax==0    ;Loop will run untill right click is pressed
            mov ax,5
                int 33h
                .if ax==1
                    GetBoxNum   ;Get the box number in which mouse is Clicked ... Box Number is stored in (BoxNum) variable
                .endif
            .endw

            mov ax,0
            mov al,BoxNum
            mov Box1,al
            mov BoxNum,0

            AddDelay 65500    ;Adding delay and then taking input for second Click
            AddDelay 65500

            mov ax,0
            .while ax==0
            mov ax,5
                int 33h
                .if ax==1
                    GetBoxNum   ;Get the box number in which mouse is Clicked ... BoxNum is stored in (BoxNum) variable
                .endif
            .endw

            mov al,BoxNum
            mov Box2,al
            mov BoxNum,0



        ;--------------- Checking if the clicks are in Adjacent Boxes ---------------
        
                        ;If yes then Swap the Candies and Increment Number of moves

            mov al,Box2
            mov bl,Box1
            dec bl
            ;Condition 1
            .if al==bl

                dec al  ;in al-->Box1 ,  in bl-->Box2 index

                mov si,offset candytypesArray
                mov di,offset candytypesArray
                add si,ax
                add di,bx

                mov cl,[di]
                mov ch,[si]
                mov [si],cl
                mov [di],ch
                
                ;DrawGrid
                ;PopulateBoard

                ; BlackCandy Box1
                ; mov cx,0
                ; mov dx,0
                ; BlackCandy Box2

                add No_of_moves,1 
                DrawGrid
                
                PopulateBoard
                


            .endif

            mov al,Box1
            mov bl,Box2
            dec bl
            ;Condition 2
            .if al==bl

                dec al

                mov si,offset candytypesArray
                mov di,offset candytypesArray
                add si,ax
                add di,bx

                mov cl,[di]
                mov ch,[si]
                mov [si],cl
                mov [di],ch

                ; BlackCandy Box1
                ; mov cx,0
                ; mov dx,0
                ; BlackCandy Box2

                add No_of_moves,1 ;Incrementing Moves

                DrawGrid
                PopulateBoard
                


            .endif

            mov al,Box2
            mov bl,Box1
            sub bl,7

            ;Condition 3
            .if al==bl
                
                add bl,6
                dec al

                mov si,offset candytypesArray
                mov di,offset candytypesArray
                add si,ax
                add di,bx

                mov cl,[di]
                mov ch,[si]
                mov [si],cl
                mov [di],ch

                ; BlackCandy Box1
                ; mov cx,0
                ; mov dx,0
                ; BlackCandy Box2

                add No_of_moves,1 ;Incrementing Moves

                DrawGrid
                PopulateBoard




            .endif

            mov al,Box1
            mov bl,Box2
            sub bl,7

            ;Condition 4
            .if al==bl
                add bl,6
                dec al

                mov si,offset candytypesArray
                mov di,offset candytypesArray
                add si,ax
                add di,bx

                mov cl,[di]
                mov ch,[si]
                mov [si],cl
                mov [di],ch

                ; BlackCandy Box1
                ; mov cx,0
                ; mov dx,0
                ; BlackCandy Box2

                add No_of_moves,1 ;Incrementing Moves

                DrawGrid
                PopulateBoard
                ; call findConsecutiveH

            .endif
            call findConsecutiveH

            .if consecutivecheck==1
                    PopulateCandiesAgain
                    Randomizer
                    mov ax,0
                    mov al,Random
                    .if al==0
                        add al,5
                    .endif
                    add score,ax
                    PopulateBoard
                    mov consecutivecheck,0
            .endif

            
        ;PopulateBoard
    
        .endw
        .if score<18
            YouLost
        .endif

        .if score>18
            YouWon
        .endif
        ;Here if the score is less than a certain limit then show that you failed..
        
    endM
;----------------------------------------------------------
;                 Play Game Macro Ends
;----------------------------------------------------------
;----------- Help Drawing Black Candy ----------
    BlackCandy macro value
        

        mov al,value
        dec al  ;AH=x-cord,Al=y-cord
        mov bl,7
        div bl
        
        mov dl,al   ;temp

        mov al,ah
        mov bl,60   ;Getting X-Cords from Box
        mul bl
        mov cx,ax
        add cx,20

        mov al,dl
        mov bl,60   ;Getting Y-Cords from Box
        mul bl
        mov dx,ax
        add dx,40

        DrawBlackCandy cx,dx
        mov ax,0
        mov dx,0
        mov cx,0
        mov bx,0

    endM

    NewRandomCandy macro value
        

        mov al,value
        dec al  ;AH=x-cord,Al=y-cord
        mov bl,7
        div bl
        
        mov dl,al   ;temp

        mov al,ah
        mov bl,60   ;Getting X-Cords from Box
        mul bl
        mov cx,ax
        add cx,20

        mov al,dl
        mov bl,60   ;Getting Y-Cords from Box
        mul bl
        mov dx,ax
        add dx,40
        
        push cx
        push dx
        DrawBlackCandy cx,dx

        Randomizer
        
        mov ax,0
        mov dx,0
        mov cx,0
        mov bx,0

    endM
;----------- Help Drawing Black Candy ----------
;----------------------------------------------------------
;                Phase - 2 STARTS HERE
;----------------------------------------------------------

;-----------------------------------------------
;               MACROS END HERE                |
;-----------------------------------------------

;!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
;           DATA SEGMENT STARTS HERE           |
;!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
.DATA
;------------------------- STRINGS DEFINITIONS -------------------------

;-------------------------- 1st WINDOW STRING --------------------------

    intro_string db ' Welcome to Candy Crush  $'
    PressKey db 'Please Select Level $'
    PressKey1 db '1). Level 1 $'
    PressKey2 db '2). Level 2 $'
    PressKey3 db '3). Level 3 $'

    EnterName db 'Please Enter Your Name..  $'
    WelcomeStr db ' Welcome $'
    Rules db ' RULES $'
    UserName db 100 dup ('$')
    Loading db ' L O A D I N G   P L E A S E   W A I T . . . $'
    Lost db 'Y O U   L O S T   T R Y   A G A I N :( $'
    Won db 'Y O U   W O N   C O N G R A T U L A T I O N S :) $'
	crushing db ' C R U S H I N G . ^ . $'


;-------------------------- SECOND WINDOW STRING ------------------------
    Rule1 db ' 1). Only 15 Moves are Allowed.$'
    Rule2 db ' 2). Score is Awarded when candies are Crushed.$'
    Rule3 db ' 3). For Candies to be crushed at least 3 of  $'
    Rule4 db '     them should be in a row or coloumn.$'
    Rule5 db ' 4). Scary Candy will get you the highest Score.$'
    
;-------------------------- Third WINDOW STRING ------------------------

    Player db 'Player :  $'
    Moves  db 'Moves $'
    Scores  db 'Score : $'
    TotalMoves db '/  15 $'
;------------------------------------------------------------------------

;------------------------- Arrays DEFINITIONS ---------------------------

    XCordArray word 20,80,140,200,260,320,380
    YCordArray word 40,100,160,220,280,340,400

    candytypesArray db 49 dup(0)
;------------------------------------------------------------------------

;------------------------- Variables DEFINITIONS ------------------------
    
    score word 0
    No_of_moves word 0
    gridCounter db 0
    counter  db 0
    counter1 word 0
    PopulateCounter1 db 0
    PopulateCounter2 word 0
    Random db 0
    digitcount db 0
    candycounter word 0
    Multvar dw 0
	Multvar2 dw 0
	Multvar3 db 0
	multiDigitDisplayCounter db 0
    level byte 0
    xcor dw 0
    ycor dw 0
    Mousexcord dw 0
    Mouseycord dw 0
    Boxsize db 60
    BoxCol byte 0   ;Coloumn num in which mouse is clicked
    BoxRow byte 0   ;Row num in which mouse is clicked
    BoxNum byte 0   ;BoxNum = (BoxRows-1)*7 + BoxCol
    Box1 byte 0
    Box2 byte 0
    color db  0
    consecutivecheck byte 0
    one db 0 
    two db 0
    three db 0
    proCounter dw 0
    boxNums db 0
    userNameSize db 0
	levelmsg1 db 'level1:  ','$'
	levelmsg2 db 'level2:  ','$'
	levelmsg3 db 'level3:  ','$'
	msgsize db 0
    filename db 'filenamX.txt', 0
	fhandle dw ?
	buffer db 100 dup('$')
	msg1 db "File not opened$", 0
	msg2 db "File opened$", 0
;------------------------------------------------------------------------

;!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
;           DATA SEGMENT ENDS HERE             |
;!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!



;!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
;           CODE SEGMENT STARTS HERE           |
;!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    YouWon macro

        newWindow

            mov color,5
    mov cx,20
    mov dx,50

    mov counter1,600
        .while dx<440
                mov cx,20
                drawhorizontalline cx,dx,counter1,color
                inc color
                .if color==14
                mov color,1
                .endif
                add dx,20
                mov cx,50000
                .while cx>0
                    dec cx
                .endw
                mov cx,50000
                .while cx>0
                    dec cx
                .endw
        .endw
; REMOVING THE LINES
mov dx,190

    mov counter1,600
        .while dx<440
                mov cx,20
                .if dx<300
                drawhorizontalline cx,dx,counter1,0
                .endif
                add dx,20
                mov cx,65500
                .while cx>0
                    dec cx
                .endw
        .endw

            mov ah,02h
            mov bx,0
            mov dh,15   ; setting the Cursor
            mov dl,14
            int 10h

            lea dx,Won   ;Displaying the string
            mov ah,09h 
            int 21h

            mov ah,02h
            mov bx,0
            mov dh,0   ; setting the Cursor
            mov dl,0
            int 10h

    endM
;-------------- YOU LOST SCREEN -------------------
        YouLost macro

        newWindow

            mov color,5
    mov cx,20
    mov dx,50

    mov counter1,600
        .while dx<440
                mov cx,20
                drawhorizontalline cx,dx,counter1,color
                inc color
                .if color==14
                mov color,1
                .endif
                add dx,20
                mov cx,50000
                .while cx>0
                    dec cx
                .endw
                mov cx,50000
                .while cx>0
                    dec cx
                .endw
        .endw
; REMOVING THE LINES
mov dx,190

    mov counter1,600
        .while dx<440
                mov cx,20
                .if dx<300
                drawhorizontalline cx,dx,counter1,0
                .endif
                add dx,20
                mov cx,65500
                .while cx>0
                    dec cx
                .endw
        .endw

            mov ah,02h
            mov bx,0
            mov dh,15   ; setting the Cursor
            mov dl,20
            int 10h

            lea dx,Lost   ;Displaying the string
            mov ah,09h 
            int 21h

            mov ah,02h
            mov bx,0
            mov dh,0   ; setting the Cursor
            mov dl,0
            int 10h

    endM

;==============================================================================
    Level_1 macro
            

            Window3   ;Draws grid and populates board 
        
            playgame  ;Play Game For Level_1
    endM

    Level_3 macro

            PopulateCandies
            DrawGrid_3
            populate_3
            playgame
    endM

    Level_2 macro

            newWindow
            PopulateCandies
            populate_2
            playgame

    endM

.CODE
;----------------------  FOUND SAME HORIZONTALLY -----------------------
foundSameH proc

        ; PopulateCandiesAgain
        ; add score,3
        ; PopulateBoard
        mov consecutivecheck,1
        ret

    foundSameH endp

;---------------------- FIND CONSECUTIVE HORIZONTALLY -----------------------
findConsecutiveH proc

        mov proCounter,0
        mov cx,4

        .while cx > 0

            dec cx

            mov si, offset candytypesArray
            add si,proCounter
            mov bl,[si]

            mov ax,0
            mov ax,proCounter
            mov boxNums,al

            inc proCounter

            mov one,bl
            inc si
            mov bl,[si]
            mov two,bl

            .if(one==bl)

                inc si
                mov bl,[si]
                mov three,bl

                .if(two==bl)
                    
                    call foundSameH

                .endif


            .endif

        .endw

        mov cx,5
        mov proCounter,0

        .while cx > 0

            dec cx

            mov si, offset candytypesArray
            add si,proCounter
            add si,7
            mov bl,[si]

            mov ax,0
            mov ax,proCounter
            add ax,7
            mov boxNums,al

            inc proCounter

            mov one,bl
            inc si
            mov bl,[si]
            mov two,bl

            .if(one==bl)

                inc si
                mov bl,[si]
                mov three,bl

                .if(two==bl)
                    
                    call foundSameH

                .endif


            .endif

        .endw

        mov cx,5
        mov proCounter,0

        .while cx > 0

            dec cx

            mov si, offset candytypesArray
            add si,proCounter
            add si,14
            mov bl,[si]

            mov ax,0
            mov ax,proCounter
            add ax,14
            mov boxNums,al

            inc proCounter

            mov one,bl
            inc si
            mov bl,[si]
            mov two,bl

            .if(one==bl)

                inc si
                mov bl,[si]
                mov three,bl

                .if(two==bl)
                    
                    call foundSameH

                .endif


            .endif

        .endw

        mov cx,5
        mov proCounter,0

        .while cx > 0

            dec cx

            mov si, offset candytypesArray
            add si,proCounter
            add si,21
            mov bl,[si]

            mov ax,0
            mov ax,proCounter
            add ax,21
            mov boxNums,al

            inc proCounter

            mov one,bl
            inc si
            mov bl,[si]
            mov two,bl

            .if(one==bl)

                inc si
                mov bl,[si]
                mov three,bl

                .if(two==bl)
                    
                    call foundSameH

                .endif


            .endif

        .endw

        mov cx,5
        mov proCounter,0

        .while cx > 0

            dec cx

            mov si, offset candytypesArray
            add si,proCounter
            add si,28
            mov bl,[si]

            mov ax,0
            mov ax,proCounter
            add ax,28
            mov boxNums,al

            inc proCounter

            mov one,bl
            inc si
            mov bl,[si]
            mov two,bl

            .if(one==bl)

                inc si
                mov bl,[si]
                mov three,bl

                .if(two==bl)
                    
                    call foundSameH

                .endif


            .endif

        .endw

        mov cx,5
        mov proCounter,0

        .while cx > 0

            dec cx

            mov si, offset candytypesArray
            add si,proCounter
            add si,35
            mov bl,[si]

            mov ax,0
            mov ax,proCounter
            add ax,35
            mov boxNums,al

            inc proCounter

            mov one,bl
            inc si
            mov bl,[si]
            mov two,bl

            .if(one==bl)

                inc si
                mov bl,[si]
                mov three,bl

                .if(two==bl)
                    
                    call foundSameH

                .endif


            .endif

        .endw

        mov cx,5
        mov proCounter,0

        .while cx > 0

            dec cx

            mov si, offset candytypesArray
            add si,proCounter
            add si,42
            mov bl,[si]

            mov ax,0
            mov ax,proCounter
            add ax,42
            mov boxNums,al

            inc proCounter

            mov one,bl
            inc si
            mov bl,[si]
            mov two,bl

            .if(one==bl)

                inc si
                mov bl,[si]
                mov three,bl

                .if(two==bl)
                    
                    call foundSameH

                .endif


            .endif

        .endw


        ret

    findConsecutiveH endp

;------------------ MULTI DIGIT PROC -----------------------------
DisplayMult Proc

		mov ax, Multvar

		multiDigitDisplayPUSH:
			CMP ax, 0
			je multiDigitDisplayPOP
			mov bl, 10

			div bl
			mov bx, 0
			mov bl, al
			mov Multvar2, bx
			mov Multvar3, ah
			mov bx, 0
			mov bl, ah
			push bx
			mov ax, Multvar2
			inc multiDigitDisplayCounter
			JMP multiDigitDisplayPUSH
		
		multiDigitDisplayPOP:
			CMP multiDigitDisplayCounter, 0
			JE multiDigitDisplayEND
			pop bx
			mov dx, bx
			add dx, 48
			mov ah, 02
			int 21h
			dec multiDigitDisplayCounter
			JMP multiDigitDisplayPOP
		
		multiDigitDisplayEND:
			ret
	DisplayMult endP


;-------------------- FILE PROC -----------------------
fileh proc
		
	mov ah, 3ch
	mov si, offset filename
	mov dx, si
	mov cl, 0

    int 21h

	mov fhandle, ax

		jc label1
			;outputString msg2
		label1End:
		
		call typeToFile

		mov cx,lengthof levelmsg1
		dec cx

		mov bx,ax
		mov  dx, offset levelmsg1
		mov  ah, 40h
		mov  bx, fhandle
		int  21h

		mov cx,lengthof levelmsg2
		dec cx


		mov bx,ax
		mov  dx, offset levelmsg2
		mov  ah, 40h
		mov  bx, fhandle
		int  21h

		mov cx,lengthof levelmsg3
		dec cx


		mov bx,ax
		mov  dx, offset levelmsg3
		mov  ah, 40h
		mov  bx, fhandle
		int  21h
		
		mov ah, 3eh
		mov bx, fhandle
		
		int 21h

		mov ah,4ch
		int 21h
		
		label1:
			;outputString msg1
		JMP label1End

		ret

	fileh endp

	typeToFile Proc

			
			mov cx,0
			mov cl,userNameSize

			mov bx,ax
			mov  dx, offset UserName
			mov  ah, 40h
			mov  bx, fhandle
			int  21h

		ret

	typeToFile endp

;-------------------- MAIN PROC -----------------------

main proc

    mov ax,@data
    mov ds,ax
    mov ax,0
    mov ah,00h


    Window1   ;Intro Animations

    Window2   ;Rules Window

    .if level==1
        Level_1
    .endif

    .if level==2    
        Level_2
    .endif

    .if level==3
        Level_3
    .endif

    call fileh

    MOV AH,4CH
    INT 21h
    main endp

    End main
    
;!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
;           CODE SEGMENT ENDS HERE             |
;!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!