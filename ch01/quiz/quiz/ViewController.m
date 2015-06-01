//
//  ViewController.m
//  quiz
//
//  Created by Donald Steinert on 6/1/15.
//  Copyright (c) 2015 Donald Steinert. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@end

@implementation ViewController

//- (instancetype) initWithNibName:(NSString *)nibNameOrNil
//                          bundle:(NSBundle *)nibBundleOrNil
//{
//    // call the init method implemented by the super class
//    self = [super initWithNibName:nibNameOrNil
//                           bundle:nibBundleOrNil];
//    
//    if (self) {
//        // create two arrays filled with questions and answers
//        self.questions = @[@"From what is cognac made?",
//                           @"What is 7 + 7?",
//                           @"What is the capital of Vermont?"];
//        
//        self.answers = @[@"Grapes",
//                         @"14",
//                         @"Montpelier"];
//    }
//    
//    // return the address of the new object
//    return self;
//}

// lazy instantiation of questions
- (NSArray *)questions
{
    if (!_questions) {
        _questions = @[@"From what is cognac made?",
                       @"What is 7 + 7?",
                       @"What is the capital of Vermont?"];
    }
    return _questions;
}

// lazy instantiation of answers
- (NSArray *)answers
{
    if (!_answers) {
        _answers = @[@"Grapes",
                     @"14",
                     @"Montpelier"];
    }
    return _answers;
}

- (IBAction)showQuestion:(id)sender
{
    // step to the next question
    self.currentQuestionIndex++;
    
    // go back to first question if user is past last question
    if (self.currentQuestionIndex == [self.questions count]) {
        self.currentQuestionIndex = 0;
    }
    
    // get the string at the index in the array
    NSString *question = self.questions[self.currentQuestionIndex];
    
    // display the question in the question label
    self.questionLabel.text = question;
    
    // reset the answer label
    self.answerLabel.text = @"???";
    
//    NSLog(@"%@", self.answerLabel.text);
}

- (IBAction)showAndwer:(id)sender
{
    // what is the answer to the current question
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    // display the answer in the answer label
    self.answerLabel.text = answer;
    
//    NSLog(@"%@", self.questionLabel.text);
}

@end
