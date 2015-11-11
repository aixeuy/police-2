package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by Win7uX32 on 2015/7/17.
 */
@Entity
@Table(name="item")
public class Item {
    @Id
    @Column(name="id")
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int id;
    @Column(name="name")
    private String name;//编号,
    @Column(name="carattere")
    private String carattere;//车身
    @Column(name="length")
    private int length;//行为特征(急速移动、缓慢移动、徘徊)
    @Column(name="width")
    private int width;//分类(嫌疑车、受害车),
    @Column(name="height")
    private int height;//车牌,
    @Column(name="weight")
    private int weight;//属地,
    @Column(name="color")
    private String color;//遮挡车牌物品,
    @Column(name="other")
    private String other;//车辆类型

    public Item(){

    }
    public String toString(){
        return (id+ name +this.length +this.carattere +this.width);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }

    public void setName(String code) {
        this.name = code;
    }

    public String getCarattere() {
        return carattere;
    }

    public void setCarattere(String body) {
        this.carattere = body;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int action) {
        this.length = action;
    }

    public int getWidth(){return width;}

    public void setWidth(int category) {
        this.width = category;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int board) {
        this.height = board;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String board_sh) {
        this.color = board_sh;
    }

    public String getOther() {
        return other;
    }

    public void setOther(String c_type) {
        this.other = c_type;
    }

    public int getWeight() {
        return weight;
    }

    public void setWeight(int region) {
        this.weight = region;
    }
}
