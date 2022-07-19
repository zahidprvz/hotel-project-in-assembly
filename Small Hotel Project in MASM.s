include irvine32.inc
.data
	m1 byte "   *** Welcome to our Restaurant! *** " , 0
	m2 byte "  What would you like to take? " , 0
	m3 byte " ** 1. Breakfast		      ** " , 0
	m4 byte " ** 2. Lunch			      ** " , 0
	m5 byte " ** 3. Dinner			      ** " , 0
	m6 byte " ** 4. Snacks			      ** " , 0
	m7 byte " ** 5. Soft Drinks		      ** " , 0


	m8 byte "   *** Choose your food from menu! *** " , 0

	;forbreakfast

	m9 byte " ** 1. Roti		10/-	      ** " , 0
	v1 dd 10
	m10 byte " ** 2. Naan		10/-	      ** " , 0
	v2 dd 10
	m11 byte " ** 3. Paratha	        10/-	      ** " , 0
	v3 dd 10
	m12 byte " ** 4. Daal		40/-          ** " , 0
	v4 dd 40
	m13 byte " ** 5. Vegetable	40/-	      ** " , 0
	v5 dd 40
	m14 byte " ** 6. Fried Egg	20/-	      ** " , 0
	v6 dd 20
	m15 byte " ** 7. Goats Feet      100/-	      ** " , 0
	v7 dd 100
	
	m16 byte " ***Invalid Entry*** " , 0
	m17 byte " ***Try Again*** " , 0

	quantity db ?

	m18 byte " 1. Go back to main menu! " , 0
	m19 byte " 2. Exit! " , 0
	m20 byte " Enter your order : " , 0
	m21 byte " Quantity : " , 0
	m22 byte " Your bill is : " , 0

	; for lunch

	m23 byte " ** 1.Karachi Biryani (kabab+egg)90/- ** " , 0
	v8 dd 90
	m24 byte " ** 2.Chicken Biryani(kabab+egg) 90/- ** " , 0
	v9 dd 90
	m25 byte " ** 3.Pulaao                     30/- ** " , 0
	v10 dd 30
	m26 byte " ** 4.Roast Chicken              90/- ** " , 0
	v11 dd 90
	m27 byte " ** 5.Mutton                     90/- ** " , 0
	v12 dd 90
	m28 byte " ** 6.Rice                       30/- ** " , 0
	v13 dd 30
 	m29 byte " ** 7.Fish                       90/- ** " , 0
	v14 dd 90
 	m30 byte " ** 8.Chatni                     30/- ** " , 0
	v15 dd 30

	; for dinner

	m31 byte " ** 1.Beef                   60/-     ** " , 0
	v16 dd 60
	m32 byte " ** 2.Roast Chicken          80/-     ** " , 0
	v17 dd 80
	m33 byte " ** 3.Goat Liver(kalaiji)   150/-     ** " , 0
	v18 dd 150
	m34 byte " ** 4.Rho fish              500/-     ** " , 0
	v19 dd 500
	m35 byte " ** 5.Mushka fish          1000/-     ** " , 0
	v20 dd 1000

	; for snacks

	m36 byte " ** 1.Cake                50/-        ** " , 0
	v21 dd 50
	m37 byte " ** 2.Samosa              50/-        ** " , 0
	v22 dd 50	
	m38 byte " ** 3.Jalaibi             70/-        ** " , 0
	v23 dd 70
	m39 byte " ** 4.Biscuits            40/-        ** " , 0
	v24 dd 40

	; for drinks

	m40 byte " ** 1.Lassi               35/-        ** " , 0
	v25 dd 35
	m41 byte " ** 2.Sprite             110/-        ** " , 0
	v26 dd 110
	m42 byte " ** 3.Coffee              70/-        ** " , 0
	v27 dd 70
	m43 byte " ** 4.Tea                 45/-        ** " , 0
	v28 dd 45
	m44 byte " ** 5.Coke               110/-        ** " , 0
	v29 dd 110
	m45 byte " ** 6.Mango Juice        110/-        ** " , 0
	v30 dd 110

	; for star size and showing it in output screen

	mr1 byte " **				      ** " , 0
	mr2 byte " *************************************** " , 0
	mr3 byte " **                                   ** " , 0
	mr4 byte " **				      ** " , 0
	mr5 byte " *************************************** " , 0

.code
	main proc

	top:
			mov edx , offset m1
			call writestring

			call crlf

			mov edx , offset mr2
			call writestring
			call crlf
			mov edx , offset mr2
			call writestring
			call crlf
			mov edx , offset mr3
			call writestring
					call crlf			
			mov edx , offset m3
			call writestring
			call crlf
			mov edx , offset m4
			call writestring
			call crlf
			mov edx , offset m5
			call writestring
			call crlf
			mov edx , offset m6
			call writestring
			call crlf
			mov edx , offset m7
			call writestring
			call crlf
			mov edx , offset mr1
			call writestring
			call crlf
			mov edx , offset mr2
			call writestring
			call crlf
			mov edx , offset mr2
			call writestring
			call crlf
			call crlf
			mov edx , offset m2
			call writestring
			call readint

			cmp eax , 1
			je breakfast
			cmp eax , 2
			je lunch
			cmp eax , 3
			je dinner
			cmp eax , 4
			je snacks
			cmp eax , 5
			je softdrinks
			jmp invalid

	breakfast:
			call crlf

			mov edx , offset m8
			call writestring
			call crlf

			mov edx , offset mr5
			call writestring
			call crlf

			mov edx , offset mr5
			call writestring
			call crlf

			mov edx , offset mr4
			call writestring
			call crlf

			mov edx , offset m9		; item 1 
			call writestring
			call crlf

			mov edx , offset m10	; item 2
			call writestring
			call crlf

			mov edx , offset m11	; item 3
			call writestring
			call crlf

			mov edx , offset m12	; item 4
			call writestring
			call crlf

			mov edx , offset m13	; item 5
			call writestring
			call crlf

			mov edx , offset m14	; item 6
			call writestring
			call crlf

			mov edx , offset m15	; item 7
			call writestring
			call crlf

			mov edx , offset mr4
			call writestring
			call crlf

			
			mov edx , offset mr5
			call writestring
			call crlf
			
			mov edx , offset mr5
			call writestring
			call crlf

			
			mov edx , offset m20		;order your type of food
			call writestring
			call readint
			call crlf

			cmp eax , 1
			je ten

			cmp eax , 2
			je ten

			cmp eax , 3
			je ten

			cmp eax , 4
			je forty

			cmp eax , 5
			je forty

			cmp eax , 6
			je twenty

			cmp eax , 7
			je hundred

			jmp invalid

	forty:
			mov edx , offset m21
			call writestring
			call readint
				
			mov ebx , v4
			mul ebx
			
			call crlf
			mov edx , offset m22
			call writestring
			call writedec

			call crlf
			mov edx , offset m18
			call writestring
			call crlf
			mov edx , offset m19
			call writestring
			call readint
			cmp eax , 1
			je top
			cmp eax , 2
			je quit
			jmp invalid

	ten:
			mov edx , offset m21
			call writestring
			call readint

			mov ebx , v1
			mul ebx
			
			call crlf
			mov edx , offset m22
			call writestring
			call writedec
			call crlf
			
			mov edx , offset m18
			call writestring
			call crlf
			mov edx , offset m19
			call writestring
			call readint
			cmp eax , 1
			je top
			cmp eax , 2
			je quit
			jmp invalid

	twenty:
			mov edx , offset m21
			call writestring
			call readint

			mov ebx , v6
			mul ebx
			
			call crlf
			mov edx , offset m22
			call writestring
			call writedec
			call crlf
			mov edx , offset m18
			call writestring
			call crlf
			mov edx , offset m19
			call writestring
			call readint
			cmp eax , 1
			je top
			cmp eax , 2
			je quit
			jmp invalid

	hundred:
			mov edx , offset m21
			call writestring
			call readint

			mov ebx , v7
			mul ebx
			
			call crlf
			mov edx , offset m22
			call writestring
			call writedec
			call crlf
			mov edx , offset m18
			call writestring
			call crlf
			mov edx , offset m19
			call writestring
			call readint
			cmp eax , 1
			je top
			cmp eax , 2
			je quit
			jmp invalid

	lunch:
			mov edx , offset m8
			call writestring
			call crlf
			mov edx , offset mr5
			call writestring
			call crlf
			mov edx , offset mr5
			call writestring
			call crlf
			mov edx , offset mr4
			call writestring
			call crlf

			mov edx , offset m23
			call writestring
			call crlf

			mov edx , offset m24
			call writestring
			call crlf

			mov edx , offset m25
			call writestring
			call crlf

			mov edx , offset m26
			call writestring
			call crlf

			mov edx , offset m27
			call writestring
			call crlf

			mov edx , offset m28
			call writestring
			call crlf

			mov edx , offset m29
			call writestring
			call crlf

			mov edx , offset m30
			call writestring
			call crlf

			mov edx , offset mr4
			call writestring
			call crlf

			mov edx , offset mr5
			call writestring
			call crlf

			mov edx , offset mr5
			call writestring
			call crlf

			mov edx , offset m20		;order your type of food
			call writestring
			call readint
			call crlf
			
			cmp eax , 1
			je ninty

			cmp eax , 2
			je ninty

			cmp eax , 3
			je thirty

			cmp eax , 4
			je ninty

			cmp eax , 5
			je ninty

			cmp eax , 6
			je thirty

			cmp eax , 7
			je ninty

			cmp eax , 8
			je thirty

			jmp invalid

	ninty:
			mov edx , offset m21
			call writestring
			call readint
			mov ebx , v8
			mul ebx 
			mov edx , offset m22
			call writestring
			call writedec
			call crlf
			mov edx , offset m18
			call writestring
			call crlf
			mov edx , offset m19
			call writestring
			call readint
			cmp eax , 1
			je top
			cmp eax , 2
			je quit
			jmp invalid

	thirty: 
			mov edx , offset m21
			call writestring
			call readint
			mov ebx , v10
			mul ebx 
			mov edx , offset m22
			call writestring
			call writedec
			call crlf
			mov edx , offset m18
			call writestring
			call crlf
			mov edx , offset m19
			call writestring
			call readint
			cmp eax , 1
			je top
			cmp eax , 2
			je quit
			jmp invalid


	dinner:
			mov edx , offset m8
			call writestring
			call crlf
			mov edx , offset mr5
			call writestring
			call crlf
			mov edx , offset mr5
			call writestring
			call crlf
			mov edx , offset mr4
			call writestring
			call crlf

			mov edx , offset m31
			call writestring
			call crlf

			
			mov edx , offset m32
			call writestring
			call crlf

			
			mov edx , offset m33
			call writestring
			call crlf

			
			mov edx , offset m34
			call writestring
			call crlf

			
			mov edx , offset m35
			call writestring
			call crlf

			mov edx , offset mr4
			call writestring
			call crlf

			
			mov edx , offset mr5
			call writestring
			call crlf
			
			mov edx , offset mr5
			call writestring
			call crlf

			mov edx , offset m20		;order your type of food
			call writestring
			call readint
			call crlf
			
			cmp eax , 1
			je sixty

			cmp eax , 2
			je eighty

			cmp eax , 3
			je onefifty

			cmp eax , 4
			je fivehundred

			cmp eax , 5
			je thousand

	sixty:
			mov edx , offset m21
			call writestring
			call readint
			mov ebx , v16
			mul ebx 
			mov edx , offset m22
			call writestring
			call writedec
			call crlf
			mov edx , offset m18
			call writestring
			call crlf
			mov edx , offset m19
			call writestring
			call readint
			cmp eax , 1
			je top
			cmp eax , 2
			je quit
			jmp invalid 

	eighty:
			mov edx , offset m21
			call writestring
			call readint
			mov ebx , v17
			mul ebx 
			mov edx , offset m22
			call writestring
			call writedec
			call crlf
			mov edx , offset m18
			call writestring
			call crlf
			mov edx , offset m19
			call writestring
			call readint
			cmp eax , 1
			je top
			cmp eax , 2
			je quit
			jmp invalid
	
	onefifty:
			mov edx , offset m21
			call writestring
			call readint
			mov ebx , v18
			mul ebx 
			mov edx , offset m22
			call writestring
			call writedec
			call crlf
			mov edx , offset m18
			call writestring
			call crlf
			mov edx , offset m19
			call writestring
			call readint
			cmp eax , 1
			je top
			cmp eax , 2
			je quit
			jmp invalid

	fivehundred:
			mov edx , offset m21
			call writestring
			call readint
			mov ebx , v19
			mul ebx 
			mov edx , offset m22
			call writestring
			call writedec
			call crlf
			mov edx , offset m18
			call writestring
			call crlf
			mov edx , offset m19
			call writestring
			call readint
			cmp eax , 1
			je top
			cmp eax , 2
			je quit
			jmp invalid

	thousand:
			mov edx , offset m21
			call writestring
			call readint
			mov ebx , v20
			mul ebx 
			mov edx , offset m22
			call writestring
			call writedec
			call crlf
			mov edx , offset m18
			call writestring
			call crlf
			mov edx , offset m19
			call writestring
			call readint
			cmp eax , 1
			je top
			cmp eax , 2
			je quit
			jmp invalid

	snacks:
			call crlf

			mov edx , offset m8
			call writestring
			call crlf

			mov edx , offset mr5
			call writestring
			call crlf

			mov edx , offset mr5
			call writestring
			call crlf

			mov edx , offset mr4
			call writestring
			call crlf

			mov edx , offset m36
			call writestring
			call crlf

			mov edx , offset m37
			call writestring
			call crlf

			mov edx , offset m38
			call writestring
			call crlf

			mov edx , offset m39
			call writestring
			call crlf

			mov edx , offset mr4
			call writestring
			call crlf

			
			mov edx , offset mr5
			call writestring
			call crlf
			
			mov edx , offset mr5
			call writestring
			call crlf

			mov edx , offset m20		;order your type of food
			call writestring
			call readint
			call crlf
			
			cmp eax , 1
			je fifty1

			cmp eax , 2
			je fifty1

			cmp eax , 3
			je seventy

			cmp eax , 4
			je forty1
			jmp invalid
			jmp quit
			
	fifty1:
			mov edx , offset m21
			call writestring
			call readint
			mov ebx , v21
			mul ebx 
			mov edx , offset m22
			call writestring
			call writedec
			call crlf
			mov edx , offset m18
			call writestring
			call crlf
			mov edx , offset m19
			call writestring
			call readint
			cmp eax , 1
			je top
			cmp eax , 2
			je quit
			jmp invalid


	seventy:
			mov edx , offset m21
			call writestring
			call readint
			mov ebx , v23
			mul ebx 
			mov edx , offset m22
			call writestring
			call writedec
			call crlf
			mov edx , offset m18
			call writestring
			call crlf
			mov edx , offset m19
			call writestring
			call readint
			cmp eax , 1
			je top
			cmp eax , 2
			je quit
			jmp invalid


	forty1:
			mov edx , offset m21
			call writestring
			call readint
			mov ebx , v24
			mul ebx 
			mov edx , offset m22
			call writestring
			call writedec
			call crlf
			mov edx , offset m18
			call writestring
			call crlf
			mov edx , offset m19
			call writestring
			call readint
			cmp eax , 1
			je top
			cmp eax , 2
			je quit
			jmp invalid


			jmp quit
			

	softDrinks:
			call crlf

			mov edx , offset m8
			call writestring
			call crlf

			mov edx , offset mr5
			call writestring
			call crlf

			mov edx , offset mr5
			call writestring
			call crlf

			mov edx , offset mr4
			call writestring
			call crlf

			mov edx , offset m40
			call writestring
			call crlf

			mov edx , offset m41
			call writestring
			call crlf

			mov edx , offset m42
			call writestring
			call crlf

			mov edx , offset m43
			call writestring
			call crlf

			mov edx , offset m44
			call writestring
			call crlf

			mov edx , offset m45
			call writestring
			call crlf

			mov edx , offset mr4
			call writestring
			call crlf

			mov edx , offset mr5
			call writestring
			call crlf

			mov edx , offset mr5
			call writestring
			call crlf

			mov edx , offset m20		;order your type of food
			call writestring
			call readint
			call crlf
			
			
			cmp eax , 1
			je thirtyfive

			cmp eax , 2
			je oneten

			cmp eax , 3
			je seventy1

			cmp eax , 4
			je oneten

			cmp eax , 5
			je oneten

			cmp eax , 6
			je oneten

	thirtyfive:
			mov edx , offset m21
			call writestring
			call readint
			mov ebx , v25
			mul ebx 
			mov edx , offset m22
			call writestring
			call writedec
			call crlf
			mov edx , offset m18
			call writestring
			call crlf
			mov edx , offset m19
			call writestring
			call readint
			cmp eax , 1
			je top
			cmp eax , 2
			je quit
			jmp invalid


	oneten:
			mov edx , offset m21
			call writestring
			call readint
			mov ebx , v26
			mul ebx 
			mov edx , offset m22
			call writestring
			call writedec
			call crlf
			mov edx , offset m18
			call writestring
			call crlf
			mov edx , offset m19
			call writestring
			call readint
			cmp eax , 1
			je top
			cmp eax , 2
			je quit
			jmp invalid


	seventy1:
			mov edx , offset m21
			call writestring
			call readint
			mov ebx , v27
			mul ebx 
			mov edx , offset m22
			call writestring
			call writedec
			call crlf
			mov edx , offset m18
			call writestring
			call crlf
			mov edx , offset m19
			call writestring
			call readint
			cmp eax , 1
			je top
			cmp eax , 2
			je quit
			jmp invalid



	fortyfive:
			mov edx , offset m21
			call writestring
			call readint
			mov ebx , v28
			mul ebx 
			mov edx , offset m22
			call writestring
			call writedec
			call crlf
			mov edx , offset m18
			call writestring
			call crlf
			mov edx , offset m19
			call writestring
			call readint
			cmp eax , 1
			je top
			cmp eax , 2
			jmp invalid

			je quit
			


			call crlf
			call crlf
			
			
	invalid:
			mov edx , offset m16
			call writestring
			call crlf
			mov edx , offset m17
			call writestring
			call crlf
			call crlf
			jmp top


		quit:
			call crlf

		exit
		main endp
end main