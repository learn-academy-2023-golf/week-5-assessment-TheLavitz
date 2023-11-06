// ASSESSMENT 5: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in a string and returns a string with a coded message. The coded message converts "a" to 4, "e" to 3, "i" to 1, and "o" to 0.

// a) Create a test with expect statements using the variables provided.

describe("encoder", () => {
  it("Takes in a string a and returns a coded string.", () => {
    const secretCodeWord1 = "Lackadaisical";
    expect(encoder(secretCodeWord1)).toEqual("L4ck4d41s1c4l");
    const secretCodeWord2 = "Gobbledygook";
    expect(encoder(secretCodeWord2)).toEqual("G0bbl3dyg00k");
    const secretCodeWord3 = "Eccentric";
    expect(encoder(secretCodeWord3)).toEqual("3cc3ntr1c");
  });
});

// const secretCodeWord1 = "Lackadaisical"
// Expected output: "L4ck4d41s1c4l"
// const secretCodeWord2 = "Gobbledygook"
// Expected output: "G0bbl3dyg00k"
// const secretCodeWord3 = "Eccentric"
// Expected output: "3cc3ntr1c"

// b) Create the function that makes the test pass.

// Pseudo code:
// Declare a function called encoder
// Input: string
// Output: string
// Declare a variable called encoded to hold the output of the function
// Use .replace() to to exchange each letter with the number it corresponds with
// Use regular expressions /a/gi in place of "a" to look for all of the "a" in the string as indicated by the g in /a/gi and to perform the replacement on upper and lowercase versions of "a" as indicated by the i in /a/i

const encoder = (input) => {
  const encoded = input
    .replace(/a/gi, "4")
    .replace(/e/gi, "3")
    .replace(/i/gi, "1")
    .replace(/o/gi, "0");
  return encoded;
};

// --------------------2) Create a function that takes in an array of 5 numbers and determines whether or not the array is a "full house". A full house is exactly one pair and one three of a kind.

// a) Create a test with expect statements using the variable provided.

describe("full_house", () => {
  it("Takes in an array of 5 numbers and checks for a full house.", () => {
    const hand1 = [5, 5, 5, 3, 3];
    expect(full_house(hand1)).toEqual(true);
    const hand2 = [5, 5, 3, 3, 4];
    expect(full_house(hand2)).toEqual(false);
    const hand3 = [5, 5, 5, 5, 4];
    expect(full_house(hand3)).toEqual(false);
    const hand4 = [7, 2, 7, 2, 7];
    expect(full_house(hand4)).toEqual(true);
  });
});

// const hand1 = [5, 5, 5, 3, 3];
// Expected output: true
// const hand2 = [5, 5, 3, 3, 4];
// Expected output: false
// const hand3 = [5, 5, 5, 5, 4];
// Expected output: false
// const hand4 = [7, 2, 7, 2, 7];
// Expected output: true

// b) Create the function that makes the test pass.

// Pseudo code:
// Declare a function called full_house
// Input: Array of numbers
// Output: Boolean
// Declare an object called counter to hold the count of each number in the array
// Use a for loop to step through the array and check counter for the value at that index of the array and increment the count by 1 for every instance of the value it come accross
// Use another for loop to step through the array and check if the value at that index in the array has a count in counter that is either 2 or 3.
// If an array has a value with a count of 2 let a variable pair equal true
// If an array has a value with a count of 3 let a variable threeOfAKind equal true
// If pair and threeOfAKind both equal true then the function will return true

const full_house = (array) => {
  const counter = {};
  let pair = false;
  let threeOfAKind = false;
  for (i = 0; i < array.length; i++) {
    counter[array[i]] = (counter[array[i]] || 0) + 1;
  }
  for (i = 0; i < array.length; i++)
    if (counter[array[i]] === 2) {
      pair = true;
    } else if (counter[array[i]] === 3) {
      threeOfAKind = true;
    }
  if (pair === true && threeOfAKind === true) {
    return true;
  } else {
    return false;
  }
};
