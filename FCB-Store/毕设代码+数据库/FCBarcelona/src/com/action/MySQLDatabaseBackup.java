package com.action;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
 
/**
 * MySQL数据库备份
 * 
 * @author GaoHuanjie
 */
public class MySQLDatabaseBackup {
 
    /**
     * Java代码实现MySQL数据库导出
     * 
     * @author GaoHuanjie
     * @param hostIP MySQL数据库所在服务器地址IP
     * @param userName 进入数据库所需要的用户名
     * @param userName 进入数据库所需要的用户名
     * @param password 进入数据库所需要的密码
     * @param savePath 数据库导出文件保存路径
     * @param fileName 数据库导出文件文件名
     * @param databaseName 要导出的数据库名
     * @return 返回true表示导出成功，否则返回false。
     */
    public static boolean exportDatabaseTool(String hostIP, String userName, String password, String savePath, String fileName, String databaseName) throws InterruptedException {
        File saveFile = new File(savePath);
        if (!saveFile.exists()) {// 如果目录不存在
            saveFile.mkdirs();// 创建文件夹
        }
        if(!savePath.endsWith(File.separator)){
            savePath = savePath + File.separator;
        }
         
        PrintWriter printWriter = null;
        BufferedReader bufferedReader = null;
        try {
            printWriter = new PrintWriter(new OutputStreamWriter(new FileOutputStream(savePath + fileName), "utf8"));
            Process process = Runtime.getRuntime().exec("F:/Program Files (x86)/MySQL/MySQL Server 5.0/bin/mysqldump.exe -h" + hostIP + " -u" + userName + " -p" + password + " --set-charset=UTF8 " + databaseName);
            InputStreamReader inputStreamReader = new InputStreamReader(process.getInputStream(), "utf8");
            bufferedReader = new BufferedReader(inputStreamReader);
            String line;
            while((line = bufferedReader.readLine())!= null){
                printWriter.println(line);
            }
            printWriter.flush();
            if(process.waitFor() == 0){//0 表示线程正常终止。
                return true;
            }
        }catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (bufferedReader != null) {
                    bufferedReader.close();
                }
                if (printWriter != null) {
                    printWriter.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return false;
    }
    
   
    public static boolean loadDatabase(){  
        String filepath = "d:\\backupDatabase\\backup.sql"; // 备份的路径地址    
          //新建数据库test   
          String stmt1 = "F:/Program Files (x86)/MySQL/MySQL Server 5.0/bin/mysqladmin.exe -u root -p123 create barcelona_db";   
          String stmt2 = "F:/Program Files (x86)/MySQL/MySQL Server 5.0/bin/mysql.exe -u root -p123 barcelona_db < " + filepath;   
          System.out.println(stmt2);
          String[] cmd = { "cmd", "/c", stmt2 };   
          try {   
          Runtime.getRuntime().exec(stmt1);   
          Runtime.getRuntime().exec(cmd);   
          System.out.println("数据已从 " + filepath + " 导入到数据库中");   
          } catch (IOException e) {   
          e.printStackTrace();   
          }   
          return true;  
    }  
    
     
    public static void main(String[] args){

    	loadDatabase();
    }
}