package com.apnidukaan.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.apnidukaan.bean.ProductBean;
import com.apnidukaan.dao.ProductDao;

/**
 * Servlet implementation class EditProductImageUpload
 */
@WebServlet("/EditProductImageUpload")
public class EditProductImageUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// location to store file uploaded             
    private static final String UPLOAD_DIRECTORY = "C:/xampp/htdocs/uploads";
  
    // upload settings
    private static final int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 3MB
    private static final int MAX_FILE_SIZE      = 1024 * 1024 * 1; // 40MB
    private static final int MAX_REQUEST_SIZE   = 1024 * 1024 * 2; // 50MB   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditProductImageUpload() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("editproductimageupload.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if (!ServletFileUpload.isMultipartContent(request)) {
            // if not, we stop here
            PrintWriter writer = response.getWriter();
            writer.println("Error: Form must has enctype=multipart/form-data.");
            writer.flush();
            return;
        }
		
		// configures upload settings
        DiskFileItemFactory factory = new DiskFileItemFactory();
        // sets memory threshold - beyond which files are stored in disk
        factory.setSizeThreshold(MEMORY_THRESHOLD);
        // sets temporary location to store files
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
 
        ServletFileUpload upload = new ServletFileUpload(factory);
         
        // sets maximum size of upload file
        upload.setFileSizeMax(MAX_FILE_SIZE);
         
        // sets maximum size of request (include file + form data)
        upload.setSizeMax(MAX_REQUEST_SIZE);
 
        // constructs the directory path to store upload file
        // this path is relative to application's directory
        String uploadPath = UPLOAD_DIRECTORY;
        
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }
//        int cnt = 1;
        List<String> imgfilename = new ArrayList<String>();
        try {
            // parses the request's content to extract file data
        	
        	List<FileItem> formItems = upload.parseRequest(request);
 
            if (formItems != null && formItems.size() > 0) {
                // iterates over form's fields
                for (FileItem item : formItems) {
                    // processes only fields that are not form fields
                    if (!item.isFormField()) {
                        String fileName = new File(item.getName()).getName();
                        String filePath = uploadPath + File.separator + fileName;
//                        System.out.println("file Name "+ cnt +" :: "+fileName);
                         
                        File storeFile = new File(filePath);
 
                        // saves the file on disk 
                        item.write(storeFile);
                        
                        
                        imgfilename.add(fileName);
                    }
                }
            }
            
            // add to database
            HttpSession session=request.getSession(); 
            ProductBean pb = (ProductBean) session.getAttribute("EditProductData");
            
            int status = ProductDao.update(pb, imgfilename);
            
            if (status == 1) {
    			response.sendRedirect("./Shop");
    		} else {
    			//	delete upload images
    	/*		int result = ProductDao.deleteUploadingFiles(UPLOAD_DIRECTORY, imgfilename);
    			if(result==1){ response.sendRedirect("./Shop");}else{ response.sendRedirect("./ProductImageUpload");}
    		*/	response.sendRedirect("./EditProduct?key="+pb.getPid());
    		}
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
	}

}
