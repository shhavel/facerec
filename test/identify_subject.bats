#!/usr/bin/env bats

@test "Check that we can recognize the first subject on the photo" {
    run ./facerec identify test/photos/photo1.jpg
    [ "$status" = 0 ]
    [ "$output" = "Subject 'Ted Crilly' is recognized with confidence 98.2978159334" ]
}

@test "Check that we can recognize first subject on the photo" {
    run ./facerec identify test/photos/photo1.jpg
    [ "$status" = 0 ]
    [ "$output" = "Subject 'Ted Crilly' is recognized with confidence 98.2978159334" ]
}

@test "Check that we can recognize second subject on the photo" {
    run ./facerec identify test/photos/photo2.gif
    [ "$status" = 0 ]
    [ "$output" = "Subject 'Dougal Mcguire' is recognized with confidence 78.5389835475" ]
}

@test "Invoking identify with the --tap option returns only subject and confidence number divided with space" {
    run ./facerec identify --dry test/photos/photo2.gif
    [ "$status" = 0 ]
    [ "$output" = "Dougal Mcguire 78.5389835475" ]
}

@test "Check that we cannot recognize face on the photo of fridge" {
    run ./facerec identify test/photos/fridge.jpg
    [ "$status" = 2 ]
    [ "$output" = "Face was not detected in the original image" ]
}

@test "Check that we cannot recognize face if subject was not enrolled" {
    run ./facerec identify test/photos/larry.jpg
    [ "$status" = 2 ]
    [ "$output" = "Unable to recognize the face" ]
}

@test "Invoking identification without image exits with status 2" {
    run ./facerec identify test/photos/larry.jpg
    [ "$status" = 2 ]
}

@test "Invoking identification without image fails with status 1" {
    run ./facerec identify test/photos/tom1.jpg
    [ "$status" = 1 ]
}
