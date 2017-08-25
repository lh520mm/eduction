package controller;

import model.Test;
import model.Values;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import response.StudyResponse;
import service.StudentService;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by liuhao on 2017/7/6.
 */
//@Api(value = "test", tags = "test", description = "测试")
@Controller
public class StudentController {
    @Autowired
    private StudentService studentService;

   // @ApiOperation(value = "测试学生列表", notes = "测试学生列表", nickname = "liuhao", httpMethod = "GET")
    @RequestMapping(value = "stu",method = RequestMethod.GET)
    @ResponseBody
    public StudyResponse show()
    {
        StudyResponse studyResponse=studentService.getStudents();
        return  studyResponse;
    }

    @RequestMapping(value = "", method = RequestMethod.GET)
    public ModelAndView index() {
        ModelAndView mv = new ModelAndView("index");
        return mv;
    }

    @RequestMapping(value = "start", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView start() {
        ModelAndView mv = new ModelAndView("start");
        return mv;
    }



}
