// basic calculator 
function calculate(a, operation, b) {
    const op = String(operation).toLowerCase().trim();

    if (typeof a !== 'number') return `Not a number: a=${JSON.stringify(a)}`;
    if (typeof b !== 'number' && !['sqrt', 'sin', 'cos', 'tan', 'log', 'ln', 'abs'].includes(op)) {
        return `Not a number: b=${JSON.stringify(b)}`;
    }

    switch (op) {
        case 'add': case '+':
            return a + b;

        case 'subtract': case '-':
            return a - b;

        case 'divide': case '/':
            if (b === 0) return 'Cannot divide by zero.';
            return Number((a / b).toFixed(6));

        case 'multiply': case '*':
            return a * b;

        case 'modulo': case '%':
            return a % b;

        case 'power': case '^':
            return Math.pow(a, b);

        case 'sqrt': case '√':
            return Math.sqrt(a);

        case 'abs':
            return Math.abs(a);

        case 'sin':
            return Math.sin(a);

        case 'cos':
            return Math.cos(a);

        case 'tan':
            return Math.tan(a);

        case 'log': // log base 10
            return Math.log10(a);

        case 'ln': // natural log
            return Math.log(a);

        case 'round':
            return Math.round(a);

        case 'floor':
            return Math.floor(a);

        case 'ceil':
            return Math.ceil(a);

        default:
            return `Unsupported operation: ${operation}`;
    }
}
// test 
console.log(calculate(2, 'sqrt', 4));