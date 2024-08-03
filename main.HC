// TempleOS uses HolyC

U0 GuessNumberGame() {
    // Clear the screen and set cursor to top left
    ClrScr();

    // Print introduction
    Print("\nGuess the number! You have 3 attempts!\n");
    Print("The Secret Number is between 1-10!\n");

    // Generate secret number
    Int secretn = Rand(10) + 1;

    // Attempt counter
    Int attempt = 1;
    While (TRUE) {
        // If all 3 attempts are used, you lose
        If (attempt == 4) {
            Print("\n\nYou lost! Try again next time! )-: ");
            Break;
        };

        // Show current attempt
        Print("\n%d. Attempt!\n", attempt);
        Print("Type your guess: ");

        // Take user's input
        Int guess;
        guess = GetKey();  // Simple method, gets a single key input
        Print("%d\n", guess);  // Print the guessed number

        // Increment attempt counter
        attempt++;

        // Check if the guess is correct
        If (guess == secretn) {
            Print("\n\nYou won!!! Congrats! (-;\n");
            Break;
        } Else {
            // Calculate and display attempts left
            Int attmpleft = 4 - attempt;
            Print("\nAww, Dang it! You have %d Try(s) left!\n", attmpleft);
        };
    };
    Print("\n");
}

GuessNumberGame();
