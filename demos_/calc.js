
function calculate(a, operation, b) {
    op = String(operation).toLowerCase().trim(); 

    if (typeof a !== 'number' || typeof b !== 'number') {
        return `Not a number: ${a ?? b}`;
    }

    switch (op) {
        case 'add': case '+':
            return a + b;

        case 'subtract': case '-':
            return a - b;

        case 'divide': case '/': 
        case '/':
            if (b === 0) return 'Cannot divide by zero.'
            return Number((a / b).toFixed(2));

        case 'multiply': case '*':
            return a * b;

        default: 
            return `Unsupported operation: ${operation}`;
    }
}

console.log(calculate(2, 'add', 4));