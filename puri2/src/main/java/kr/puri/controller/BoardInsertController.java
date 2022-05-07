package kr.puri.controller;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.puri.entity.Board;
import kr.puri.entity.Member;

import kr.puri.mapper.PuriMapper;


@Controller
public class BoardInsertController {
   
   @Autowired
   private PuriMapper puriMapper;
   
   @GetMapping("/goBoardInsert.do")
      public String goMypage(Member vo) {
         return "BoardInsert";
      }
   
   
   @PostMapping("/BoardInsert2.do") 
   public String boardUpload(@RequestParam("file") MultipartFile file, HttpServletRequest request,String write_title,String write_content,Board bvo){
      System.out.println("파일 이름 : " + file.getOriginalFilename());
      HttpSession session =request.getSession();
      Member vo = (Member)session.getAttribute("vo");
      String id = vo.getId();      
      
       String path="/resources/images";

         ServletContext context= request.getSession().getServletContext();

         String realPath=context.getRealPath(path);
         
        try (              
                FileOutputStream fos = new FileOutputStream(realPath+"\\" + file.getOriginalFilename());
                // 파일 저장할 경로 + 파일명을 파라미터로 넣고 fileOutputStream 객체 생성하고
                InputStream is = file.getInputStream();) {
                // file로 부터 inputStream을 가져온다.
            
            int readCount = 0;
            byte[] buffer = new byte[1024];
            // 파일을 읽을 크기 만큼의 buffer를 생성하고
            // ( 보통 1024, 2048, 4096, 8192 와 같이 배수 형식으로 버퍼의 크기를 잡는 것이 일반적이다.)
            
            while ((readCount = is.read(buffer)) != -1) {
                //  파일에서 가져온 fileInputStream을 설정한 크기 (1024byte) 만큼 읽고
                
                fos.write(buffer, 0, readCount);
                // 위에서 생성한 fileOutputStream 객체에 출력하기를 반복한다
            }
           
            
            //String write_img = "C:\\Users\\SM016\\img\\" + file.getOriginalFilename();
            String write_img =file.getOriginalFilename();
                   
            bvo = new Board(write_title,write_content,id,write_img);
            
            puriMapper.boardInsert(bvo);
            
            
            
        } catch (Exception ex) {
           
            //throw new RuntimeException("file Save Error");
            bvo = new Board(write_title,write_content,id,"");             
             puriMapper.boardInsert(bvo);
             
        }
      return "redirect:/goCommunity.do";
   }
}