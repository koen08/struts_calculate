package com.example.struts.action;

import com.example.struts.Operation;
import com.example.struts.form.CalculateForm;
import org.apache.struts.action.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CalculateAction extends Action {
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
                                 HttpServletRequest request, HttpServletResponse response) throws Exception {
        CalculateForm calculateForm = (CalculateForm) form;
        Operation operation = Operation.getEnumFromTypeOperation(calculateForm.getTypeAction());
        calculateForm.setResults(operation.action(Double.parseDouble(calculateForm.getFirstNumber()),
                        Double.parseDouble(calculateForm.getSecondNumber())));
        return mapping.findForward("success");
    }
}
