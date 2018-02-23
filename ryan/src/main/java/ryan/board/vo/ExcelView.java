//package ryan.board.vo;
//
//import java.util.List;
//import java.util.Map;
// 
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
// 
//import org.apache.poi.ss.usermodel.Cell;
//import org.apache.poi.ss.usermodel.Row;
//import org.apache.poi.ss.usermodel.Sheet;
//import org.apache.poi.ss.usermodel.Workbook;
//import org.apache.poi.xssf.usermodel.XSSFWorkbook;
// 
//public class ExcelView extends AbstractExcelPOIView {
// 
//    @SuppressWarnings("unchecked")
//    @Override
//    protected void buildExcelDocument(Map<String, Object> model, Workbook workbook, HttpServletRequest request, HttpServletResponse response) throws Exception {
// 
//        String target = model.get("target").toString();
// 
//        //target에 따라서 엑셀 문서 작성을 분기한다.
//        if(target.equals("books")){
//            //Object로 넘어온 값을 각 Model에 맞게 형변환 해준다.
//            List<Books> listBooks = (List<Books>) model.get("excelList");
// 
//            //Sheet 생성
//            Sheet sheet = workbook.createSheet(target);
//            Row row = null;
//            int rowCount = 0;
//            int cellCount = 0;
// 
//            // 제목 Cell 생성
//            row = sheet.createRow(rowCount++);
// 
//            row.createCell(cellCount++).setCellValue("id");
//            row.createCell(cellCount++).setCellValue("name");
//            row.createCell(cellCount++).setCellValue("writer");
// 
//            // 데이터 Cell 생성
//            for (Books book : listBooks) {
//                row = sheet.createRow(rowCount++);
//                cellCount = 0;
//                row.createCell(cellCount++).setCellValue(book.getId()); //데이터를 가져와 입력
//                row.createCell(cellCount++).setCellValue(book.getName());
//                row.createCell(cellCount++).setCellValue(book.getWriter());
// 
//            }
// 
//        }
// 
//        if(target.equals("booksDetail")){
// 
//            List<BooksDetail> booksDetailList = (List<BooksDetail>) model.get("excelList");
// 
//            //Sheet 생성
//            Sheet sheet = workbook.createSheet(target);
//            Row row = null;
//            int rowCount = 0;
//            int cellCount = 0;
// 
//            // 제목 Cell 생성
//            row = sheet.createRow(rowCount++);
// 
//            row.createCell(cellCount++).setCellValue("detail_id");
//            row.createCell(cellCount++).setCellValue("id");
//            row.createCell(cellCount++).setCellValue("publish_date");
//            row.createCell(cellCount++).setCellValue("best_seller_yn");
// 
//            // 데이터 Cell 생성
//            for (BooksDetail bookDetail : booksDetailList) {
//                row = sheet.createRow(rowCount++);
//                cellCount = 0;
//                row.createCell(cellCount++).setCellValue(bookDetail.getDetail_id());
//                row.createCell(cellCount++).setCellValue(bookDetail.getId());
//                row.createCell(cellCount++).setCellValue(bookDetail.getPublish_date());
//                row.createCell(cellCount++).setCellValue(bookDetail.getBest_seller_yn());
// 
//            }
// 
//        }
// 
//    }
// 
//    @Override
//    protected Workbook createWorkbook() {
//        return new XSSFWorkbook();
//    }
// 
//}