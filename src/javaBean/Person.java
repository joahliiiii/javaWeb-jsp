package javaBean;

/**
 * 必须要为成员提供get/set方法
 * 必须要有无参构造器
 * 一般对于具有get/set方法的成员变量称之为属性
 *
 * 其实就算一个属性没有对应的成员变量,只有get/set方法也是可以
 *  属性的名称是由get/set方法决定的.即使命名的变量不存在
 *
 */
public class Person {

    private String name;
    private int age;
    private String id;
    private Address address;

    @Override
    public String toString() {
        return "Person{" +
                "name='" + name + '\'' +
                ", age=" + age +
                ", id='" + id + '\'' +
                ", address=" + address +
                '}';
    }

    public Person(String name, int age, String id, Address address) {
        this.name = name;
        this.age = age;
        this.id = id;
        this.address = address;
    }

    public Address getAddress() {

        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public Person() {
        super();
    }

    public Person(String name, int age, String id) {
        this.name = name;
        this.age = age;
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
}
