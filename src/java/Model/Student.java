/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author macbookpro
 */
public class Student {
    private String id;
    private String name;
    private String tel_number;
    private String avg_mark;
    private String level;

    public Student(String id, String name, String tel_number, String avg_mark, String level) {
        this.id = id;
        this.name = name;
        this.tel_number = tel_number;
        this.avg_mark = avg_mark;
        this.level = level;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTel_number() {
        return tel_number;
    }

    public void setTel_number(String tel_number) {
        this.tel_number = tel_number;
    }

    public String getAvg_mark() {
        return avg_mark;
    }

    public void setAvg_mark(String avg_mark) {
        this.avg_mark = avg_mark;
    }
    
    
    
}
