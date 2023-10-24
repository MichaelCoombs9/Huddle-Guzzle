import Foundation

struct GamePrompt {
    enum Category: String {
        case stats = "Stats"
        case nextPlay = "Next Play"
        case vote = "Vote"
        case quiz = "Quiz"
        case wildCard = "Wild Card"
    }

    let category: Category
    let prompt: String
    let action: String

    init(category: Category, prompt: String, action: String) {
        self.category = category
        self.prompt = prompt
        self.action = action
    }
}

// Sample prompts
let prompts: [GamePrompt] = [
    GamePrompt(category: .stats, prompt: "For Every Interception Thrown So Far:", action: "1 Drink"),
    GamePrompt(category: .nextPlay, prompt: "If The Next Play Is Negative Yards", action: "Finish Your Drink"),
    GamePrompt(category: .vote, prompt: "Everyone Vote On The Best Player On The Field. \n\nMajority Wins, Losers Drink.", action: "1 Drink"),
    GamePrompt(category: .quiz, prompt: "How Many Superbowls Between The Two Teams Playing? \n \n If You're right, Give. \nIf You're Wrong,Take", action: "2 Drinks"),
    GamePrompt(category: .quiz, prompt: "Going Clockwise, Take Turns Naming Current Head Coaches. \n \nFirst Person To Fail Drinks.", action: "1 Drink"),
    GamePrompt(category: .nextPlay, prompt: "For Every Play Of The Current Drive:", action: "1 Drink"),
    GamePrompt(category: .nextPlay, prompt: "If There Is An Offensive Penalty In The Current Drive", action: "3 Drinks"),
    GamePrompt(category: .nextPlay, prompt: "If There Is A Deffensive Penalty In The Current Drive", action: "3 Drinks"),
    GamePrompt(category: .wildCard, prompt: "If Anyone In The Room Is Your Fantasy Opponent This Week, Cheers And Share A Drink", action: "1 Drink"),
    GamePrompt(category: .quiz, prompt: "Name The Backup TE On Either Team. \n\nIf You're Right, Give. \nIf You're Wrong, Take.", action: "2 Drinks"),
    GamePrompt(category: .stats, prompt: "For Every Interception So Far:", action: "1 Drink"),
    GamePrompt(category: .nextPlay, prompt: "Next Passing First Down", action: "1 Drink"),
    GamePrompt(category: .nextPlay, prompt: "Next Rushing First Down", action: "1 Drink"),
    GamePrompt(category: .nextPlay, prompt: "If The Next Play Is A Pass, Give. \nIf The Next Play Is A Rush, Take.", action: "1 Drink"),
    GamePrompt(category: .nextPlay, prompt: "If The Next Play Is A Rush, Give. \nIf The Next Play Is A Pass, Take.", action: "1 Drink"),
    GamePrompt(category: .nextPlay, prompt: "If The Quarterback Gets Sacked On The Current Drive", action: "Finish Your Drink"),
    GamePrompt(category: .wildCard, prompt: "Make A Rule For The Rest Of The Current Quarter", action: ""),
    GamePrompt(category: .quiz, prompt: "Going Clockwise, Take Turns Naming Current Kickers. \nFirst Person To Fail Drinks.", action: "1 Drink"),
    GamePrompt(category: .wildCard, prompt: "Provide Commentary For The Next Play \n\n\nOR", action: "Finish Your Drink"),
    GamePrompt(category: .wildCard, prompt: "Stand Up And Show Your Best Touchdown Celly \n\n\nOR", action: "Finish Your Drink"),
    GamePrompt(category: .nextPlay, prompt: "Drink If The Football Is In The Redzone Right Now", action: "3 Drinks"),
    GamePrompt(category: .wildCard, prompt: "The Player With The Weakest Drink Must Drink", action: "2 Drinks"),
    GamePrompt(category: .wildCard, prompt: "Whoever Has Attened The Most NFL Games", action: "1 Drink"),
    GamePrompt(category: .wildCard, prompt: "Anyone Who Has Played In A Football Game", action: "1 Drink"),
    GamePrompt(category: .wildCard, prompt: "Make A Superbowl Prediction, Then Drink", action: "1 Drink"),
    GamePrompt(category: .wildCard, prompt: "Everyone Drink", action: "1 Drink"),
    GamePrompt(category: .quiz, prompt: "Name A Team In The AFC East. \n\n If You're Right, Give. \nIf You're Wrong, Take.", action: "1 Drink"),
    GamePrompt(category: .quiz, prompt: "Name A Team In The AFC North. \n\n If You're Right, Give. \nIf You're Wrong, Take.", action: "1 Drink"),
    GamePrompt(category: .quiz, prompt: "Name A Team In The AFC South. \n\n If You're Right, Give. \nIf You're Wrong, Take.", action: "1 Drink"),
    GamePrompt(category: .quiz, prompt: "Name A Team In The AFC West. \n\n If You're Right, Give. \nIf You're Wrong, Take.", action: "1 Drink"),
    GamePrompt(category: .quiz, prompt: "Name A Team In The NFC East. \n\n If You're Right, Give. \nIf You're Wrong, Take.", action: "1 Drink"),
    GamePrompt(category: .quiz, prompt: "Name A Team In The NFC North. \n\n If You're Right, Give. \nIf You're Wrong, Take.", action: "1 Drink"),
    GamePrompt(category: .quiz, prompt: "Name A Team In The NFC South. \n\n If You're Right, Give. \nIf You're Wrong, Take.", action: "1 Drink"),
    GamePrompt(category: .quiz, prompt: "Name A Team In The NFC West. \n\n If You're Right, Give. \nIf You're Wrong, Take.", action: "1 Drink"),
    GamePrompt(category: .quiz, prompt: "Name Two Players Drafted In The First 10 Rounds Last Year. \n\nIf You're Right, Give. \nIf You're Wrong, Take", action: "2 Drinks"),
    GamePrompt(category: .nextPlay, prompt: "Let The Group Pick A Player For You. \n\nFor The Rest Of The Current Drive, Drink Everytime They Touch The Ball.", action: "1 Drink"),
    GamePrompt(category: .stats, prompt: "For Any RB In The Game, Correctly Guess Their Rushing Yards Within Five. \n\nIf You're Right, Give. \nIf You're Wrong, Take.", action: "2 Drinks"),
    GamePrompt(category: .stats, prompt: "For Any WR In The Game, Correctly Guess Their Recieving Yards Within Five. \n\nIf You're Right, Give. \nIf You're Wrong, Take.", action: "2 Drinks"),
    GamePrompt(category: .wildCard, prompt: "Quietly Touch Touch The Ground. \nLast Player To Do The Same, Drinks", action: "1 Drink"),
    GamePrompt(category: .vote, prompt: "Everyone Vote For Who In The Room Is Most And Least Likely To Survive The Line Of Scrimmage. \n\nBoth Players Drink", action: "1 Drink"),
    GamePrompt(category: .nextPlay, prompt: "Next Time A Coach Is Shown On Camera, Take A Drink.", action: "1 Drink"),
    GamePrompt(category: .wildCard, prompt: "Make A Rule For The Rest Of The Current Quarter.", action: ""),
    GamePrompt(category: .wildCard, prompt: "Question Master \n\nWhenever You Ask A Question, Players Must Respond With A Question Or Otherwise Drink. \n\nExpires At The End Of The Current Drive.", action: "1 Drink"),
    GamePrompt(category: .wildCard, prompt: "Anyone Wearing A Jersey, Cheers And Drink.", action: "1 Drink"),
    GamePrompt(category: .nextPlay, prompt: "Next Comercial Break", action: "Finish Your Drink"),
    GamePrompt(category: .vote, prompt: "Everyone Vote On The GOAT Tight End. \n\nMajority Wins, Losers Drink", action: "1 Drink"),
    GamePrompt(category: .vote, prompt: "Everyone Vote On The GOAT Safety. \n\nMajority Wins, Losers Drink", action: "1 Drink"),
    GamePrompt(category: .vote, prompt: "Everyone Vote On The GOAT Cornerback. \n\nMajority Wins, Losers Drink", action: "1 Drink"),
    GamePrompt(category: .vote, prompt: "Everyone Vote On The GOAT Defensive Tackle. \n\nMajority Wins, Losers Drink", action: "1 Drink"),
    GamePrompt(category: .vote, prompt: "Everyone Vote On The GOAT Edge Rusher. \n\nMajority Wins, Losers Drink", action: "1 Drink"),
    GamePrompt(category: .vote, prompt: "Everyone Vote On The GOAT Wide Reciever. \n\nMajority Wins, Losers Drink", action: "1 Drink"),
    GamePrompt(category: .vote, prompt: "Everyone Vote On The GOAT Running Back. \n\nMajority Wins, Losers Drink", action: "1 Drink"),
    GamePrompt(category: .vote, prompt: "Everyone Vote On The GOAT Quarterback. \n\nMajority Wins, Losers Drink", action: "1 Drink"),
    GamePrompt(category: .nextPlay, prompt: "Drink For Every Remaining Yard On The Current Down. \n\nIf Its Over Eight...Just Go Ahead And Finish Your Drink.", action: "1 Drink"),
    GamePrompt(category: .nextPlay, prompt: "If The Game Clock Is Less Than Two Minutes", action: "Finish Your Drink"),
    GamePrompt(category: .nextPlay, prompt: "If The Game Clock Is Less Than Six Minutes", action: "3 Drinks"),
]



