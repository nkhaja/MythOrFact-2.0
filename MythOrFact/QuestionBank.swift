//
//  QuestionBank.swift
//  MythOrFact
//
//  Created by Nabil K on 2016-07-06.
//  Copyright © 2016 Nabil. All rights reserved.
//

import UIKit

class QuestionBank: NSObject {
    
    var allQuestions: [Question] = []
    var qbank: [Question] = []
    

    
    let q1 = Question(text: "It takes 7 years for bubble gum to be digested if swallowed.", fact: false, category: "c2food", answer: "False! The bubblegum will digest normally along with your other food.", title: "Sweet As Bubblegum")
    
    let q2 = Question(text: "A person’s nails and hair continue to grow after they have passed away.", fact: false, category: "c1body", answer: "False! The skin shrinks away from the base, making it seem as though growth has taken place.", title: "Spooky Business")
    
    let q3 = Question(text: "Eating up to an hour before jumping in the pool will increase your chances of muscle cramps.", fact: false, category: "c2food", answer: "False!  There is no evidence to support this statement. ", title: "Eat, Swim, Survive?")
    
    
    let q4 = Question(text: "Humans evolved from chimpanzees.", fact: false, category: "c3science", answer: "False! Chimpanzees are the closest living relatives of humans.", title: "That's Bananas!")
    
    let q5 = Question(text: "Goldfish have the memory span of a few seconds.", fact: false, category: "c3science", answer: "False! The memory span of a goldfish can last up to quite a few months!", title: "DERP")
    
    let q6 = Question(text: "The Great Wall of China can be seen from space..", fact: false, category: "c4world", answer: "False! None of the Apollo astronauts claim that the Great Wall can be seen with the unaided eye, even at low orbit.", title: "Space Oddity")
    
    let q7 = Question(text: "Coffee is made from beans.", fact: false, category: "c2food", answer: "False! Coffee is actually made from a seed!", title: "Beanboozled")
    
    let q8 = Question(text: "Mount Everest is not the tallest mountain in the world", fact: true, category: "c4world", answer: "True! Mauna Kea in Hawaii is the tallest when measured from base to summit", title: "The Summit")
    
    let q10 = Question(text: "Peanuts are not a type of nut", fact: true, category: "c2food", answer: "True! They belong to the plant family, Leguminosae", title: "That's Nuts!")
    
    let q11 = Question(text: "Giving sugar to children does not causes hyperactivity", fact: true, category: "c2food", answer: "True! Research conducted shows no evidence of this.", title: "Supercharged")
    
    let q12 = Question(text: "A tradition that originates from China are fortune cookies.", fact: false, category: "c4world", answer: "False! This tradition started in the United States.", title: "Sum Ting Wong")
    
    let q13 = Question(text: "Caffeine does not dehydrate you.", fact: true, category: "c2food", answer: "True! (Caffeinated drinks only have a diuretic effect causing increased urination)", title: "The Thirst Is Real")
    
    let q14 = Question(text: "Vitamin C is an effective treatment for a cold.", fact: false, category: "c2food", answer: "False!  There is little to no evidence to suggest that it helps. ", title: "Emergen-C")
    
    let q15 = Question(text: "While in London you are approximately 6ft away from a rat at any given time.", fact: true, category: "c4world", answer: "True! Be careful!", title: "Yikes!")
    
    let q16 = Question(text: "Dropping a penny from the top of the Empire State Building would kill someone on impact.", fact: false, category: "c3science", answer: "False! There is so much air resistance that the penny never really gathers that much speed.", title: "Tons Of Cents")
    
    let q17 = Question(text: "Handling a baby bird will make its mother reject it.", fact: false, category: "c3science", answer: "False! Most birds have a poor sense of smell, so most of them wouldn’t even notice.", title: "Don't Touch!")
    
    let q18 = Question(text: "You need to wait 24 hours before reporting a missing person to the police.", fact: false, category: "c4world", answer: "False!  You should report it as soon as possible!", title: "Poof!")
    
    let q19 = Question(text: "Your blood is blue before it's oxygenated.", fact: false, category: "c1body", answer: "False!  Your blood is always red!", title: "I'm Positive")
    
    let q20 = Question(text: "Bulls are enraged by the color red", fact: false, category: "c3science", answer: "False! Bulls are colorblind and only react to the movement of the matador.", title: "CHARGE")
    
    let q21 = Question(text: "Frankenstein is a scary monster.", fact: false, category: "c4world", answer: "False! Frankenstein is actually the name of the monster’s creator.", title: "Scary Monsters...")
    
    let q22 = Question(text: "Microwave radiation cannot cause cancer..", fact: true, category: "c3science", answer: "True! Most experts say that microwave ovens don't give off enough energy to damage DNA in cells so they can't cause cancer.", title: "Get Away!")
    
    let q23 = Question(text: "Salt water does not boil quicker.", fact: true, category: "c3science", answer: "True! in fact, salt water has a higher boiling point and so takes longer.", title: "I'm Salty")
    
    let q24 = Question(text: "Eating carrots does not improve your vision.", fact: true, category: "c2food", answer: "True! Carrots only help to decrease muscle degeneration.", title: "20/20")
    
    let q25 = Question(text: "The capital of Australia is Sydney.", fact: false, category: "c4world", answer: "False! The capital of Australia is Canberra.", title: "U Wot M8")
    
    let q26 = Question(text: "Knowledge is knowing that a tomato is a vegetable.", fact: false, category: "c2food", answer: "False! A tomato is actually a fruit. ", title: "Can You Ketchup?")
    
    let q27 = Question(text: "It takes 5 seconds for bacteria to hop onto your food when dropped on the floor.", fact: false, category: "c2food", answer: "False! It only takes 1 second for bacteria to hop on your food.", title: "5 Second Rule!")
    
    let q28 = Question(text: "Senses of vision, hearing, touch, taste, and smell decline with age.", fact: true, category: "c1body", answer: "True! The efficiency of these sensory organs decline with age, but the age of onset and rate of decline differ markedly among people.", title: "Wait What Did You Say?")
    
    let q29 = Question(text: "Humans are capable of using their brain at full capacity. ", fact: true, category: "c1body", answer: "True! Contrary to popular belief the 10% percent myth is an incorrect assumption.", title: "My Power. It's Over 9000!")
    
    let q30 = Question(text: "Neurons flourish and change throughout your entire life.", fact: true, category: "c1body", answer: "True! Brain cells do not stop grownig when you reach adulthood.", title: "Dat Brain")
    
    let q31 = Question(text: "Your sight does not deteriorate if you read or use a device in the dark.", fact: true, category: "c1body", answer: "True! Your eyes get more tired this way but will recover eventually.", title: "Fading Away")
    
    let q32 = Question(text: "Split ends cannot be cured by shampoo or conditioner.", fact: true, category: "c1body", answer: "True! Split ends can only be fixed by cutting them.", title: "For Hair So Healthy It Shines")
    
    let q33 = Question(text: "Humans have 5 senses.", fact: false, category: "c1body", answer: "False! Humans have over 20 senses like sense of balance or pain.", title: "Something Smells Fishy...")
    
    let q34 = Question(text: "It's easier to catch a cold when it's cold outside.", fact: false, category: "c1body", answer: "False! Colds are caused by viruses, not caused by air temperature.", title: "Brr..It's Cold!")
    
    let q35 = Question(text: "The heart stops when you sneeze.", fact: false, category: "c1body", answer: "False! The heart's rhythm may be changed but it does not stop.", title: "Thump Thump")
    
    let q36 = Question(text: "Alcoholic beverages do not make you warm.", fact: true, category: "c1body", answer: "True! Alcohol only dilates the blood vessels, making you feel warmer. ", title: "This Warms My Heart")
    
    let q37 = Question(text: "Sweat glands remove toxins from your body.", fact: false, category: "c1body", answer: "False! Sweat glands only cool your body down.", title: "Is It Hot In Here?")
    
    let q38 = Question(text: "Healthy Teeth are slightly yellow", fact: true, category: "c1body", answer: "True! Teeth are supposed to be slightly yellow, not white.", title: "Dazzling Smile")
    
    
    
    
    let q39 = Question(text: "Michelangelo hated painting ", fact: true, category: "c4world", answer: "True! In fact, he wrote a despairing poem about painting the Sistine Chapel.", title: "Great Painters")
    
    
    let q40 = Question(text: "The Beatles' first band name was The Quarrymen", fact: true, category: "c4world", answer: "", title: "Naming Beatles")
    
    
    let q41 = Question(text: "Flowers grow faster if they are exposed to music", fact: true, category: "c3science", answer: "True! the vibrations help move the plant's protoplasm (nutrients).", title: "Rocking Flower")
    
    
    let q42 = Question(text: " Elephants carry their pregnancies for about two years", fact: true, category: "c3science", answer: "The normal gestation period is 22 months", title: "Dazzling Smile")
    
    
    let q43 = Question(text: "The Statue Of Liberty was originally intended to go to Egypt", fact: true, category: "c4world", answer: "True! It was supposed to represent bringing light (progress) to Asia.", title: "Lady Liberty")
    

    let q44 = Question(text: "Scientists have found that swearing can actually relieve pain", fact: true, category: "c3science", answer: "True! It raises your heart rate and lower susceptibility to pain.", title: "What the %#$@")
    
    
    let q45 = Question(text: "The heart of a blue whale weighs about as much as a car", fact: true, category: "c3science", answer: "True! blue whales can weigh up to 180 tons.", title: "Big Whales")
    

    let q47 = Question(text: "When Apollo 11 landed, it had only 20 seconds of remaining fuel", fact: true, category: "c3science", answer: "A change in the planned trajectory delayed the intended landing time.", title: "Space Landing")
    
    
    let q48 = Question(text: "Before the invention of the eraser, pieces of bread were used to remove pencil marks", fact: true, category: "c4world", answer: "", title: "Rubbing it out")
    
    
    let q49 = Question(text: "A group of ferrets is called a business", fact: true, category: "c2science", answer: "", title: "Fuzzy Business")

    let q50 = Question(text: " Dairy cows produce more milk when they are listening to music", fact: true, category: "c2science", answer: "True! Some music relaxes cows which in turn makes more milk.", title: "Got Milk?")
    
    
    let q51 = Question(text: "The human eye is able to detect over 10,000,000 different colors", fact: true, category: "c1body", answer: "True! Just three color receptors in our eye gives us this variety!.", title: "An Eye For Color")
    
    
    let q52 = Question(text: "American currency once included a 5-cent bill", fact: true, category: "c2world", answer: "True! They were used between 1862 and 1876 because of coin hoarding following the civil war.", title: "Spare Change?")
    
    let q53 = Question(text: "Astronauts can't cry in space.", fact: true, category: "c1body", answer: "True! Gravity prevents the tears from falling.", title: "Crying in Space")

    let q54 = Question(text: "The oldest bookshop in the world is located in Portugal", fact: true, category: "c2world", answer: "True! You should go visit!", title: "Dusty Books")
 
    let q55 = Question(text: " A sneeze travels out your mouth and nose at 100 MPH", fact: true, category: "c1body", answer: "True! That's faster than most highway speed limits!", title: "The Speed of Snot")

    let q56 = Question(text: "The state of Florida is bigger than the entire country of England", fact: true, category: "c2world", answer: "True! Florida is 65,755 squares miles, England is 50, 346 square miles", title: "Florida vs Britain")
    

    
    
    
    
    let q57 = Question(text: "Eating really sugary foods causes a sugar rush.", fact: false, category: "c2food", answer: "False! Its just a placebo effect. ", title: "Sugar Rush")

    let q58 = Question(text: "Taking a baby bird from its nest will causes the mother to reject it.", fact: false, category: "c3science", answer: "False! birds don't have a strong sense of smell. ", title: "Baby Birds")

    let q59 = Question(text: "The tongue has special areas for each flavor.", fact: false, category: "c2food", answer: "False! every area of the tongue can sense all flavours. ", title: "The tip of my tongue")

    let q60 = Question(text: "Chameleons change their color to blend in with their environment.", fact: false, category: "c2science", answer: "They use color to communicate their mood. ", title: "Blending In")

    let q61 = Question(text: "The color orange is named after the fruit.", fact: false, category: "c2food", answer: "False! The fruit was not named after the color!. ", title: "Orange you glad?")
    
    let q62 = Question(text: "Penguins mate for life .", fact: false, category: "c3science", answer: "False! Penguins are only monogamous within a mating season. ", title: "Together Forever")
    
    let q63 = Question(text: "Humans have 5 senses.", fact: false, category: "c1body", answer: "False! There are more! We can sense acceleration, balance, temperature and more! ", title: "The 6th sense?")
    
    let q64 = Question(text: "Viking Helmets had horns on them.", fact: false, category: "c4world", answer: "False! This confusion was caused by  a painting in 1876 depicting them as such.", title: "Horny Vikings")
    
    let q65 = Question(text: "George Washington had wooden teeth.", fact: false, category: "c4world", answer: "He had dentures made out of gold, ivory, lead, animal teeth and teeth from his own slaves. ", title: "Weird Dental Plan")
    
    let q66 = Question(text: "Redheads and blondes are gradually going extinct.", fact: false, category: "c3science", answer: "False! This would only happen if everyone with those genes died. ", title: "Red and Ginger")
    
    
    let q67 = Question(text: "Bats are visually blind.", fact: false, category: "c3 science", answer: "False! Bats have eyes they can see very clearly with. ", title: "Blind as Bat")
    
    let q68 = Question(text: "Excess water absorption causes your fingers to wrinkle.", fact: false, category: "c2food", answer: "False! Fingers wrinkle to improve underwater grip. ", title: "Feeling Underwater")
    
    let q69 = Question(text: "sunflowers orient themselves towards the sun throughout the day .", fact: false, category: "c2science", answer: "False! They always face east. ", title: "Sunless Sunflowers")
    
    let q70 = Question(text: "Black holes have holes .", fact: false, category: "c2food", answer: "False!They're very dense objects with strong gravitational pull. ", title: "Black Wholes")
    
    
    let q71 = Question(text: "Einstein failed in Math class.", fact: false, category: "c3science", answer: "False! He failed a school's entrance exam but still excelled at maths.", title: "Einstein's math")
    
    let q72 = Question(text: "US undercover cops have to reveal themselves as cops.", fact: false, category: "c4world", answer: "False! This was a myth put on by hollywood films. ", title: "You a cop?")
    
    
    let q74 = Question(text: "Caffeine dehydrates you.", fact: false, category: "c2food", answer: "False! The water in caffeinated drinks balances their diuretic effects. ", title: "Can You Ketchup?")
    
    let q75 = Question(text: "Black belts represent mastery .", fact: false, category: "c2food", answer: "False! Introduced in 1880 in Judo to show competence in basic techniques, not Yoda level mastery.", title: "Can You Ketchup?")
    
    
    let q76 = Question(text: "The elephant is one of the few mammals that can't jump", fact: true, category: "c1body", answer: "But they can keep a foot off the ground when they run", title: "Jumping Elephants?")
    
    init(category: String){
        super.init()
        populateCategory(category)
    }

    func createBank(){
        qbank.append(q1)
        qbank.append(q2)
        qbank.append(q3)
        qbank.append(q4)
        qbank.append(q5)
        qbank.append(q6)
        qbank.append(q7)
        qbank.append(q8)
        //qbank.append(q9)
        qbank.append(q10)
        qbank.append(q11)
        qbank.append(q12)
        qbank.append(q13)
        qbank.append(q14)
        qbank.append(q15)
        qbank.append(q16)
        qbank.append(q17)
        qbank.append(q18)
        qbank.append(q19)
        qbank.append(q20)
        qbank.append(q22)
        qbank.append(q23)
        qbank.append(q24)
        qbank.append(q25)
        qbank.append(q26)
        qbank.append(q27)
        qbank.append(q28)
        qbank.append(q29)
        qbank.append(q30)
        qbank.append(q32)
        qbank.append(q33)
        qbank.append(q34)
        qbank.append(q35)
        qbank.append(q36)
        qbank.append(q37)
        qbank.append(q38)
        
        qbank.append(q39)
        qbank.append(q40)
        qbank.append(q41)
        qbank.append(q42)
        qbank.append(q43)
        qbank.append(q44)
        qbank.append(q45)
        //qbank.append(q46)
        qbank.append(q47)
        qbank.append(q48)
        qbank.append(q49)
        qbank.append(q50)
        qbank.append(q22)
        qbank.append(q23)
        qbank.append(q24)
        qbank.append(q25)
        qbank.append(q26)
        qbank.append(q27)
        qbank.append(q28)
        qbank.append(q29)
        qbank.append(q30)
        qbank.append(q32)
        qbank.append(q33)
        qbank.append(q34)
        qbank.append(q35)
        qbank.append(q36)
        qbank.append(q37)
        qbank.append(q38)
    }
    
    
    
    
    func populateCategory(_ expression: String) -> (){
        createBank()
        switch expression {
     
        case "c1body" :
            allQuestions.append(q2)
            allQuestions.append(q19)
            allQuestions.append(q28)
            allQuestions.append(q29)
            allQuestions.append(q30)
            allQuestions.append(q31)
            allQuestions.append(q32)
            allQuestions.append(q33)
            allQuestions.append(q34)
            allQuestions.append(q35)
            allQuestions.append(q36)
            allQuestions.append(q37)
            allQuestions.append(q38)
            
        case "c2food" :
            allQuestions.append(q1)
            allQuestions.append(q3)
            allQuestions.append(q7)
            allQuestions.append(q10)
            allQuestions.append(q11)
            allQuestions.append(q13)
            allQuestions.append(q14)
            allQuestions.append(q24)
            allQuestions.append(q26)
            allQuestions.append(q27)
            
        case "c3science" :
            allQuestions.append(q4)
            allQuestions.append(q5)
            allQuestions.append(q16)
            allQuestions.append(q17)
            allQuestions.append(q20)
            allQuestions.append(q22)
            allQuestions.append(q23)
            
        case "c4world" :
            allQuestions.append(q6)
            allQuestions.append(q8)
            allQuestions.append(q12)
            allQuestions.append(q15)
            allQuestions.append(q18)
            allQuestions.append(q21)
            allQuestions.append(q25)
            
        case "random" :
           
            for i in 1...20{
                let x = Int(arc4random_uniform(UInt32(qbank.count)))
                allQuestions.append(qbank[x])
                qbank.remove(at: x)
            }
        default: break

        }

    }

}




