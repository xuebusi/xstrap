package com.xuebusi.common.utils;

import com.alibaba.fastjson.JSON;
import freemarker.template.Configuration;
import freemarker.template.Template;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.RandomAccessFile;
import java.io.StringWriter;
import java.util.Enumeration;
import java.util.Map;
import java.util.Properties;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 文件操作工具类
 * Created by SYJ on 2017/10/23.
 */
public class FileUtil {
    private static final Logger LOGGER = LoggerFactory.getLogger(FileUtil.class);

    public FileUtil() {
    }

    public static void createFileTemplate(Map dataMap, String templateName, String templateUrl, String fileUrl) {
        try {
            Configuration e = new Configuration();
            e.setDefaultEncoding("UTF-8");
            e.setDirectoryForTemplateLoading(new File(templateUrl));
            Template template = e.getTemplate(templateName);
            template.setEncoding("UTF-8");
            File outFile = new File(fileUrl);
            if(!outFile.getParentFile().exists()) {
                outFile.getParentFile().mkdirs();
            }

            BufferedWriter out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(outFile), "UTF-8"));
            template.process(dataMap, out);
            out.flush();
            out.close();
        } catch (Exception ex) {
            LOGGER.error("createFileTemplate[dataMap{},templateUrl{},fileUrl{},exception{}]", new Object[]{JSON.toJSONString(dataMap), templateUrl, fileUrl, ex.getMessage()});
        }

    }

    public static String getFileTemplate(Map dataMap, String templateName, String templateUrl, String fileUrl) {
        try {
            Configuration e = new Configuration();
            e.setDefaultEncoding("UTF-8");
            e.setDirectoryForTemplateLoading(new File(templateUrl));
            Template template = e.getTemplate(templateName);
            template.setEncoding("UTF-8");
            File outFile = new File(fileUrl);
            if(!outFile.getParentFile().exists()) {
                outFile.getParentFile().mkdirs();
            }

            StringWriter out = new StringWriter();
            template.process(dataMap, out);
            return out.toString();
        } catch (Exception var8) {
            LOGGER.error("createFileTemplate[dataMap{},templateUrl{},fileUrl{},exception{}]", new Object[]{JSON.toJSONString(dataMap), templateUrl, fileUrl, var8.getMessage()});
            return "";
        }
    }

    public static String getFileTemplate(Map dataMap, String templateName, Class classLoader, String prefix, String fileUrl) {
        try {
            Configuration e = new Configuration();
            e.setDefaultEncoding("UTF-8");
            e.setClassForTemplateLoading(classLoader, prefix);
            Template template = e.getTemplate(templateName);
            template.setEncoding("UTF-8");
            StringWriter out = new StringWriter();
            template.process(dataMap, out);
            return out.toString();
        } catch (Exception var8) {
            LOGGER.error("createFileTemplate[dataMap{},fileUrl{},exception{}]", new Object[]{JSON.toJSONString(dataMap), fileUrl, var8.getMessage()});
            return "";
        }
    }

    public static Properties loadProperties(Class classz, String resources) {
        InputStream inputstream = classz.getClassLoader().getResourceAsStream(resources);
        Properties properties = new Properties();

        try {
            properties.load(inputstream);
            Properties e = properties;
            return e;
        } catch (IOException ex) {
            LOGGER.error("loadProperties[classz{},resources{},exception{}]", new Object[]{classz, resources, ex.getMessage()});
        } finally {
            try {
                inputstream.close();
            } catch (IOException ex) {
                LOGGER.error("loadProperties,inputstream close error", ex.getMessage());
            }

        }

        return new Properties();
    }

    public static void zipFiles(File[] srcfile, File zipfile) {
        byte[] buf = new byte[1024];

        try {
            ZipOutputStream e = new ZipOutputStream(new FileOutputStream(zipfile));

            for(int i = 0; i < srcfile.length; ++i) {
                FileInputStream in = new FileInputStream(srcfile[i]);
                e.putNextEntry(new ZipEntry(srcfile[i].getName()));

                int len;
                while((len = in.read(buf)) > 0) {
                    e.write(buf, 0, len);
                }

                e.closeEntry();
                in.close();
            }

            e.close();
        } catch (Exception var7) {
            var7.printStackTrace();
        }

    }

    public static void unZipFiles(File zipfile, String descDir) {
        try {
            ZipFile e = new ZipFile(zipfile);
            Enumeration entries = e.entries();

            while(entries.hasMoreElements()) {
                ZipEntry entry = (ZipEntry)entries.nextElement();
                String zipEntryName = entry.getName();
                InputStream in = e.getInputStream(entry);
                FileOutputStream out = new FileOutputStream(descDir + zipEntryName);
                byte[] buf1 = new byte[1024];

                int len;
                while((len = in.read(buf1)) > 0) {
                    out.write(buf1, 0, len);
                }

                in.close();
                out.close();
            }
        } catch (Exception var10) {
            var10.printStackTrace();
        }

    }

    public static boolean createFile(File fileName) throws Exception {
        boolean flag = false;

        try {
            if(!fileName.exists()) {
                fileName.createNewFile();
                flag = true;
            }
        } catch (Exception var3) {
            var3.printStackTrace();
        }

        return true;
    }

    public static boolean writeTxtFile(String content, String filePath) throws Exception {
        Object mm = null;
        boolean flag = false;
        FileOutputStream o = null;

        try {
            String e = filePath.substring(0, filePath.lastIndexOf("/"));
            File file = new File(e);
            if(!file.exists()) {
                file.mkdirs();
            }

            File file2 = new File(filePath);
            if(!file2.exists()) {
                file.createNewFile();
            }

            o = new FileOutputStream(file2);
            o.write(content.getBytes("UTF-8"));
            o.close();
            flag = true;
        } catch (Exception var11) {
            var11.printStackTrace();
        } finally {
            if(mm != null) {
                ((RandomAccessFile)mm).close();
            }

        }

        return flag;
    }

    public static boolean deleteDir(File dir) {
        if(dir.isDirectory()) {
            String[] children = dir.list();

            for(int i = 0; i < children.length; ++i) {
                boolean success = deleteDir(new File(dir, children[i]));
                if(!success) {
                    return false;
                }
            }
        }

        return dir.delete();
    }

    public static String readFile(File file) {
        StringBuilder result = new StringBuilder();

        try {
            BufferedReader e = new BufferedReader(new FileReader(file));
            String s = null;

            while((s = e.readLine()) != null) {
                result.append(System.lineSeparator() + s);
            }

            e.close();
        } catch (Exception var4) {
            var4.printStackTrace();
        }

        return result.toString();
    }

    public static void main(String[] args) throws Exception {
        String resPath = FileUtil.class.getResource("/").getPath() + "abc/" + "a.properties";
        System.out.println(resPath);
        writeTxtFile("aaaaa", resPath);
        System.out.println(readFile(new File(resPath)));
    }
}
