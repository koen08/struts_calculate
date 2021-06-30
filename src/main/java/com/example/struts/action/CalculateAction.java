package com.example.struts.action;

import com.example.struts.form.CalculateForm;
import org.apache.struts.action.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CalculateAction extends Action {
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
                                 HttpServletRequest request, HttpServletResponse response) throws Exception {
        CalculateForm helloWorldForm = (CalculateForm) form;
        switch (helloWorldForm.getTypeAction()) {
            case '+':
                helloWorldForm.setResults(Double.parseDouble(helloWorldForm.getFirstNumber())
                        + Double.parseDouble(helloWorldForm.getSecondNumber()));
                break;
            case '-':
                helloWorldForm.setResults(Double.parseDouble(helloWorldForm.getFirstNumber())
                        - Double.parseDouble(helloWorldForm.getSecondNumber()));
                break;
            case '*':
                helloWorldForm.setResults(Double.parseDouble(helloWorldForm.getFirstNumber())
                        * Double.parseDouble(helloWorldForm.getSecondNumber()));
                break;
            case '/':
                helloWorldForm.setResults(Double.parseDouble(helloWorldForm.getFirstNumber())
                        / Double.parseDouble(helloWorldForm.getSecondNumber()));
                break;
            default:
                break;
        }
        return mapping.findForward("success");
    }
}
