//1. Escribe una función que encuentre el primer carácter de un cadena de texto que no se repite. Prueba tu función con: 'abacddbec'

const findNonRepeatingChar = (str) => {
  // transform str into an array of chars
  const charsArray = str.split("");
  // create array for already checked chars
  const checked = [];
  // loop through the array of chars
  for (const char of charsArray) {
    // if a char has not been checked
    if (!checked.includes(char)) {
      // counter to determine the number of occurences of a char
      let counter = 0;
      for (let i = 0; i < charsArray.length; i++) {
        // check how many times the char is being repeated in the array of chars
        if (charsArray[i] === char) {
          counter += 1;
        }
      }
      // if the counter is 1, it means the char has not been repeated in the string
      if (counter == 1) return char;
    }
  }

  return "all letters are repeated at least one time";
};

console.log(findNonRepeatingChar("abacddbec"));

// 2. Escribe una función que implemente el algoritmo 'bubble-sort' para ordenar una lista de números.

const bubbleSort = (numbers) => {
  // Iterate through the array from the first to the second to last element.
  for (let i = 0; i < numbers.length - 1; i++) {
    // Iterate through the array from the first to the last element.
    for (let j = 0; j < numbers.length; j++) {
      // If the current element and the next element are within the bounds of the array...
      if (j + 1 < numbers.length) {
        // If the current element is greater than the next element, swap them.
        if (numbers[j] > numbers[j + 1]) {
          let temp = numbers[j];
          numbers[j] = numbers[j + 1];
          numbers[j + 1] = temp;
        }
      }
    }
  }
  // Return the sorted array.
  return numbers;
};

console.log(bubbleSort([43, 21, 2, 142, 1]));

// 3. Escribe dos funciones: la primera que invierta un arreglo de números y regrese un nuevo arreglo con el resultado; la segunda que modifique el mismo arreglo que se pasa como argumento. No se permite usar la función integrada 'reverse'.

// function to reverse a list that mutates the array passed to it
const mutableReverse = (numbers) => {
  // Create a new empty array to store the reversed list
  let reversedList = [];
  // Get the length of the input array
  const arrayLength = numbers.length;
  // Iterate through the input array, popping elements off the end and adding them to the start of the reversed list
  for (let i = 0; i < arrayLength; i++) {
    reversedList.push(numbers.pop());
  }
  // Return the reversed list
  return reversedList;
};

const nonMutableReverse = (numbers) => {
  // Make a copy of the input array using the spread operator
  let copyOfNumsArray = [...numbers];
  // Create a new empty array to store the reversed list
  let reversedList = [];
  // Iterate through the copied array, popping elements off the end and adding them to the start of the reversed list
  for (let i = 0; i < numbers.length; i++) {
    reversedList.push(copyOfNumsArray.pop());
  }
  // Return the reversed list
  return reversedList;
};

console.log(mutableReverse([43, 21, 55, 101]));

console.log(nonMutableReverse([43, 21, 55, 101]));

// 4. Escribe una función que reciba una cadena de texto y regrese una nueva con la primer letra de cada palabra en mayúscula.

const firstLetterUppercase = (str) => {
  // Split the input string into an array of words.
  const wordArray = str.split(" ");
  let result = [];
  for (let word of wordArray) {
    // Capitalize the first letter of each word and add the rest of the word to it.
    result.push(word[0].toUpperCase() + word.substring(1));
  }
  // Join the array of capitalized words back into a string and return it.
  return result.join(" ");
};

console.log(firstLetterUppercase("hola mundo como estas"));

// 5. Escribe una función que calcule el máximo común divisor de dos números.

const gcd = (a, b) => {
  // While `b` is not equal to zero, keep iterating.
  while (b !== 0) {
    // Save the value of `b` in a temporary variable.
    let temp = b;
    // Calculate the new value of `b` by taking the remainder of `a` divided by `b`.
    b = a % b;
    // Set the value of `a` to the old value of `b`.
    a = temp;
  }
  // `a` now contains the GCD, so return it.
  return a;
};
console.log(gcd(24, 16));

//6. Crea una función que cambie una cadena de texto a 'Hacker Speak'. Por ejemplo, para la cadena 'Javascript es divertido', su hacker speak es: 'J4v45c1pt 35 d1v3rt1d0'.

const toHackerSpeak = (str) => {
  // Define an object with character mappings
  const hackerAlphabet = {
    a: "4",
    e: "3",
    i: "1",
    o: "0",
    s: "5",
    t: "7",
  };

  // Convert the string to lowercase and split it into an array of characters
  const chars = str.toLowerCase().split("");

  // Iterate over each character in the array and replace it if it has a mapping
  for (let i = 0; i < chars.length; i++) {
    const char = chars[i];
    if (hackerAlphabet.hasOwnProperty(char)) {
      chars[i] = hackerAlphabet[char];
    }
  }

  // Join the characters back into a string and return it
  return chars.join("");
};

console.log(toHackerSpeak("Javascript es divertido"));

// 7, Escribe una función que reciba un número, y regrese una lista con todos sus factores. Por ejemplo: factoriza(12) -> [1, 2, 3, 4, 6, 12].

const factor = (number) => {
  // array to store the result
  let result = [];

  // iterating through the array to find the numbers that exactly divide the number
  for (let i = 1; i <= number; i++) {
    if (number % i == 0) {
      result.push(i);
    }
  }

  // return array with resulting numbers
  return result;
};

console.log(factor(20));

// 8. Escribe una función que quite los elementos duplicados de un arreglo y regrese una lista con los elementos que quedan. Por ejemplo: quitaDuplicados([1, 0, 1, 1, 0, 0]) -> [1, 0]

const removeDuplicates = (duplicatesArr) => {
  // the function takes the array of duplicates
  const result = []; // the array that will have the resulting array with no duplicates
  for (const number of duplicatesArr) {
    // iterating through the array
    if (!result.includes(number)) {
      //if the current number is not in result
      result.push(number); // add the number to the result array
    }
  }
  return result; // return the result array
};

console.log(removeDuplicates([0, 0, 1, 2, 1, 2, 3, 5, 3]));

// 9. Escribe una función que reciba como parámetro una lista de cadenas de texto, y regrese la longitud de la cadena más corta.

const smallestString = (stringsArray) => {
  // Set the initial value of 'smallest' to the length of the first string in the array.
  let smallest = stringsArray[0].length;

  // Loop through the array to find the length of the smallest string.
  for (const word of stringsArray) {
    if (word.length < smallest) {
      // If the current string is smaller than the current 'smallest' value, update 'smallest' to be the length of the current string.
      smallest = word.length;
    }
  }

  // Return a string that describes the length of the smallest string found.
  return `The smallest string has length ${smallest}`;
};

console.log(smallestString(["hex", "binary", "boo", "alo"]));

// 10. Escribe una función que revise si una cadena de texto es un palíndromo o no.

const isPalindrome = (str) => {
  // Convert the string to lowercase and remove non-alphanumeric characters
  str = str.toLowerCase().replace(/[^a-z0-9]/g, "");

  // Check if the string is the same forwards and backwards
  for (let i = 0; i < Math.floor(str.length / 2); i++) {
    if (str[i] !== str[str.length - 1 - i]) {
      return false;
    }
  }

  return true;
};

console.log(isPalindrome("oso"));

// 11. Escribe una función que tome una lista de cadena de textos y devuelva una nueva lista con todas las cadenas en orden alfabético.

// the function sorts the array of strings following the ASCII lexicographical order provided by default by the sort method
const orderString = (stringsArray) => stringsArray.sort();

console.log(orderString(["corazon", "hola", "arbol", "que pasa"]));

// 12. Escribe una función que tome una lista de números y devuelva la mediana y la moda.

const measures = (array) => {
  let sortedArray = array.sort((a, b) => a - b); // sorting the array
  let median = findMedian(sortedArray); // storing the result of the function call in the median variable
  let mode = findMode(sortedArray); // storing the result of the function call in the mode variable

  return {
    median,
    mode,
  };
};

const findMedian = (sortedArray) => {
  if (sortedArray.length % 2 == 1) {
    // if array length is odd, median is the middle value
    median = sortedArray[(sortedArray.length - 1) / 2];
  } else {
    // if even, the median is the mean of the sum of the two middle values
    median =
      (sortedArray[sortedArray.length / 2] +
        sortedArray[sortedArray.length / 2 - 1]) /
      2;
  }

  return median;
};

const findMode = (sortedNumbers) => {
  const frequencyTable = {}; // object to track the frequency of the values
  let maxFrequency = 0;
  let mode = [];

  for (let i = 0; i < sortedNumbers.length; i++) {
    const number = sortedNumbers[i];
    frequencyTable[number] = (frequencyTable[number] || 0) + 1;
    if (frequencyTable[number] > maxFrequency) {
      // if frequency of the current value is greater than the max frequency, reassign max frequency and update mode array.
      maxFrequency = frequencyTable[number];
      mode = [number];
    } else if (frequencyTable[number] === maxFrequency) {
      // if the the frequency of the current value equals the max frequency, add the value to the mode array
      mode.push(number);
    }
  }

  return mode;
};

console.log(measures([7, 3, 12, 1, 1, 4, 5, 12, 12, 1, 2]));

// 13. Escribe una función que tome una lista de cadenas de texto y devuelva la cadena más frecuente.

const mostRepeatedString = (stringArray) => {
  // An array to hold objects representing each unique string and its frequency.
  let arrayOfStrObjects = [];

  // A variable to keep track of the maximum frequency found so far.
  let maxFrequency = 0;

  // An array to hold the most repeated string/s found.
  let mostRepeated = [];

  // Loop through the input array to count the frequency of each string.
  for (const str of stringArray) {
    // If this is the first time seeing this string, create a new object for it.
    if (!arrayOfStrObjects.find((obj) => obj.stringName === str)) {
      arrayOfStrObjects.push({
        stringName: str,
        frequency: 0,
      });

      // Loop through the input array again to count the frequency of this string.
      for (let i = 0; i < stringArray.length; i++) {
        if (str === stringArray[i]) {
          // If this is the same string, increase its frequency in the array of objects.
          arrayOfStrObjects = arrayOfStrObjects.map((obj) =>
            obj.stringName == str
              ? { ...obj, frequency: obj.frequency + 1 }
              : obj
          );
        }
      }
    }
  }

  // Find the maximum frequency in the array of objects.
  maxFrequency = Math.max(...arrayOfStrObjects.map((obj) => obj.frequency));

  // Filter the array of objects to find the most repeated string/s.
  mostRepeated = arrayOfStrObjects
    .filter((obj) => obj.frequency === maxFrequency)
    .map((obj) => obj.stringName);

  // Return a string that describes the most repeated string/s found.
  return `The most frequent string/s is/are ${mostRepeated.join(", ")}`;
};

console.log(
  mostRepeatedString(["hello", "world", "happy", "hello", "alo", "alo"])
);

// 14. Escribe una función que tome un número y devuelva verdadero si es una potencia de dos, falso de lo contrario.

const powerOfTwo = (number) => {
  // If the number is 1, it is a power of 2 (2^0 = 1).
  if (number == 1) {
    return true;
  } else {
    // If the number is even, divide it by 2 and call the function recursively.
    if (number % 2 == 0) {
      return powerOfTwo(number / 2);
    } else {
      // If the number is odd, it is not a power of 2.
      return false;
    }
  }
};

console.log(powerOfTwo(16));

// 15. Escribe una función que tome una lista de números y devuelva una nueva lista con todos los números en orden descendente.

const sortDescending = (numbers) => {
  // iterating over the numbers array
  for (let i = 0; i < numbers.length - 1; i++) {
    for (let j = i + 1; j < numbers.length; j++) {
      if (numbers[i] < numbers[j]) {
        // Swap the two numbers if the left one is smaller than the right one.
        const temp = numbers[i];
        numbers[i] = numbers[j];
        numbers[j] = temp;
      }
    }
  }
  // Return the sorted list in descending order.
  return numbers;
};

console.log(sortDescending([3, 1, 7, 5, 9, 2]));
