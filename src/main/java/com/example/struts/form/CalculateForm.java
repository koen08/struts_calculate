package com.example.struts.form;

import org.apache.struts.validator.ValidatorForm;

public class CalculateForm extends ValidatorForm {
    String firstNumber;
    String secondNumber;
    Character typeAction;
    Double results;

    public String getFirstNumber() {
        return firstNumber;
    }

    public void setFirstNumber(String firstNumber) {
        this.firstNumber = firstNumber;
    }

    public String getSecondNumber() {
        return secondNumber;
    }

    public void setSecondNumber(String secondNumber) {
        this.secondNumber = secondNumber;
    }

    public Character getTypeAction() {
        return typeAction;
    }

    public void setTypeAction(Character typeAction) {
        this.typeAction = typeAction;
    }

    public Double getResults() {
        return results;
    }

    public void setResults(Double results) {
        this.results = results;
    }
}
