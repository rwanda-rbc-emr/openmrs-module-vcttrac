package org.openmrs.module.vcttrac.web.controller;

import org.openmrs.api.context.Context;
import org.openmrs.module.vcttrac.VCTClientReport;
import org.openmrs.module.vcttrac.service.VCTModuleService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by k-joseph on 31/05/2017.
 */
@Controller
public class DelayInLinkageToCareController {

    @RequestMapping(value = "/module/vcttrac/delayInLinkageToCare", method = RequestMethod.GET)
    public void get(ModelMap model) {
        List<VCTClientReport> hivPositiveVCTClientsDalayedToLinkToCare = Context.getService(VCTModuleService.class).getHIVPositiveVCTClientsDalayedToLinkToCare();

        model.addAttribute("delayedInLinkageClients", hivPositiveVCTClientsDalayedToLinkToCare);
    }
}
