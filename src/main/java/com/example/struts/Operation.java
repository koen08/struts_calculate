package com.example.struts;

import java.util.HashMap;
import java.util.Map;

public enum Operation {
    SUM('+') {
        public double action(double x, double y) {
            return x + y;
        }
    },
    SUBTRACT('-') {
        public double action(double x, double y) {
            return x - y;
        }
    },
    MULTIPLY('*') {
        public double action(double x, double y) {
            return x * y;
        }
    },
    DIVISION('/') {
        public double action(double x, double y) {
            return x / y;
        }
    };
    private final char typeOperation;
    private static final Map<Character, Operation> OPERATION_MAP = new HashMap<>();

    Operation(char typeOperation) {
        this.typeOperation = typeOperation;
    }

    static {
        for (Operation operation : values()) {
            OPERATION_MAP.put(operation.getTypeOperation(), operation);
        }
    }

    public static Operation getEnumFromTypeOperation(char valueCard) {
        return OPERATION_MAP.get(valueCard);
    }

    public char getTypeOperation() {
        return typeOperation;
    }

    public abstract double action(double x, double y);
}
