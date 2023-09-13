#Leland Meadows Bash Script CSIS119

echo This is Leland\'s script! I\'ll be telling you about myself in this.

echo It would be rude to talk about myself before introducing yourself, what\'s your name?
read -p 'Enter your name:' userName
nameCount=0
echo Hi $userName! Your name has ${#userName} characters, that\'s cool I guess. I bet I could say it that many times.
while [ $nameCount -lt ${#userName} ]
do
	echo $userName!
	((nameCount=nameCount+1))
done

echo

# loading all functions before
# menu loop exists within these nested functions
function PrintMenu(){
menuChoice=0

echo Select what you want to see about!
echo

echo 1: Hobbies
echo 2: Pets
echo 3: Aspirations
echo Type anything other than these to quit.

read -p 'Read:' menuChoice

function ChooseMenu(){
if [[ $menuChoice -eq 1 ]]
	then
		Hobbies;
fi

if [[ $menuChoice -eq 2 ]]
	then
		Pets;
fi

if [[ $menuChoice -eq 3 ]]
	then
		Aspirations;
fi
}

function Hobbies(){
echo 
echo Hobbies! I have a couple. I practice drawing and 3d modeling, I code and like making games!
echo I also work out! I like lifting weights, but I despise cardio. But I should be keep doing it or my heart will explode or something.
echo 
echo 1: Further Details
echo 2: "I do not care."
hobbyChoice=0

read -p 'Choice:' hobbyChoice
if [[ hobbyChoice -eq 1 ]]
	then
		echo
		echo "You wanna hear more? Well, I model in blender, I also typically texture my models in there too."
		echo "My games are made in unity, and I'm working on a big one right now. I am pretty happy with it so far!";
	fi
echo
PrintMenu
}

function Pets(){
echo
echo "I have a cat named Kono, and he's pretty neat. Even though he's really nice he is needy, so he can get on my nerves."
echo "My friends always say he looks weirdly human for a cat. Which... I can't help but to agree with. I have an uncanny cat."
echo At least he\'s expressive...
echo 
echo How many pets do you have?
userPets=0

read -p 'Your Pets:' userPets

if [[ $userPets -gt 50 ]]
then
	echo "I won't lie, you need help.";
else
	echo $userPets? "That's cool! Hopefully that doesn't say 0!";
fi
echo
PrintMenu
}

function Aspirations(){
echo 
echo "You selected Aspirations!"
loading=0
echo "Now loading Aspirations..."
until [[ $loading -gt 4 ]]
do
	echo "Loading..." #it needed to load, this was necessary
	((loading=loading+1))
	done
echo "Done loading!"
echo
echo "My aspirations are pretty clean cut. I want to make successful games!"
echo "This is hard though, and I need to pay bills so I can avoid dying, so I would like to be a software developer in the meantime."
echo "Also I aspire to match this criteria!"
echo 
echo "The number of times help is said in the first part of the help command is:"
help | grep  -c help # I'm sorry, I had a quota to meet

echo Wow!
echo
PrintMenu
}

ChooseMenu
}

PrintMenu # function called on that starts everything
