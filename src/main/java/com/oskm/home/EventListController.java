package com.oskm.home;

import com.oskm.parser.ClienEvent;
import com.oskm.parser.DoctcEvent;
import com.oskm.parser.Event;
import com.oskm.parser.PpompuEvent;
import com.oskm.parser.html.PpompuEventParser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by oskm on 2016-01-04.
 */
@Controller
public class EventListController {

    private static final Logger LOG = LoggerFactory.getLogger(EventListController.class);

    @RequestMapping(value = "/eventList")
    public ModelAndView list(Model model) {

        List<ClienEvent> clienEventList = clienEventCrawler.findEvent();
        List<PpompuEvent> ppompuEventList = ppompuEventCrawler.findEvent();
        List<DoctcEvent> doctcEventList = doctcEventCrawler.findEvent();

        /*
        for (DoctcEvent event : eventList) {
            LOG.debug("[event model]" + event);
            System.out.println("[event model]" + event);
        }
        */

        List<ClienEvent> top3ClienEventList = new TopReadEventFinder<ClienEvent>().find(clienEventList);
        List<PpompuEvent> top3PpompuEventList = new TopReadEventFinder<PpompuEvent>().find(ppompuEventList);

        List<Event> top3EventList = new ArrayList<Event>();
        top3EventList.addAll(top3ClienEventList);
        top3EventList.addAll(top3PpompuEventList);


        model.addAttribute("top3EventList", top3EventList);
        model.addAttribute("top3ClienEventList", top3ClienEventList);
        model.addAttribute("top3PpompuEventList", top3PpompuEventList);
        model.addAttribute("clienEventList", clienEventList);
        model.addAttribute("ppompuEventList", ppompuEventList);
        model.addAttribute("doctcEventList", doctcEventList);

        return new ModelAndView("EventList", model.asMap());
    }

    @Autowired
    @Qualifier("doctcEventCrawler")
    private EventCrawler doctcEventCrawler;

    @Autowired
    @Qualifier("clienEventCrawler")
    private EventCrawler clienEventCrawler;

    @Autowired
    @Qualifier("ppompuEventCrawler")
    private EventCrawler ppompuEventCrawler;

}
