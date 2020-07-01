//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//
//  Customised by Jeffrey Wolf in 2020.


import Foundation

struct StoryBrain {
    
    var storyNumber = 0
    
    let stories = [
        Story(
            title: "One morning, after waking up from feverish and anxious dreams, you discover you have turned into a 'monstrous verminous bug'. ",
            choice1: "I'll go back to sleep and forget all this foolishness.", choice1Destination: 1,
            choice2: "After much effort, you decide to lift yourself out of bed.", choice2Destination: 2
        ),
        Story(
            title: "But going back to sleep proves highly impractical as you cannot turn over on your right side. So you get up anyways. After exiting your room on your six hind legs, you have to decide what to do next.",
            choice1: "Routine is important: off to work I go.", choice1Destination: 3,
            choice2: "Wait?! I have six legs? What other abilities do I have? Let's explore!", choice2Destination: 4
        ),
        Story(
            title: "After lifting yourself out of bed, you decide to discuss your situation with your roommate, Charlie.",
            choice1: "Hey Charlie! Can you come here? I've turned into a bug. What do I do now?", choice1Destination: 5,
            choice2: "Hey Charlie, I've got a surprise for you. Come in here!", choice2Destination: 5
        ),
        Story(
            title: "You head off to work, but as soon as you get outside, every person you encounter shrieks in horror and runs away. Before you can react, a truck skips the curb and plows into you at full speed.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            title: "You stand at your window, open it, and decide to jump. Flapping your beating wings, you discover you can fly, but only for a brief moment of glory. Then you go splat on the pavement.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            title: "Charlie comes to your door, opens it, and recoils in horror. He rushes out of the room, grabs the nearest kitchen knife, and comes charging at you. His attack is, sadly for you, lethal.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        )
        
    ]
    
    func getStorytitle() -> String {
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String) {
        
        let currentStory = stories[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2 {
            storyNumber = currentStory.choice2Destination
        }
        
    }
    
    
}
