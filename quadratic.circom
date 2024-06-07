pragma circom 2.1.9;

template Quadratic() {
    signal input a;
    signal input b;
    signal input c;
    signal input x; // claimed root
    signal output out;

    // Quadratic equation: a*x^2 + b*x + c = 0
    signal x_squared;
    signal term1;
    signal term2;
    signal term3;

    x_squared <== x * x;
    term1 <== a * x_squared;
    term2 <== b * x;
    term3 <== term1 + term2;
    out <== term3 + c;

    // The output should be 0 if x is a root of the quadratic equation
    out === 0;
}

component main = Quadratic();