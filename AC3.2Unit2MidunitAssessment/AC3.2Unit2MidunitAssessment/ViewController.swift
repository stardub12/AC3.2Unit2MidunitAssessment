//
//  ViewController.swift
//  AC3.2Unit2MidunitAssessment
//
//  Created by Simone Grant on 9/23/16.
//  Copyright © 2016 Simone Grant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var lineIndex = 0
    
    
    @IBOutlet weak var lineLabel: UILabel!
    @IBOutlet weak var characterLineLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialQuote()
        updateQuote()
        
        struct script {
            init() {
                var author: String
                var title: String
            }
        }
       // updateLineLabel()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let poloniusMonologue = ["My liege, and madam, to expostulate",
                             "What majesty should be, what duty is,",
                             "What day is day, night night, and time is time,",
                             "Were nothing but to waste night, day, and time;",
                             
                             "Therefore, since brevity is the soul of wit,",
                             "And tediousness the limbs and outward flourishes,",
                             "I will be brief. Your noble son is mad."]

        
    func updateQuote() {
        lineIndex = 0
    }
    
    @IBAction func promptButtonTapped(_ sender: AnyObject) {
        lineLabel.text = poloniusMonologue[0]
        
        for i in 0..<poloniusMonologue.count {
            if lineIndex == i {
                lineLabel.text = poloniusMonologue[i]
                lineIndex += 1
                } else {
                lineIndex = 0
                lineLabel.text = poloniusMonologue[0]
            }
        }
        
    }
    

    func initialQuote() {
       lineLabel.text = poloniusMonologue[0]
    }
    
    
    
    
    let macbethScriptData = [
        ["character": "First Witch",
         "lines":
            ["Thrice the brinded cat hath mew'd."]],
        
        ["character":"Second Witch",
         "lines":
            ["Thrice and once the hedge-pig whined."]],
        
        ["character":"Third Witch",
         "lines":
            ["Harpier cries 'Tis time, 'tis time."]],
        
        ["character":"First Witch",
         "lines":
            ["Round about the cauldron go;",
             "In the poison'd entrails throw.",
             "Toad, that under cold stone",
             "Days and nights has thirty-one",
             "Swelter'd venom sleeping got,",
             "Boil thou first i' the charmed pot."]],
        
        ["character":"ALL",
         "lines":
            ["Double, double toil and trouble;",
             "Fire burn, and cauldron bubble."]],
        
        ["character":"Second Witch",
         "lines":
            ["Fillet of a fenny snake,",
             "In the cauldron boil and bake;",
             "Eye of newt and toe of frog,",
             "Wool of bat and tongue of dog,",
             "Adder's fork and blind-worm's sting,",
             "Lizard's leg and owlet's wing,",
             "For a charm of powerful trouble,",
             "Like a hell-broth boil and bubble."]],
        
        ["character":"ALL",
         "lines":
            ["Double, double toil and trouble;",
             "Fire burn and cauldron bubble."]]
    ]


    @IBAction func scriptPromptButtonTapped(_ sender: AnyObject) {
        for (key) in macbethScriptData {
            for (j, nextKey) in key {
            for i in 0...Int((nextKey as AnyObject).count) {
                characterLineLabel.text = nextKey[i]
            }
        }
    }
        
    }
    
}
