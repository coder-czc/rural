package cn.czc.rural.admin;


import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.ss.usermodel.DataFormat;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.xssf.usermodel.*;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.*;

@SpringBootTest
public class  RuralAdminApplicationTests{

    @Test
    public void Test() throws IOException {
        BufferedInputStream bis = new BufferedInputStream(new FileInputStream("/Users/czc/Documents/project/end/rural/document/2023年最新农户花名册.xlsx"));
        XSSFWorkbook workbook = new XSSFWorkbook(bis);
        XSSFSheet sheet = workbook.getSheetAt(2);
        System.out.printf("表名："+sheet.getSheetName());
        int firstRow = 4;
        int lastRow = sheet.getLastRowNum();
        for(int row = firstRow;row <= 4;row++){
            int lastCol = sheet.getRow(row).getLastCellNum();
            for (int col = 0;col <= lastCol;col++){
                System.out.println(sheet.getRow(row).getCell(col));
            }
        }
    }

}
