extends Node
class_name GameSessionState

# For more understanding of the use of it patter singleton:
# https://docs.godotengine.org/en/stable/tutorials/scripting/singletons_autoload.html

# Nodes Groups keys, mustly used to detects collision
const LETTERS_GROUP = "letters"
const DELLIVERYPOST_GROUP = "delliverypost"

## It indicates possibles ways the player could get it scores
enum ScoreReason {
    PickedLetter,
    DeliveredLetter
}

## Level created letters
## In the future it could be used to calculate a better score or something
var levelCreatedLetters: int = 0

## Player score make in the current
var score: int = 0

## Recovery lettlers
var pickedLetters: int = 0

## Deliveried lettlers
var deliveredLetters: int = 0

## Eaten letterls
var eatenLetters: int = 0

## Registers some score attributed to the player
func add_score(score_value: int, _score_reason: ScoreReason):
    score += score_value

## Registers each letter that was created in the current session
func created_letter():
    levelCreatedLetters += 1

## Register when an antagonist eats a letter
func eaten_letter():
    eatenLetters += 1

## Register when the player successfuly collect a letter from the floor
func picked_letter():
    pickedLetters += 1

## Register when the player successfuly delivery to a post office
func delivered_letter():
    deliveredLetters += 1