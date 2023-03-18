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
        BufferedInputStream bis = new BufferedInputStream(new FileInputStream("/Users/czc/Documents/project/end/rural/document/test.xlsx"));
        XSSFWorkbook workbook = new XSSFWorkbook(bis);
        XSSFWorkbook myWorkBook = new XSSFWorkbook();
        XSSFSheet sheet;
        XSSFRow row;
        XSSFCell cell;
        XSSFSheet mySheet;
        XSSFRow myRow;
        XSSFCell myCell;
        int sheets = workbook.getNumberOfSheets();
        int fCell;
        int lCell;
        int fRow;
        int lRow;
        for (int iSheet = 0; iSheet < sheets; iSheet++) {
            sheet = workbook.getSheetAt(iSheet);
            if (sheet != null) {
                mySheet = myWorkBook.createSheet(sheet.getSheetName());
                fRow = sheet.getFirstRowNum();
                lRow = sheet.getLastRowNum();
                // 复制合并的单元格
                CellRangeAddress region;
                for (int i = 0; i < sheet.getNumMergedRegions(); i++) {
                    region = sheet.getMergedRegion(i);
                    if ((region.getFirstRow() >= fRow) && (region.getLastRow() <= lRow)) {
                        mySheet.addMergedRegion(region);
                    }
                }
                for (int iRow = fRow; iRow <= lRow; iRow++) {
                    row = sheet.getRow(iRow);
                    myRow = mySheet.createRow(iRow);
                    if (row != null) {
                        fCell = row.getFirstCellNum();
                        lCell = row.getLastCellNum();
                        for (int iCell = fCell; iCell < lCell; iCell++) {
                            cell = row.getCell(iCell);
                            myCell = myRow.createCell(iCell);
                            if (cell != null) {
                                XSSFCellStyle style = this.cloneAllCellStyle(cell, myWorkBook);
                                myCell.setCellStyle(style);
                                myCell.setCellType(cell.getCellType());
                                switch (cell.getCellType()) {
                                    case BLANK:
                                        myCell.setCellValue("");
                                        break;

                                    case BOOLEAN:
                                        myCell.setCellValue(cell.getBooleanCellValue());
                                        break;

                                    case ERROR:
                                        myCell.setCellErrorValue(cell.getErrorCellValue());
                                        break;

                                    case NUMERIC:
                                        myCell.setCellValue(cell.getNumericCellValue());
                                        break;

                                    case STRING:
                                        myCell.setCellValue(cell.getStringCellValue());
                                        break;
                                    default:
                                        myCell.setCellFormula(cell.getCellFormula());
                                }
                            }
                        }
                    }
                }
            }
        }
        myWorkBook.cloneSheet(0, "sheet2");
        myWorkBook.getSheet("sheet2").getRow(1).getCell(0).setCellValue("hello");
        bis.close();
        BufferedOutputStream bos = new BufferedOutputStream(
                new FileOutputStream("workbook2.xlsx", true));
        myWorkBook.write(bos);
        bos.close();
    }

    public XSSFCellStyle cloneAllCellStyle(XSSFCell sourceCell, XSSFWorkbook targetWb) {

        //创建一个样式
        XSSFCellStyle tempStyle = targetWb.createCellStyle(); //样式
        //数值格式,创建字符及数字格式
        DataFormat format = targetWb.createDataFormat();
        //字体
        XSSFFont font = targetWb.createFont();
        try {
            tempStyle.setDataFormat(format.getFormat(sourceCell.getCellStyle().getDataFormatString()));
        } catch (NullPointerException e) {
            tempStyle.setDataFormat((short) 0);
        }
        font.setColor(sourceCell.getCellStyle().getFont().getXSSFColor());
        font.setBold(sourceCell.getCellStyle().getFont().getBold());
        try {
            font.setCharSet(sourceCell.getCellStyle().getFont().getCharSet());
        } catch (POIXMLException e) {
            font.setCharSet(0);
        }
        //        font.setCharSet(sourceCell.getCellStyle().getFont().getCharSet());
        font.setFamily(sourceCell.getCellStyle().getFont().getFamily());
        font.setFontHeight(sourceCell.getCellStyle().getFont().getFontHeight());
        font.setFontHeightInPoints(sourceCell.getCellStyle().getFont().getFontHeightInPoints());
        font.setFontName(sourceCell.getCellStyle().getFont().getFontName());
        font.setItalic(sourceCell.getCellStyle().getFont().getItalic());
        font.setStrikeout(sourceCell.getCellStyle().getFont().getStrikeout());
        //        font.setThemeColor(sourceCell.getCellStyle().getFont().getThemeColor());
        font.setTypeOffset(sourceCell.getCellStyle().getFont().getTypeOffset());
        font.setUnderline(sourceCell.getCellStyle().getFont().getUnderline());

        tempStyle.setAlignment(sourceCell.getCellStyle().getAlignment());
        tempStyle.setVerticalAlignment(sourceCell.getCellStyle().getVerticalAlignment());
        tempStyle.setBorderBottom(sourceCell.getCellStyle().getBorderBottom());
        tempStyle.setBorderLeft(sourceCell.getCellStyle().getBorderLeft());
        tempStyle.setBorderRight(sourceCell.getCellStyle().getBorderRight());
        tempStyle.setBorderTop(sourceCell.getCellStyle().getBorderTop());
        tempStyle.setFont(font);
        try {
            tempStyle.setFillForegroundColor(sourceCell.getCellStyle().getFillForegroundColorColor());
        } catch (NullPointerException e) {
            tempStyle.setFillForegroundColor(IndexedColors.WHITE.getIndex());
        }
        tempStyle.setFillPattern(sourceCell.getCellStyle().getFillPattern());
        tempStyle.setRotation(sourceCell.getCellStyle().getRotation());
        tempStyle.setHidden(sourceCell.getCellStyle().getHidden());
        tempStyle.setWrapText(sourceCell.getCellStyle().getWrapText());
        tempStyle.setIndention(sourceCell.getCellStyle().getIndention());
        tempStyle.setLocked(sourceCell.getCellStyle().getLocked());
        return tempStyle;
    }
}
