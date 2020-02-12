//  PROJECT 1 - CMPSCI122
//
//  Created by Daniel Garcia on 1/6/20.
//  Copyright © 2020 Daniel Garcia. All rights reserved.
//

#include <iostream>
using namespace std;

void program6();
void program10();
void program12();
void program13();

int main() {
    int a;
    cout << "Which program do you want to run 6 ,10 ,12, 13" << endl;
    cin >> a;
    switch (a) {
        default:
            cout << "That is not an option!\n";
            main();
        case 6:
            program6();
            break;
        case 10:
            program10();
            break;
        case 12:
            program12();
            break;
        case 13:
            program13();
            break;
    }
    return 0;
}

void program6() {
    int exam1;
    int exam2;
    cout << "Enter 2 numbers\nDecimal Based:\t";
    cin >> exam1;
    cout << "Base 0 to 9:\t";
    cin >> exam2;
    while (exam1 > 0) {     // exam1 is the first number
        int div = (exam1 / exam2);
        int r = (exam1 % exam2);
        cout << r <<endl;
        exam1 = div;
    }
}

void program10() {
    const int limit = 5; //base2, base3, base8, base10 and base16.
    const int base2 = 2;
    const int base3 = 3;
    const int base8 = 8;
    const int base10 = 10;
    const int base16 = 16;
    int num = 1;
    int count = 0;
    int base;
    
    cout << "Enter a number base (2, 3, 8, 10 or 16):\t";
    cin >> base;
    switch (base) {
        case 2:
            while (count < limit) {
                cout << num << " ";
                num *= base2;
                count++;
            }
            cout << endl;
            program10();
        case 3:
            while (count < limit) {
                cout << num << " ";
                num *= base3;
                count++;
            }
            cout << endl;
            program10();
        case 8:
            while (count < limit) {
                cout << num << " ";
                num *= base8;
                count++;
            }
            cout << endl;
            program10();
        case 10:
            while (count < limit) {
                cout << num << " ";
                num *= base10;
                count++;
            }
            cout << endl;
            program10();
        case 16:
            while (count < limit) {
                cout << num << " ";
                num *= base16;
                count++;
            }
            cout << endl;
            program10();
        default:
            cout << "That is not a base \n";
            break;
            break;
    }
}
//ASK PROF IF YOU HAVE TO USE IF/SWITCH
void program12() {
    int num = 0;
    string letters [] = {"A","B","C","D","E","F"};
    while (num <= 15) {
        cout << "Pick any number from 0 to 15\n";
        cin >> num;
        if (num <= 9)
            cout << num << " decimal is " << num << " in Hex" << endl;
        else if(num < 16){
            int a = (num % 9) - 1;
            cout << num << " decimal is " << letters[a] << " in Hex" << endl;
        }
    }
}

void program13() {
    int power2 = 8;
    int result = 0;
    char letters[5];
    int c = 0;
    
    cout << "Enter a 4 digit number (only using 1's and 0's) ending with an *\n";
    while (c < 5) {
        cin >> letters[c];
        c++;
    }
    c = 0;
    while (letters[c]) {
        if(letters[c] == '1')
            result += power2;
        power2 /=2;
        cout << letters[c] << endl;
        c++;
    }
    cout << "That is " << result << " in decimal\n";
}
