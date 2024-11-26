package org.techlabs.student.management.system.util;

import javax.servlet.http.HttpServletRequest;

public class ActionBinder {

    public static void bindActionMessages(HttpServletRequest req) {
        String code = req.getParameter("code");

        if(code != null){
            ActionMessage actionMessage = ActionMessage.getById(Integer.parseInt(code));
            if (actionMessage.getIsError()) {
                req.setAttribute("error", actionMessage.getMessage());
            } else {
                req.setAttribute("success", actionMessage.getMessage());
            };
        }
    }
}
