#include <iostream>
#include <iomanip>

//shortcuts
using std::cout;
using std::string;
using std::endl;
using std::cin;
using std::fixed;
using std::setprecision;


int calculateSum(const int scores[], int size);
double calculateAverage(int sum, int size);
void addBonus(int scores[], int size, int bonus);
int findMinimum(const int* scores, int size);
int countHighPerformers(const int scores[], int size);

int main() {
   
    const int SIZE = 10;
    int ary[SIZE] = { 75, 88, 62, 95, 50, 82, 70, 91, 45, 78 };

    // OG Scores
    cout << "Original scores:\n";
    for (int i = 0; i < SIZE; i++) {
        cout << ary[i] << " ";
    }
    cout << endl;

    // Calculate sum and average
    int sum = calculateSum(ary, SIZE);
    double avg = calculateAverage(sum, SIZE);

    cout << "\nSum: " << sum << endl;
    cout << fixed << setprecision(2);
    cout << "Average: " << avg << endl;

    // Add bonus points
    addBonus(ary, SIZE, 10);

    // Updated scores
    cout << "\nScores after bonus:\n";
    for (int i = 0; i < SIZE; i++) {
        cout << ary[i] << " ";
    }
    cout << endl;

    // Find minimum score
    cout << "\nMinimum score: " << findMinimum(ary, SIZE) << endl;

    // Count high performers
    cout << "High performers: "
        << countHighPerformers(ary, SIZE) << endl;

    return 0;
}

// Calculates sum 
int calculateSum(const int scores[], int size) {
    int total = 0;
    for (int i = 0; i < size; i++) {
        total += scores[i];
    }
    return total;
}

// Calculates average score
double calculateAverage(int sum, int size) {
    return sum / double(size);
}

// Adds bonus points 
void addBonus(int scores[], int size, int bonus) {
    for (int i = 0; i < size; i++) {
        scores[i] += bonus;
    }
}

// Finds the minimum score
int findMinimum(const int* scores, int size) {
    int min = scores[0];
    for (int i = 1; i < size; i++) {
        if (scores[i] < min) {
            min = scores[i];
        }
    }
    return min;
}

// Passing
int countHighPerformers(const int scores[], int size) {
    int count = 0;
    for (int i = 0; i < size; i++) {
        if (scores[i] >= 80) {
            count++;
        }
    }
    return count;
}
